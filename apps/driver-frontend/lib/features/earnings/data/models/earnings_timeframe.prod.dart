import 'package:driver_flutter/core/graphql/schema.gql.dart';

import '../../domain/enums/earnings_timeframe.dart';

extension EarningsTimeframeGqlX on Enum$TimeQuery {
  EarningsTimeFrame get toEarningsTimeFrame {
    switch (this) {
      case Enum$TimeQuery.Daily:
        return EarningsTimeFrame.daily;
      case Enum$TimeQuery.Weekly:
        return EarningsTimeFrame.weekly;
      case Enum$TimeQuery.Monthly:
        return EarningsTimeFrame.monthly;
      default:
        throw Exception('Unknown EarningsTimeFrame');
    }
  }
}

extension EarningsTimeframeX on EarningsTimeFrame {
  Enum$TimeQuery get toEntity {
    switch (this) {
      case EarningsTimeFrame.daily:
        return Enum$TimeQuery.Daily;
      case EarningsTimeFrame.weekly:
        return Enum$TimeQuery.Weekly;
      case EarningsTimeFrame.monthly:
        return Enum$TimeQuery.Monthly;
    }
  }
}
