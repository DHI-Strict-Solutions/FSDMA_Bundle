import 'package:driver_flutter/core/blocs/onboarding_cubit.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/core/presentation/wizard_steps/wizard_steps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:flutter_common/core/presentation/app_step_slider.dart';

import '../blocs/login.dart';
import '../widgets/language_button.dart';
import '../widgets/login_form_builder.dart';
import '../widgets/onboarding_form_builder.dart';

class AuthScreenDesktop extends StatelessWidget {
  const AuthScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primary99,
        padding: const EdgeInsets.all(80),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LanguageButton(),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: AnimatedSwitcher(
                            duration: AnimationDuration.pageStateTransitionDesktop,
                            child: BlocBuilder<OnboardingCubit, int>(
                              builder: (context, state) {
                                final currentStep = state < 2 ? state : 1;
                                return OnboardingFormBuilder(onboardingItemIndex: currentStep).buildHeader(context);
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        AnimatedSwitcher(
                          duration: AnimationDuration.pageStateTransitionDesktop,
                          child: BlocBuilder<OnboardingCubit, int>(
                            builder: (context, state) {
                              final currentStep = state < 2 ? state : 1;
                              return OnboardingFormBuilder(onboardingItemIndex: currentStep).buildFooter(context);
                            },
                          ),
                        ),
                        BlocBuilder<OnboardingCubit, int>(
                          builder: (context, state) {
                            final currentStep = state < 2 ? state : 1;
                            return Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CupertinoButton(
                                    onPressed: currentStep == 0 ? null : context.read<OnboardingCubit>().previousPage,
                                    child: const Icon(Ionicons.arrow_back)),
                                SizedBox(
                                  width: 95,
                                  child: AppStepSlider(
                                    count: 2,
                                    currentStep: currentStep,
                                  ),
                                ),
                                CupertinoButton(
                                  onPressed: currentStep == 1
                                      ? null
                                      : () {
                                          context.read<OnboardingCubit>().nextPage();
                                        },
                                  child: const Icon(
                                    Ionicons.arrow_forward,
                                  ),
                                ),
                              ],
                            );
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: ColorPalette.neutralVariant99,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: BlocBuilder<LoginBloc, LoginState>(
                    buildWhen: (currentState, nextState) => currentState.loginPage != nextState.loginPage,
                    builder: (context, state) => Padding(
                      padding: const EdgeInsets.all(64),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            state.loginPage.title(context),
                            style: context.titleLarge,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          if (state.loginPage.wizardStep != null) ...[
                            SizedBox(
                              width: 300,
                              child: WizardSteps(count: 5, selectedStep: state.loginPage.wizardStep!),
                            ),
                          ],
                          if (state.loginPage.wizardStep == null || state.loginPage.wizardStep == 1) ...[
                            Container(
                              height: state.desktopHeight,
                              constraints: const BoxConstraints(maxWidth: 600),
                              child: LoginFormBuilder(loginState: state).footer,
                            )
                          ],
                          if (state.loginPage.wizardStep != null && state.loginPage.wizardStep! > 1) ...[
                            Expanded(
                              child: Container(
                                height: state.desktopHeight,
                                constraints: const BoxConstraints(maxWidth: 600),
                                child: LoginFormBuilder(loginState: state).footer,
                              ),
                            ),
                          ]
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
