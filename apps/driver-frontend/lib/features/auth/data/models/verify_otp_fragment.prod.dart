import 'package:driver_flutter/core/entities/profile_full.prod.dart';
import 'package:driver_flutter/core/graphql/fragments/login.fragment.graphql.dart';

import '../../domain/entities/verify_otp_response.dart';

extension VerifyOtpMutationExtension on Fragment$VerifyOtpOrPasswordFragment {
  VerifyOtpResponse get toEntity => VerifyOtpResponse(
        jwtToken: jwtToken,
        driverFullProfile: user.toEntity,
        hasPassword: hasPassword,
      );
}
