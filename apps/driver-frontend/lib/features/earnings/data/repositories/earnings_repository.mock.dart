import 'package:dartz/dartz.dart';

import 'package:driver_flutter/core/error/failure.dart';

import 'package:driver_flutter/features/earnings/domain/entities/earnings_dataset.dart';
import 'package:driver_flutter/features/earnings/domain/enums/earnings_timeframe.dart';

import '../../domain/repositories/earnings_repository.dart';
import 'package:injectable/injectable.dart';

@dev
@LazySingleton(as: EarningsRepository)
class EarningsRepositoryMock implements EarningsRepository {
  @override
  Future<Either<Failure, EarningsDataset>> getEarningsDataset({
    required EarningsTimeFrame timeFrame,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    return const Right(
      EarningsDataset(
        currency: "USD",
        datapoints: [
          EarningsDatapoint(
            title: "Tuesday",
            earnings: 50.4,
            rides: 6,
            timeSpent: 500,
            distanceTraveled: 1432,
          ),
          EarningsDatapoint(
            title: "Wednesday",
            earnings: 23.4,
            rides: 6,
            timeSpent: 500,
            distanceTraveled: 1432,
          ),
          EarningsDatapoint(
            title: "Thursday",
            earnings: 70,
            rides: 6,
            timeSpent: 500,
            distanceTraveled: 1432,
          ),
          EarningsDatapoint(
            title: "Friday",
            earnings: 32.4,
            rides: 6,
            timeSpent: 500,
            distanceTraveled: 1432,
          ),
          EarningsDatapoint(
            title: "Saturday",
            earnings: 12.9,
            rides: 6,
            timeSpent: 500,
            distanceTraveled: 1432,
          ),
          EarningsDatapoint(
            title: "Sunday",
            earnings: 43,
            rides: 6,
            timeSpent: 500,
            distanceTraveled: 1432,
          ),
          EarningsDatapoint(
            title: "Monday",
            earnings: 32,
            rides: 6,
            timeSpent: 500,
            distanceTraveled: 1432,
          ),
        ],
      ),
    );
  }
}
