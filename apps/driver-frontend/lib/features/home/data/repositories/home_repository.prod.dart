import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/entities/cancel_reason.prod.dart';
import 'package:driver_flutter/core/entities/chat_message.prod.dart';
import 'package:driver_flutter/core/entities/order.dart';
import 'package:driver_flutter/core/entities/order.prod.dart';
import 'package:driver_flutter/core/entities/order_request.dart';
import 'package:driver_flutter/core/entities/order_request.prod.dart';
import 'package:driver_flutter/core/entities/profile.dart';
import 'package:driver_flutter/core/entities/profile.prod.dart';
import 'package:driver_flutter/core/enums/driver_status.dart';
import 'package:driver_flutter/core/enums/driver_status.prod.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:driver_flutter/core/graphql/documents/chat.graphql.dart';
import 'package:driver_flutter/core/graphql/documents/home.graphql.dart';
import 'package:driver_flutter/core/graphql/documents/profile.graphql.dart';
import 'package:driver_flutter/core/graphql/documents/track_order.graphql.dart';
import 'package:driver_flutter/core/graphql/schema.gql.dart';
import 'package:flutter_common/core/entities/cancel_reason.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:flutter_common/features/chat/domain/entities/chat_message.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../core/datasources/graphql_datasource.dart';
import '../../domain/repositories/home_repository.dart';

