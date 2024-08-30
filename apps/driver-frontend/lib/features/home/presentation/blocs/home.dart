import 'package:dartz/dartz.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/entities/order.dart';
import 'package:driver_flutter/core/entities/order_request.dart';
import 'package:driver_flutter/core/entities/profile.dart';
import 'package:driver_flutter/core/enums/driver_status.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:driver_flutter/core/repositories/firebase_repository.dart';
import 'package:driver_flutter/core/router/app_router.dart';
import 'package:driver_flutter/features/home/domain/repositories/home_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/enums/order_status.dart';
import 'package:flutter_common/features/chat/chat.dart';
import 'package:generic_map/generic_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:latlong2/latlong.dart';

part 'home.event.dart';
part 'home.state.dart';
part 'home.freezed.dart';
part 'home.g.dart';

@lazySingleton
class HomeBloc extends HydratedBloc<HomeEvent, HomeState> {
  final HomeRepository _repository;
  final FirebaseRepository _firebaseRepository;
  Stream<List<OrderRequestEntity>>? orderRequests;
  Stream<OrderEntity>? order;

  HomeBloc(
    this._repository,
    this._firebaseRepository,
  ) : super(const HomeState()) {
    on<HomeEvent>(
      (event, emit) async {
        switch (event) {
          case _OnStarted(:final location):
            final profile = await _repository.getProfile();
            _firebaseRepository.retrieveAndUpdateFcmToken();
            final homeState = await mapProfileToHomeState(profile: profile);
            emit(
              homeState.copyWith(
                driverLocation: location,
              ),
            );
            await homeState.driverStatus.mapOrNull(
              online: (value) async {
                await _startOrderRequestsSubscription(emit);
              },
              onTrip: (value) async {
                await _startOrderUpdateSubscription(value.order, emit);
              },
            );

            break;

          case _OnStatusChanged(:final status):
            final profile = await _repository.updateStatus(status: status);
            final homeState = await mapProfileToHomeState(profile: profile);
            emit(homeState);
            await homeState.driverStatus.mapOrNull(
              online: (value) async {
                await _startOrderRequestsSubscription(emit);
              },
              offline: (value) async {
                orderRequests = null;
                _repository.stopGettingOrderRequestUpdates();
              },
            );
            break;

          case _OnLocationUpdated(:final location, :final lastLocationUpdate):
            final orders = await _repository.updateDriverLocation(location: location);
            orders.fold(
              (l) => null,
              (r) => emit(
                state.copyWith(
                  driverLocation: location,
                  lastLocationUpdate: lastLocationUpdate,
                  driverStatus: state.driverStatus.maybeMap(
                    orElse: () => state.driverStatus,
                    online: (online) => online.copyWith(
                      orderRequests: r,
                    ),
                  ),
                ),
              ),
            );
            break;

          case _OnAcceptOrder(:final request):
            final order = await _repository.acceptOrderRequest(requestId: request.id);
            await order.fold(
              (l) async {
                emit(
                  state.copyWith(
                    driverStatus: state.driverStatus.maybeMap(
                      orElse: () => throw Exception('Invalid state'),
                      online: (online) => online.copyWith(
                        orderRequests: online.orderRequests.where((r) => r.id != request.id).toList(),
                      ),
                    ),
                  ),
                );
              },
              (r) async {
                orderRequests = null;
                _repository.stopGettingOrderRequestUpdates();
                emit(
                  state.copyWith(
                    driverStatus: HomeStateDriverStatus.onTrip(
                      order: r,
                    ),
                  ),
                );
                await _startOrderUpdateSubscription(r, emit);
              },
            );
            break;

          case _OnCancelOrder(:final orderId):
            final order = await _repository.cancelOrder(orderId: orderId);
            final newState = _orderToHomeState(order);
            emit(newState);

            break;

          case _OnArrivedToPickupPoint(:final orderId):
            final order = await _repository.arrivedToPickup(orderId: orderId);
            final newState = _orderToHomeState(order);
            emit(newState);

            break;

          case _OnTripStarted(:final orderId):
            final order = await _repository.startTrip(orderId: orderId);
            final newState = _orderToHomeState(order);
            emit(newState);

            break;

          case _OnArrivedToDestination(:final order, :final destinationArrivedTo):
            final newOrder = await _repository.arrivedToDestination(
              order: order,
              destinationArrivedTo: destinationArrivedTo,
            );
            final newState = _orderToHomeState(newOrder);
            emit(newState);
            break;

          case _OnShowChat():
            emit(
              state.copyWith(
                driverStatus: state.driverStatus.maybeMap(
                  orElse: () => throw Exception('Invalid state'),
                  onTrip: (onTrip) => onTrip.copyWith(page: const OnTripPage.chat()),
                ),
              ),
            );
            break;

          case _ReviewSubmitted(:final rating, :final review, :final orderId):
            if (rating == null) {
              onStarted();
            } else {
              await _repository.submitReview(orderId: orderId, rating: rating, review: review);
              onStarted();
            }
            break;

          case _PaidInCash(:final orderId, :final amount):
            await _repository.paidInCash(orderId: orderId, amount: amount);
            emit(
              state.copyWith(
                driverStatus: state.driverStatus.maybeMap(
                  orElse: () => const HomeStateDriverStatus.initial(),
                  onTrip: (onTrip) => onTrip.copyWith(page: const OnTripPage.rate()),
                ),
              ),
            );
            break;

          case _OnSummaryConfirmed():
            emit(
              state.copyWith(
                driverStatus: state.driverStatus.maybeMap(
                  orElse: () => throw Exception('Invalid state'),
                  onTrip: (onTrip) => onTrip.copyWith(
                    page: const OnTripPage.rate(),
                  ),
                ),
              ),
            );
            break;

          case _OnOrderRequestPageChanged(:final request):
            emit(
              state.copyWith(
                driverStatus: state.driverStatus.maybeMap(
                  orElse: () => throw Exception('Invalid state'),
                  online: (online) => online.copyWith(
                    currentOrderRequest: request,
                  ),
                ),
              ),
            );
            break;

          case _MessageSent(:final message):
            emit(
              state.copyWith(
                driverStatus: state.driverStatus.maybeMap(
                  onTrip: (inProgress) {
                    return inProgress.copyWith(
                      order: inProgress.order.copyWith(
                        chatMessages: [...inProgress.order.chatMessages, message],
                      ),
                    );
                  },
                  orElse: () => throw Exception("Invalid state"),
                ),
              ),
            );
          case _OnHideChat():
            await state.driverStatus.maybeMap(
              onTrip: (inProgress) async {
                final result = await _repository.updateLastSeenMessagesAt(orderId: inProgress.order.id);
                result.fold(
                  (l) async => throw Exception(l.errorMessage),
                  (r) async => emit(
                    state.copyWith(
                      driverStatus: state.driverStatus.maybeMap(
                        onTrip: (inProgress) => inProgress.copyWith(
                          page: const OnTripPage.overview(),
                          order: inProgress.order.copyWith(
                            lastSeenMessagesAt: DateTime.now(),
                          ),
                        ),
                        orElse: () => throw Exception("Invalid state"),
                      ),
                    ),
                  ),
                );
              },
              orElse: () => throw Exception("Invalid state"),
            );
            break;
        }
      },
    );
  }

