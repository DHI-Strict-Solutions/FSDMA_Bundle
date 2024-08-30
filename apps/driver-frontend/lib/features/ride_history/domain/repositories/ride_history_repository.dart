import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/entities/order.dart';
import 'package:driver_flutter/core/error/failure.dart';

abstract class RideHistoryRepository {
  Future<Either<Failure, List<OrderEntity>>> getRideHistory();

  Future<Either<Failure, bool>> reportIssue({
    required String orderId,
    required String subject,
    required String issue,
  });
}