@prod
@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  Stream<List<OrderRequestEntity>>? orderRequests;
  Stream<OrderEntity>? orderUpdates;
  final List<ChatMessageEntity> messagesSent = [];

  final GraphqlDatasource graphQLDatasource;

  HomeRepositoryImpl(
    this.graphQLDatasource,
  );

  @override
  Future<Either<Failure, ProfileEntity>> getProfile() async {
    final profile = await graphQLDatasource.query(Options$Query$Profile());
    return profile.map((r) => r.driver.toEntity);
  }

  @override
  Future<Either<Failure, ProfileEntity>> updateStatus({
    required DriverStatus status,
  }) async {
    final profile = await graphQLDatasource.mutate(
      Options$Mutation$UpdateDriverStatus(
        variables: Variables$Mutation$UpdateDriverStatus(
          status: status.toGql,
        ),
      ),
    );
    return profile.map((r) => r.updateOneDriver.toEntity);
  }

  @override
  Future<Either<Failure, OrderEntity>> acceptOrderRequest({
    required String requestId,
  }) async {
    final order = await graphQLDatasource.mutate(
      Options$Mutation$UpdateOrderStatus(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$UpdateOrderStatus(
          orderId: requestId,
          status: Enum$OrderStatus.DriverAccepted,
        ),
      ),
    );
    return order.map((r) => r.updateOneOrder.toEntity);
  }

  @override
  Future<Either<Failure, Unit>> rejectOrderRequest({
    required String requestId,
  }) {
    throw Exception('Our backend\'s design does not allow order rejection');
  }

  @override
  Future<Either<Failure, List<OrderRequestEntity>>> updateDriverLocation({
    required DriverLocation location,
  }) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$UpdateDriverLocation(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$UpdateDriverLocation(
          point: Input$PointInput(
            lat: location.lat,
            lng: location.lng,
            heading: location.rotation,
          ),
        ),
      ),
    );
    final requests = result.map((r) => r.updateDriversLocationNew.toEntity);
    return requests;
  }

  @override
  Future<Either<Failure, OrderEntity>> arrivedToDestination({
    required OrderEntity order,
    required int destinationArrivedTo,
  }) {
    return _updateOrderStatus(
      Variables$Mutation$UpdateOrderStatus(
        orderId: order.id,
        status:
            order.waypoints.length >= destinationArrivedTo + 1 ? Enum$OrderStatus.Finished : Enum$OrderStatus.Started,
        destinationArrivedTo: destinationArrivedTo,
      ),
    );
  }

  @override
  Future<Either<Failure, OrderEntity>> arrivedToPickup({
    required String orderId,
  }) {
    return _updateOrderStatus(
      Variables$Mutation$UpdateOrderStatus(
        orderId: orderId,
        status: Enum$OrderStatus.Arrived,
      ),
    );
  }

  @override
  Future<Either<Failure, OrderEntity>> cancelOrder({
    required String orderId,
  }) {
    return _updateOrderStatus(
      Variables$Mutation$UpdateOrderStatus(
        orderId: orderId,
        status: Enum$OrderStatus.DriverCanceled,
      ),
    );
  }

  @override
  Future<Either<Failure, OrderEntity>> startTrip({
    required String orderId,
  }) {
    return _updateOrderStatus(
      Variables$Mutation$UpdateOrderStatus(
        orderId: orderId,
        status: Enum$OrderStatus.Started,
        destinationArrivedTo: 0,
      ),
    );
  }

  Future<Either<Failure, OrderEntity>> _updateOrderStatus(Variables$Mutation$UpdateOrderStatus varialbes) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$UpdateOrderStatus(
        fetchPolicy: FetchPolicy.noCache,
        variables: varialbes,
      ),
    );
    return result.map(
      (r) => r.updateOneOrder.toEntity,
    );
  }

  @override
  Future<Either<Failure, List<CancelReasonEntity>>> getCancelReasons() async {
    final reasons = await graphQLDatasource.query(Options$Query$CancelReasons());
    return reasons.map((r) => r.toEntity);
  }

  @override
  Future<Either<Failure, OrderEntity>> submitReview({
    required String orderId,
    required int rating,
    required String? review,
  }) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$SubmitReview(
        variables: Variables$Mutation$SubmitReview(
          input: Input$RiderReviewInput(
            orderId: orderId,
            score: rating,
            description: review,
          ),
        ),
      ),
    );
    return result.map((r) => r.submitReview.toEntity);
  }

  @override
  Future<Either<Failure, OrderEntity>> paidInCash({
    required String orderId,
    required double amount,
  }) {
    return _updateOrderStatus(
      Variables$Mutation$UpdateOrderStatus(
        orderId: orderId,
        status: Enum$OrderStatus.Finished,
        cashPayment: amount,
      ),
    );
  }

  @override
  Future<Either<Failure, ChatMessageEntity>> sendMessage({
    required String orderId,
    required String message,
  }) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$SendMessage(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$SendMessage(
          orderId: orderId,
          message: message,
        ),
      ),
    );
    final messageParsed = result.map((r) => r.createOneOrderMessage.toEntity);
    messageParsed.fold((l) => null, (r) => messagesSent.add(r));
    return messageParsed;
  }

  @override
  Stream<OrderEntity> startOrderUpdatedSubscription({
    required OrderEntity orderEntity,
  }) {
    final order = graphQLDatasource
        .subscribe(
          Options$Subscription$OrderUpdated(),
        )
        .map(
          (event) => event.orderUpdated.toEntity,
        )
        .startWith(orderEntity);
    final messages = graphQLDatasource
        .subscribe(
      Options$Subscription$ChatMessage(
        fetchPolicy: FetchPolicy.noCache,
      ),
    )
        .map(
      (event) {
        return event.newMessageReceived.toEntity;
      },
    ).scan(
      (accumulated, value, index) => [...accumulated, value],
      [],
    ).startWith([]);

    orderUpdates = Rx.combineLatest2(
      order,
      messages,
      (orderData, messageData) {
        final List<ChatMessageEntity> messages = [
          ...orderData.chatMessages,
          ...messagesSent,
          ...messageData,
        ];
        messages.sortBy((element) => element.createdAt);
        return orderData.copyWith.call(
          chatMessages: messages,
        );
      },
    );
    return orderUpdates!;
  }

  @override
  void stopOrderUpdatedSubscription() {
    //orderUpdates?.drain();
    orderUpdates = null;
  }

  @override
  Future<Either<Failure, void>> sendSosSignal({
    required String orderId,
  }) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$SendSOS(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$SendSOS(id: orderId),
      ),
    );
    return result;
  }

  @override
  Stream<List<OrderRequestEntity>> startGettingOrderRequestUpdates() {
    final Stream<List<OrderRequestEntity>> orderRequests = graphQLDatasource
        .subscribe(Options$Subscription$OrderCreated())
        .map(
          (event) => event.orderCreated.toEntity,
        )
        .scan((accumulated, value, index) => [...accumulated, value], []);
    final Stream<List<OrderRequestEntity>> orderRequestsRemoved = graphQLDatasource
        .subscribe(Options$Subscription$OrderRemoved())
        .map(
          (event) => event.orderRemoved.toEntity,
        )
        .scan((accumulated, value, index) => [...accumulated, value], []);
    this.orderRequests = Rx.combineLatest2(
      orderRequests,
      orderRequestsRemoved.startWith([]),
      (newRequests, removedRequests) {
        final list =
            newRequests.where((element) => !removedRequests.any((element2) => element.id == element2.id)).toList();
        return list.toSet().toList();
      },
    );
    return this.orderRequests!;
  }

  @override
  void stopGettingOrderRequestUpdates() {
    orderRequests = null;
  }

  @override
  Future<Either<Failure, void>> updateLastSeenMessagesAt({required String orderId}) {
    return graphQLDatasource.mutate(
      Options$Mutation$updateLastSeenMessagesAt(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$updateLastSeenMessagesAt(
          orderId: orderId,
        ),
      ),
    );
  }
}