  void onStarted({
    DriverLocation? driverLocation,
  }) =>
      add(HomeEvent.onStarted(
        location: driverLocation,
      ));

  void onStatusChanged(DriverStatus status) => add(HomeEvent.onStatusChanged(status: status));

  void onLocationUpdated({required DriverLocation location, bool? forceUpdate}) => add(
        HomeEvent.onLocationUpdated(
          location: location,
          lastLocationUpdate: forceUpdate == true ? DateTime.now() : null,
        ),
      );

  void onAcceptOrder(OrderRequestEntity request) => add(HomeEvent.onAcceptOrder(request: request));

  // void onRadiusChanged(int radius) => add(HomeEvent.onRadiusChanged(radius: radius));

  HomeState _orderToHomeState(Either<Failure, OrderEntity> order) {
    return order.fold(
      (l) => state.copyWith(
        driverStatus: state.driverStatus.maybeMap(
          orElse: () => throw Exception('Invalid state'),
          onTrip: (onTrip) => onTrip.copyWith(
            error: l,
          ),
        ),
      ),
      (r) {
        switch (r.status.viewMode) {
          case (OrderStatusViewMode.waitingForPayment):
            return state.copyWith(
              error: null,
              driverStatus: HomeStateDriverStatus.onTrip(
                order: r,
                page: const OnTripPage.payment(),
              ),
            );

          case (OrderStatusViewMode.review):
          case (OrderStatusViewMode.finished):
            return state.copyWith(
              error: null,
              driverStatus: const HomeStateDriverStatus.initial(),
            );

          case (OrderStatusViewMode.inProgress):
            return state.copyWith(
              error: null,
              driverStatus: HomeStateDriverStatus.onTrip(
                order: r,
                page: state.driverStatus.maybeMap(
                  orElse: () => const OnTripPage.overview(),
                  onTrip: (onTrip) => onTrip.page,
                ),
              ),
            );

          case OrderStatusViewMode.looking:
            throw Exception('Invalid state');
        }
      },
    );
  }

