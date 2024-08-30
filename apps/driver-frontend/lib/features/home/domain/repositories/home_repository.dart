import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/entities/order.dart';
import 'package:driver_flutter/core/entities/order_request.dart';
import 'package:driver_flutter/core/entities/profile.dart';
import 'package:driver_flutter/core/enums/driver_status.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:flutter_common/core/entities/cancel_reason.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:flutter_common/features/chat/chat.dart';

abstract class HomeRepository {
  Future<Either<Failure, ProfileEntity>> getProfile();

  Future<Either<Failure, ProfileEntity>> updateStatus({
    required DriverStatus status,
  });

  Future<Either<Failure, List<OrderRequestEntity>>> updateDriverLocation({
    required DriverLocation location,
  });

  Stream<List<OrderRequestEntity>> startGettingOrderRequestUpdates();

  void stopGettingOrderRequestUpdates();

  Future<Either<Failure, OrderEntity>> acceptOrderRequest({
    required String requestId,
  });

  Future<Either<Failure, Unit>> rejectOrderRequest({
    required String requestId,
  });

  Future<Either<Failure, List<CancelReasonEntity>>> getCancelReasons();

  Future<Either<Failure, OrderEntity>> cancelOrder({
    required String orderId,
  });

  Future<Either<Failure, OrderEntity>> arrivedToPickup({
    required String orderId,
  });

  Future<Either<Failure, OrderEntity>> startTrip({
    required String orderId,
  });

  Future<Either<Failure, OrderEntity>> submitReview({
    required String orderId,
    required int rating,
    required String? review,
  });

  Future<Either<Failure, OrderEntity>> paidInCash({
    required String orderId,
    required double amount,
  });

  Future<Either<Failure, OrderEntity>> arrivedToDestination({
    required OrderEntity order,
    required int destinationArrivedTo,
  });

  Future<Either<Failure, ChatMessageEntity>> sendMessage({
    required String orderId,
    required String message,
  });

  Future<Either<Failure, void>> sendSosSignal({
    required String orderId,
  });

  Future<Either<Failure, void>> updateLastSeenMessagesAt({
    required String orderId,
  });

  Stream<OrderEntity> startOrderUpdatedSubscription({
    required OrderEntity orderEntity,
  });

  void stopOrderUpdatedSubscription();
}
