import 'package:auto_route/auto_route.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/blocs/auth_bloc.dart';
import 'package:driver_flutter/core/blocs/onboarding_cubit.dart';
import 'package:driver_flutter/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/extensions/extensions.dart';

import '../blocs/login.dart';
import 'auth_screen.desktop.dart';
import 'auth_screen.mobile.dart';
import 'onboarding_screen.mobile.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingCubit = locator<OnboardingCubit>();
    return PopScope(
      canPop: false,
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: locator<OnboardingCubit>(),
          ),
          BlocProvider.value(
            value: locator<LoginBloc>(),
          )
        ],
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.jwtToken != null) {
              locator<AuthBloc>().onLoggedIn(
                jwtToken: state.jwtToken!,
                profile: state.profileFullEntity!.toEntity,
              );
            }
            state.loginPage.mapOrNull(
              success: (value) {
                locator<AuthBloc>().onLoggedIn(
                  jwtToken: state.jwtToken!,
                  profile: value.profile,
                );
                locator<OnboardingCubit>().skip();
                locator<LoginBloc>().clear();
                locator<LoginBloc>().reset();
                context.router.replaceAll(
                  [
                    const HomeRoute(),
                  ],
                );
              },
            );
          },
          child: context.responsive(
            BlocBuilder<OnboardingCubit, int>(builder: (context, stateOnboarding) {
              return onboardingCubit.isDone ? const AuthScreenMobile() : const OnboardingScreen();
            }),
            xl: const AuthScreenDesktop(),
          ),
        ),
      ),
    );
  }
}