  Future<HomeState> mapProfileToHomeState({
    required Either<Failure, ProfileEntity> profile,
  }) async {
    return profile.fold(
      (l) async {
        return state.copyWith(error: l);
      },
      (r) async {
        return r.status.map(
          pendingSubmission: (pendingSubmission) async {
            locator<AppRouter>().replaceAll(
              [
                const AuthRoute(),
              ],
            );
            return state.copyWith(
              driverStatus: const HomeStateDriverStatus.accessDenied(),
            );
          },
          pendingApproval: (pendingApproval) async => state.copyWith(
            driverStatus: const HomeStateDriverStatus.accessDenied(),
          ),
          online: (online) async => state.copyWith(
            driverStatus: HomeStateDriverStatus.online(
              orderRequests: state.driverStatus.maybeMap(
                orElse: () => [],
                online: (online) => online.orderRequests,
              ),
            ),
          ),
          offline: (offline) async {
            orderRequests = null;
            _repository.stopGettingOrderRequestUpdates();
            _repository.stopOrderUpdatedSubscription();
            return state.copyWith(
              driverStatus: const HomeStateDriverStatus.offline(),
            );
          },
          onTrip: (onTrip) async {
            final newState = _orderToHomeState(Right(r.orders.first));
            return newState;
          },
          blocked: (blocked) async => state.copyWith(
            driverStatus: const HomeStateDriverStatus.accessDenied(),
          ),
          softReject: (softReject) async => state.copyWith(
            driverStatus: const HomeStateDriverStatus.accessDenied(),
          ),
          hardReject: (hardReject) async => state.copyWith(
            driverStatus: const HomeStateDriverStatus.accessDenied(),
          ),
        );
      },
    );
  }

  Future<void> _startOrderUpdateSubscription(OrderEntity orderEntity, Emitter emit) async {
    order = _repository.startOrderUpdatedSubscription(
      orderEntity: orderEntity,
    );
    return emit.forEach(
      order!,
      onData: (data) {
        final newState = _orderToHomeState(Right(data));
        return newState;
      },
    );
  }

  Future<void> _startOrderRequestsSubscription(Emitter emit) async {
    if (orderRequests == null) {
      orderRequests = _repository.startGettingOrderRequestUpdates();
      return await emit.forEach(
        orderRequests!,
        onData: (data) {
          return state.copyWith(
            driverStatus: state.driverStatus.maybeMap(
              orElse: () => throw Exception(
                'Invalid state',
              ),
              online: (online) => online.copyWith(
                orderRequests: data,
              ),
            ),
          );
        },
      );
    }
  }

  @override
  HomeState? fromJson(Map<String, dynamic> json) => HomeState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(HomeState state) => state.toJson();
}
