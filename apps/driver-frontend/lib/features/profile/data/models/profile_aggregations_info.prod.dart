import 'package:driver_flutter/core/graphql/documents/profile.graphql.dart';

import 'profile_aggregations_info.dart';

extension ProfileAggregationsProdX on Query$ProfileAggregations {
  ProfileAggregationsInfo get toEntity => ProfileAggregationsInfo(
        totalRides: driver.historyOrdersAggregate.first.count?.id ?? 0,
        totalDistance: driver.historyOrdersAggregate.first.sum?.distanceBest?.toInt() ?? 0,
        rating: driver.rating?.toInt(),
      );
}
