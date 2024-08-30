import 'package:driver_flutter/core/entities/profile_full.dart';
import 'package:driver_flutter/core/enums/driver_status.dart';
import 'package:driver_flutter/features/auth/domain/entities/verify_otp_response.dart';

extension VerifyOtpResponseTestData on VerifyOtpResponse {
  static get testData => VerifyOtpResponse(
        driverFullProfile: ProfileFullEntity.testData.copyWith(
          status: const DriverStatus.pendingSubmission(),
        ),
        hasPassword: false,
        jwtToken: 'token',
      );
}
