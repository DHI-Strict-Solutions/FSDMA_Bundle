import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/entities/order.dart';
import 'package:driver_flutter/core/entities/order_request.dart';
import 'package:driver_flutter/core/entities/profile.dart';
import 'package:driver_flutter/core/enums/driver_status.dart';

import 'package:driver_flutter/core/error/failure.dart';
import 'package:flutter_common/core/entities/cancel_reason.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/entities/ride_option.dart';
import 'package:flutter_common/core/enums/order_status.dart';
import 'package:flutter_common/core/enums/ride_option_icon.dart';
import 'package:flutter_common/features/chat/domain/entities/chat_message.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/repositories/home_repository.dart';
import 'package:injectable/injectable.dart';

@dev
@LazySingleton(as: HomeRepository)
class HomeRepositoryMock implements HomeRepository {
  @override
  Future<Either<Failure, ProfileEntity>> getProfile() async {
    return Right(
      ProfileEntity.testProfile,
    );
  }

  @override
  Future<Either<Failure, ProfileEntity>> updateStatus({
    required DriverStatus status,
  }) async {
    return Right(ProfileEntity.testProfile.copyWith(status: status));
  }

  @override
  Future<Either<Failure, OrderEntity>> acceptOrderRequest({
    required String requestId,
  }) async {
    return Right(OrderEntity.testOrder);
  }

  @override
  Future<Either<Failure, Unit>> rejectOrderRequest({required String requestId}) async {
    return const Right(unit);
  }

  @override
  Future<Either<Failure, List<OrderRequestEntity>>> updateDriverLocation({
    required DriverLocation location,
  }) async {
    return const Left(Failure.error());
  }

  @override
  Future<Either<Failure, OrderEntity>> arrivedToDestination({
    required OrderEntity order,
    required int destinationArrivedTo,
  }) async {
    return Right(
      OrderEntity.testOrder.copyWith(
        status: OrderStatus.waitingForPostPay,
        destinationArrivedTo: destinationArrivedTo,
      ),
    );
  }

  @override
  Future<Either<Failure, OrderEntity>> arrivedToPickup({
    required String orderId,
  }) async {
    return Right(OrderEntity.testOrder.copyWith(
      status: OrderStatus.arrived,
    ));
  }

  @override
  Future<Either<Failure, OrderEntity>> cancelOrder({
    required String orderId,
  }) async {
    return Right(
      OrderEntity.testOrder.copyWith(
        status: OrderStatus.driverCanceled,
      ),
    );
  }

  @override
  Future<Either<Failure, OrderEntity>> startTrip({
    required String orderId,
  }) async {
    return Right(
      OrderEntity.testOrder.copyWith(
        status: OrderStatus.started,
        startAt: DateTime.now(),
      ),
    );
  }

  @override
  Future<Either<Failure, List<CancelReasonEntity>>> getCancelReasons() async {
    await Future.delayed(const Duration(seconds: 1));
    return const Right([
      CancelReasonEntity(
        id: "1",
        name: "Rider didn’t show up ontime",
      ),
      CancelReasonEntity(
        id: "2",
        name: "I don’t feel safe ",
      ),
      CancelReasonEntity(
        id: "3",
        name: "Accidentally accepted the trip",
      ),
      CancelReasonEntity(
        id: "4",
        name: "Vehicle problems",
      ),
      CancelReasonEntity(
        id: "5",
        name: "Made a wrong turn",
      ),
      CancelReasonEntity(
        id: "6",
        name: "Other reasons",
      ),
    ]);
  }

  @override
  Future<Either<Failure, OrderEntity>> submitReview({
    required String orderId,
    required int rating,
    required String? review,
  }) async {
    return Right(OrderEntity.testOrder.copyWith(
      status: OrderStatus.finished,
    ));
  }

  @override
  Future<Either<Failure, OrderEntity>> paidInCash({
    required String orderId,
    required double amount,
  }) async {
    return Right(OrderEntity.testOrder.copyWith(
      status: OrderStatus.finished,
    ));
  }

  @override
  Future<Either<Failure, ChatMessageEntity>> sendMessage({
    required String orderId,
    required String message,
  }) async {
    return Right(
      ChatMessageEntity(
        id: "1",
        message: message,
        createdAt: DateTime.now(),
        isSender: true,
      ),
    );
  }

