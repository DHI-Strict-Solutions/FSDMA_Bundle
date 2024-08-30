import 'package:driver_flutter/config/env.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_text_button.dart';
import 'package:flutter_common/core/presentation/otp_textfield.dart';

import '../../blocs/login.dart';

class EnterOtpForm extends StatelessWidget {
  final LoginState state;

  const EnterOtpForm({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final loginBloc = locator<LoginBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  context.translate.sendOtpDescription,
                  style: context.bodyMedium?.copyWith(
                    color: context.theme.colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: OtpTextField(
                    length: 6,
                    onChanged: loginBloc.onOtpChanged,
                  ),
                ),
                if (Env.isDemoMode) ...[
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "In demo mode, use 123456 as OTP",
                    style: context.bodyMedium?.copyWith(
                      color: context.theme.colorScheme.onSurfaceVariant,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
                const SizedBox(
                  height: 32,
                ),
                AppTextButton(
                  text: context.translate.resendOtp,
                  onPressed: loginBloc.sendOtp,
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
        AppPrimaryButton(
          isDisabled: state.loginPage.maybeMap(
            orElse: () => false,
            enterOtp: (enterOtp) => enterOtp.otp?.length != 6 || state.isLoading,
          ),
          onPressed: loginBloc.onConfirmOtpPressed,
          child: Text(context.translate.confirm),
        ),
      ],
    );
  }
}
