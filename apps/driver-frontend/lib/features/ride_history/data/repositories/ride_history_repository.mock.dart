import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/entities/order.dart';

import 'package:driver_flutter/core/error/failure.dart';

import '../../domain/repositories/ride_history_repository.dart';
import 'package:injectable/injectable.dart';

@dev
@LazySingleton(as: RideHistoryRepository)
class RideHistoryRepositoryMock implements RideHistoryRepository {
  @override
  Future<Either<Failure, List<OrderEntity>>> getRideHistory() async {
    await Future.delayed(const Duration(seconds: 1));
    return Right([
      OrderEntity.testOrder,
      OrderEntity.testOrder,
    ]);
  }

  @override
  Future<Either<Failure, bool>> reportIssue(
      {required String orderId, required String subject, required String issue}) async {
    return const Right(true);
  }
}
