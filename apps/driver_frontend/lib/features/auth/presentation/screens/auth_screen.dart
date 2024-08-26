import 'package:auto_route/auto_route.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/blocs/auth_bloc.dart';
import 'package:driver_flutter/core/blocs/onboarding_cubit.dart';
import 'package:driver_flutter/core/router/app_router.dart';
import 'package:driver_flutter/features/auth/presentation/screens/auth_screen.desktop.dart';
import 'package:driver_flutter/features/auth/presentation/screens/onboarding_screen.mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../blocs/login.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({Key? key}) : super(key: key);

  // Google Sign-In configuration
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email'],
  );

  void _handleGoogleSignIn(BuildContext context) async {
    try {
      final account = await _googleSignIn.signIn();
      if (account != null) {
        // Successful Google Sign-In
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('Google Sign-In successful: ${account.email}')),
        );
      }
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error during Google Sign-In: $error')),
      );
    }
  }

  void _handleAppleSignIn(BuildContext context) async {
    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                'Apple Sign-In successful: ${credential.email ?? 'No email provided'}')),
      );
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error during Apple Sign-In: $error')),
      );
    }
  }

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
            BlocBuilder<OnboardingCubit, int>(
                builder: (context, stateOnboarding) {
              // Заміна на клас, який має бути визначений
              return onboardingCubit.isDone ? AuthScreen() : OnboardingScreen();
            }),
            xl: const AuthScreenDesktop(),
          ),
        ),
      ),
    );
  }

  // Кнопка для Google Sign-In
  ElevatedButton googleSignInButton(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        _handleGoogleSignIn(context);
      },
      icon: const Image(
        image: AssetImage('assets/google_icon.png'),
        height: 24.0,
        width: 24.0,
      ),
      label: const Text('Sign in with Google'),
    );
  }

  // Кнопка для Apple Sign-In
  ElevatedButton appleSignInButton(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        _handleAppleSignIn(context);
      },
      icon: const Icon(
        Icons.apple,
        color: Colors.black,
        size: 24.0,
      ),
      label: const Text('Sign in with Apple'),
    );
  }
}

// Не забудьте переконатися, що класи AuthScreenMobile, OnboardingScreen, AuthScreenDesktop правильно визначені та імпортовані.
