import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_status.freezed.dart';
part 'driver_status.g.dart';

@freezed
sealed class DriverStatus with _$DriverStatus {
  const factory DriverStatus.pendingSubmission() = PendingSubmissionState;
  const factory DriverStatus.pendingApproval() = PendingApprovalState;
  const factory DriverStatus.online() = ApprovedState;
  const factory DriverStatus.offline() = OfflineState;
  const factory DriverStatus.onTrip() = OnTripState;
  const factory DriverStatus.blocked() = BlockedState;
  const factory DriverStatus.softReject() = SoftRejectState;
  const factory DriverStatus.hardReject() = HardRejectState;

  factory DriverStatus.fromJson(Map<String, dynamic> json) => _$DriverStatusFromJson(json);
}
