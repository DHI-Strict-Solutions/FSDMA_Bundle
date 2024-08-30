import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:driver_flutter/features/earnings/domain/entities/earnings_dataset.dart';
import 'package:driver_flutter/features/earnings/domain/enums/earnings_timeframe.dart';

abstract class EarningsRepository {
  Future<Either<Failure, EarningsDataset>> getEarningsDataset({
    required EarningsTimeFrame timeFrame,
    required DateTime startDate,
    required DateTime endDate,
  });
}
