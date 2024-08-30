import 'package:driver_flutter/core/graphql/documents/earnings.graphql.dart';
import 'package:driver_flutter/features/earnings/domain/entities/earnings_dataset.dart';

extension EarningsQueryGqlX on Query$Earnings {
  EarningsDataset get toEntity {
    return EarningsDataset(
      currency: getStatsNew.currency,
      datapoints: getStatsNew.dataset
          .map(
            (e) => EarningsDatapoint(
              title: e.name,
              earnings: e.earning,
              rides: e.count.toInt(),
              timeSpent: e.time.toInt(),
              distanceTraveled: e.distance.toInt(),
            ),
          )
          .toList(),
    );
  }
}