  @override
  Stream<OrderEntity> startOrderUpdatedSubscription({
    required OrderEntity orderEntity,
  }) {
    final orderStream = Stream.value(OrderEntity.testOrder);
    final messages = [
      ChatMessageEntity(
        id: "1",
        message: "Hello, I am close.",
        isSender: false,
        createdAt: DateTime.now(),
      ),
      ChatMessageEntity(
        id: "2",
        message: "I have reached the pickup point",
        isSender: false,
        createdAt: DateTime.now(),
      ),
      ChatMessageEntity(
        id: "3",
        message: "I am waiting for you",
        isSender: false,
        createdAt: DateTime.now(),
      ),
    ];
    final messageStream = Stream.periodic(
      const Duration(seconds: 10),
      (i) => messages[i % messages.length],
    ).scan(
      (accumulated, value, index) => [
        ...accumulated,
        value,
      ],
      [],
    );
    return Rx.combineLatest2(
      orderStream,
      messageStream,
      (order, message) {
        order = order.copyWith.call(chatMessages: [...order.chatMessages, ...message]);
        return order;
      },
    );
  }

  @override
  void stopOrderUpdatedSubscription() {}

  @override
  Future<Either<Failure, void>> sendSosSignal({
    required String orderId,
  }) async {
    return const Right(null);
  }

  @override
  Stream<List<OrderRequestEntity>> startGettingOrderRequestUpdates() async* {
    await Future.delayed(const Duration(seconds: 1));
    yield [
      const OrderRequestEntity(
        id: "1",
        status: OrderStatus.driverAccepted,
        paymentMethod: PaymentMethodUnion.cash(),
        currency: "USD",
        fee: 22.5,
        providerShare: 2,
        distance: 1600,
        duration: 2000,
        serviceName: "Economy",
        route: [
          LatLngEntity(lat: 37.3875, lng: -122.0575),
          LatLngEntity(lat: 37.388033, lng: -122.057918),
          LatLngEntity(lat: 37.386627, lng: -122.068655),
          LatLngEntity(lat: 37.394856, lng: -122.068583),
          LatLngEntity(lat: 37.400799, lng: -122.069950),
          LatLngEntity(lat: 37.409426, lng: -122.070957),
          LatLngEntity(lat: 37.416224, lng: -122.085845),
          LatLngEntity(lat: 37.422394, lng: -122.091887),
          LatLngEntity(lat: 37.42203, lng: -122.08417),
          LatLngEntity(lat: 37.4220, lng: -122.0841)
        ],
        waypoints: [
          PlaceEntity(
            coordinates: LatLngEntity(lat: 37.3875, lng: -122.0575),
            address: "1234 Long Street,\nVery Long Address,\nExtremely Long City,\nState, Country",
          ),
          PlaceEntity(
            coordinates: LatLngEntity(lat: 37.4220, lng: -122.0841),
            address: "1 Infinite Loop, Cupertino",
          ),
        ],
        rideOptions: [
          RideOptionEntity(
            id: "1",
            name: "Small Pet",
            icon: RideOptionIcon.pet,
          ),
          RideOptionEntity(
            id: "2",
            name: "Luggage",
            icon: RideOptionIcon.luggage,
          ),
        ],
      ),
      const OrderRequestEntity(
        id: "1",
        status: OrderStatus.driverAccepted,
        paymentMethod: PaymentMethodUnion.cash(),
        currency: "USD",
        fee: 22.5,
        providerShare: 2,
        distance: 1600,
        duration: 2000,
        serviceName: "Economy",
        route: [
          LatLngEntity(lat: 37.3875, lng: -122.0575),
          LatLngEntity(lat: 37.388033, lng: -122.057918),
          LatLngEntity(lat: 37.386627, lng: -122.068655),
          LatLngEntity(lat: 37.394856, lng: -122.068583),
          LatLngEntity(lat: 37.400799, lng: -122.069950),
          LatLngEntity(lat: 37.409426, lng: -122.070957),
          LatLngEntity(lat: 37.416224, lng: -122.085845),
          LatLngEntity(lat: 37.422394, lng: -122.091887),
          LatLngEntity(lat: 37.42203, lng: -122.08417),
          LatLngEntity(lat: 37.4220, lng: -122.0841)
        ],
        waypoints: [
          PlaceEntity(
            coordinates: LatLngEntity(lat: 37.3875, lng: -122.0575),
            address: "1234 Long Street,\nVery Long Address,\nExtremely Long City,\nState, Country",
          ),
          PlaceEntity(
            coordinates: LatLngEntity(lat: 37.4220, lng: -122.0841),
            address: "1 Infinite Loop, Cupertino",
          ),
        ],
        rideOptions: [
          RideOptionEntity(
            id: "1",
            name: "Small Pet",
            icon: RideOptionIcon.pet,
          ),
          RideOptionEntity(
            id: "2",
            name: "Luggage",
            icon: RideOptionIcon.luggage,
          ),
        ],
      ),
    ];
  }

  @override
  void stopGettingOrderRequestUpdates() {}

  @override
  Future<Either<Failure, void>> updateLastSeenMessagesAt({required String orderId}) async {
    return const Right(null);
  }
}
