import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';

import '../../blocs/login.dart';

class SetPasswordForm extends StatefulWidget {
  const SetPasswordForm({super.key});

  @override
  State<SetPasswordForm> createState() => _SetPasswordFormState();
}

class _SetPasswordFormState extends State<SetPasswordForm> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    final loginBloc = locator<LoginBloc>();
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      onChanged: loginBloc.onNewPasswordChanged,
                      obscureText: !showPassword,
                      decoration: InputDecoration(
                        hintText: context.translate.password,
                        suffixIcon: CupertinoButton(
                          onPressed: () => setState(() => showPassword = !showPassword),
                          child: Icon(
                            Ionicons.eye,
                            color: context.theme.inputDecorationTheme.suffixIconColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(
                      children: [
                        AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          child: state.codeLengthIsSafe
                              ? const Icon(
                                  Ionicons.checkmark,
                                  color: ColorPalette.semanticgreen60,
                                )
                              : const Icon(
                                  Ionicons.close,
                                  color: ColorPalette.error50,
                                ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          context.translate.passwordRuleLength,
                          style: context.bodyMedium?.copyWith(
                            color: context.theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 200),
                              child: state.hasAtLeastTwoChecks
                                  ? const Icon(
                                      Ionicons.checkmark,
                                      color: ColorPalette.semanticgreen60,
                                    )
                                  : const Icon(
                                      Ionicons.close,
                                      color: ColorPalette.error50,
                                    ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              context.translate.passwordRuleDescription,
                              style: context.bodyMedium?.copyWith(
                                color: context.theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 32, top: 4),
                          child: Text(
                            "\u2022 ${context.translate.passwordRuleUpperCase}\n\u2022 ${context.translate.passwordRuleLowerCase}\n\u2022 ${context.translate.passwordRuleNumber}\n\u2022 ${context.translate.passwordRuleSpecialCharacter}",
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            AppPrimaryButton(
              onPressed: (!state.hasAtLeastTwoChecks) ? null : loginBloc.onNewPasswordSubmitted,
              child: Text(context.translate.actionContinue),
            )
          ],
        );
      },
    );
  }
}
