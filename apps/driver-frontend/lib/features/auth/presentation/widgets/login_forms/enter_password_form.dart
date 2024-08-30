import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_text_button.dart';
import 'package:ionicons/ionicons.dart';

import '../../blocs/login.dart';

class EnterPasswordForm extends StatefulWidget {
  const EnterPasswordForm({super.key});

  @override
  State<EnterPasswordForm> createState() => _EnterPasswordFormState();
}

class _EnterPasswordFormState extends State<EnterPasswordForm> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    return TextField(
                      onChanged: locator<LoginBloc>().onCurrentPasswordChanged,
                      obscureText: !showPassword,
                      decoration: InputDecoration(
                        errorText: state.errorMessage,
                        hintText: context.translate.enterPassword,
                        suffixIcon: CupertinoButton(
                          onPressed: () => setState(() => showPassword = !showPassword),
                          child: Icon(
                            Ionicons.eye,
                            color: context.theme.inputDecorationTheme.suffixIconColor,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return AppPrimaryButton(
              isDisabled: state.currentPassword?.isNotEmpty != true || state.isLoading,
              onPressed: locator<LoginBloc>().onConfirmPasswordPressed,
              child: Text(context.translate.actionContinue),
            );
          },
        ),
        BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return AppTextButton(
              isDisabled: state.isLoading,
              text: context.translate.useOtpInstead,
              onPressed: locator<LoginBloc>().sendOtp,
            );
          },
        )
      ],
    );
  }
}
