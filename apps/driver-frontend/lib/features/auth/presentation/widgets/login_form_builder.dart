import 'package:driver_flutter/features/auth/presentation/blocs/login.dart';
import 'package:driver_flutter/features/auth/presentation/widgets/access_denied_form.dart';
import 'package:driver_flutter/features/auth/presentation/widgets/login_forms/contact_details.dart';
import 'package:driver_flutter/features/auth/presentation/widgets/login_forms/documents_form.dart';
import 'package:driver_flutter/features/auth/presentation/widgets/login_forms/payout_information.dart';
import 'package:driver_flutter/features/auth/presentation/widgets/login_forms/vehicle_details.dart';
import 'package:driver_flutter/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';

import 'login_forms/enter_number_form.dart';
import 'login_forms/enter_otp_form.dart';
import 'login_forms/enter_password_form.dart';
import 'login_forms/set_password_form.dart';

class LoginFormBuilder {
  final LoginState loginState;

  LoginFormBuilder({
    required this.loginState,
  });

  Widget get header {
    return loginState.loginPage.map(
      enterNumber: (_) => Assets.images.signIn1.image(
        width: 250,
        height: 165,
      ),
      enterOtp: (_) => Padding(
        padding: const EdgeInsets.all(16),
        child: Assets.images.signInOtp.image(
          width: 250,
          height: 165,
        ),
      ),
      enterPassword: (_) => Padding(
        padding: const EdgeInsets.all(16),
        child: Assets.images.signInPassword.image(
          width: 250,
          height: 70,
        ),
      ),
      setPassword: (_) => Padding(
        padding: const EdgeInsets.all(16),
        child: Assets.images.signInPassword.image(
          width: 250,
          height: 100,
        ),
      ),
      contactDetails: (_) => Padding(
        padding: const EdgeInsets.all(16),
        child: Assets.images.signInContactDetails.image(
          width: 100,
          height: 100,
        ),
      ),
      vehicleDetails: (_) => Padding(
        padding: const EdgeInsets.all(16),
        child: Assets.images.signInVehicleDetails.image(
          width: 100,
          height: 100,
        ),
      ),
      payoutInformation: (_) => Padding(
        padding: const EdgeInsets.all(16),
        child: Assets.images.signInDocuments.image(
          width: 100,
          height: 100,
        ),
      ),
      documents: (_) => Padding(
        padding: const EdgeInsets.all(16),
        child: Assets.images.signInDocuments.image(
          width: 100,
          height: 100,
        ),
      ),
      accessDenied: (_) => const SizedBox(height: 10),
      success: (_) => const SizedBox(height: 200),
    );
  }

  Widget get footer {
    return loginState.loginPage.map(
      enterNumber: (enterNumber) => EnterNumberForm(
        state: loginState,
      ),
      enterOtp: (_) => EnterOtpForm(
        state: loginState,
      ),
      enterPassword: (_) => const EnterPasswordForm(),
      setPassword: (_) => const SetPasswordForm(),
      contactDetails: (_) => ContactDetails(
        state: loginState,
      ),
      vehicleDetails: (_) => VehicleDetails(
        state: loginState,
      ),
      payoutInformation: (_) => PayoutInformation(
        state: loginState,
      ),
      documents: (_) => DocumentsForm(
        state: loginState,
      ),
      accessDenied: (_) => const AccessDeniedForm(),
      success: (_) => const SizedBox(),
    );
  }
}
