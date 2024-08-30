import 'package:driver_flutter/core/entities/profile_full.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response.freezed.dart';

@freezed
class VerifyOtpResponse with _$VerifyOtpResponse {
  const factory VerifyOtpResponse({
    required String jwtToken,
    required ProfileFullEntity driverFullProfile,
    required bool hasPassword,
  }) = _VerifyOtpResponse;
}
