import 'package:driver_flutter/core/enums/driver_status.dart';
import 'package:driver_flutter/core/graphql/schema.gql.dart';

extension DriverStatusGqlX on Enum$DriverStatus {
  DriverStatus get toEntity {
    switch (this) {
      case Enum$DriverStatus.Offline:
        return const DriverStatus.offline();

      case Enum$DriverStatus.Online:
        return const DriverStatus.online();

      case Enum$DriverStatus.WaitingDocuments:
        return const DriverStatus.pendingSubmission();

      case Enum$DriverStatus.PendingApproval:
        return const DriverStatus.pendingApproval();

      case Enum$DriverStatus.Blocked:
        return const DriverStatus.blocked();

      case Enum$DriverStatus.InService:
        return const DriverStatus.onTrip();

      case Enum$DriverStatus.SoftReject:
        return const DriverStatus.softReject();

      case Enum$DriverStatus.HardReject:
        return const DriverStatus.hardReject();

      case Enum$DriverStatus.$unknown:
        throw Exception('Unknown DriverStatus');
    }
  }
}

extension DriverStatusEntityX on DriverStatus {
  Enum$DriverStatus get toGql {
    return switch (this) {
      PendingSubmissionState() => Enum$DriverStatus.WaitingDocuments,
      PendingApprovalState() => Enum$DriverStatus.PendingApproval,
      ApprovedState() => Enum$DriverStatus.Online,
      OfflineState() => Enum$DriverStatus.Offline,
      OnTripState() => Enum$DriverStatus.InService,
      BlockedState() => Enum$DriverStatus.Blocked,
      SoftRejectState() => Enum$DriverStatus.SoftReject,
      HardRejectState() => Enum$DriverStatus.HardReject,
    };
  }
}
