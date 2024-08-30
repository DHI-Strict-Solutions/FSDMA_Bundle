import 'package:auto_route/auto_route.dart';
import 'package:driver_flutter/core/blocs/auth_bloc.dart';
import 'package:driver_flutter/core/blocs/location.dart';
import 'package:driver_flutter/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/snackbar/snackbar.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

import '../blocs/home.dart';
import 'home_screen.desktop.dart';
import 'home_screen.mobile.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final AppLifecycleListener _listener;

  @override
  void initState() {
    _listener = AppLifecycleListener(
      onStateChange: _onStateChanged,
    );
    locator<AuthBloc>().requestUserInfo();
    final driverLocation = locator<LocationBloc>().state.maybeMap(
          determined: (determined) => determined.location,
          orElse: () => null,
        );
    locator<HomeBloc>().onStarted(
      driverLocation: driverLocation,
    );
    super.initState();
  }

  @override
  void dispose() {
    _listener.dispose();
    super.dispose();
  }

  void _onStateChanged(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        locator<HomeBloc>().onStarted(
          driverLocation: locator<LocationBloc>().state.maybeMap(
                determined: (determined) => determined.location,
                orElse: () => null,
              ),
        );
        locator<AuthBloc>().requestUserInfo();

        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final locationBloc = locator<LocationBloc>();
    final homeBloc = locator<HomeBloc>();
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: locator<HomeBloc>(),
          ),
          BlocProvider.value(
            value: locator<LocationBloc>(),
          ),
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<LocationBloc, LocationState>(
              listener: (context, state) {
                state.mapOrNull(
                  error: (error) => context.showSnackBar(message: error.error.name),
                  determined: (determined) => homeBloc.onLocationUpdated(location: determined.location),
                );
              },
            ),
            BlocListener<HomeBloc, HomeState>(
              listener: (context, state) {
                state.driverStatus.mapOrNull(
                  initial: (value) {
                    homeBloc.onStarted(
                      driverLocation: locator<LocationBloc>().state.maybeMap(
                            determined: (determined) => determined.location,
                            orElse: () => null,
                          ),
                    );
                    locator<AuthBloc>().requestUserInfo();
                  },
                  online: (_) {
                    locationBloc.startGettingLocationUpdates();
                  },
                  onTrip: (onTrip) {
                    locationBloc.startGettingLocationUpdates();
                  },
                  offline: (_) => locationBloc.stopGettingLocationUpdates(),
                  accessDenied: (value) {
                    locator<AuthBloc>().onLoggedOut();
                    context.router.replace(const AuthRoute());
                  },
                );
              },
            ),
            // if new request added play sound
            BlocListener<HomeBloc, HomeState>(
              listenWhen: (previous, current) => current.driverStatus.maybeMap(
                online: (online) =>
                    online.orderRequests.length >
                    previous.driverStatus.maybeMap(
                      online: (online) => online.orderRequests.length,
                      orElse: () => 0,
                    ),
                orElse: () => false,
              ),
              listener: (context, state) {
                FlutterRingtonePlayer.play(
                  fromAsset: "assets/notification.mp3",
                  looping: false,
                  volume: 1.0,
                  asAlarm: true,
                );
              },
            )
          ],
          child: context.responsive(
            const HomeScreenMobile(),
            xl: const HomeScreenDesktop(),
          ),
        ),
      ),
    );
  }
}
