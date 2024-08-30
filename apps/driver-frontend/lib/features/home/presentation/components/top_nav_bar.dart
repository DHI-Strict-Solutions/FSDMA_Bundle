// ignore_for_file: use_build_context_synchronously

import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/blocs/location.dart';
import 'package:driver_flutter/core/datasources/location_datasource.dart';
import 'package:driver_flutter/core/enums/driver_status.dart';
import 'package:driver_flutter/core/enums/location_permission.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/presentation/snackbar/snackbar.dart';
import 'package:ionicons/ionicons.dart';

import '../blocs/home.dart';
import '../dialogs/location_permission_denied_forever_dialog.dart';
import '../dialogs/location_permission_request_dialog.dart';

class TopNavBar extends StatelessWidget {
  final Function()? onMenuButtonPressed;
  final BorderRadiusGeometry borderRadius;

  const TopNavBar({
    super.key,
    this.onMenuButtonPressed,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(12),
    ),
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: ColorPalette.neutralVariant99,
          borderRadius: borderRadius,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff64748B).withOpacity(0.08),
              blurRadius: 8,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Stack(
              children: [
                if (onMenuButtonPressed != null)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CupertinoButton(
                      onPressed: onMenuButtonPressed,
                      minSize: 0,
                      padding: const EdgeInsets.all(8),
                      child: const Icon(
                        Ionicons.menu,
                        color: ColorPalette.neutral50,
                      ),
                    ),
                  ),
                Positioned.fill(
                  child: Center(
                      child: state.driverStatus.map(
                    initial: (_) => const SizedBox(),
                    loading: (_) => const CupertinoActivityIndicator(),
                    online: (_) => Text(
                      context.translate.online,
                      style: context.titleSmall,
                      textAlign: TextAlign.center,
                    ),
                    offline: (_) => Text(
                      context.translate.offline,
                      style: context.titleSmall,
                      textAlign: TextAlign.center,
                    ),
                    onTrip: (_) => Text(
                      context.translate.onTrip,
                      style: context.titleSmall,
                      textAlign: TextAlign.center,
                    ),
                    accessDenied: (_) => Text(
                      context.translate.accessDenied,
                      style: context.titleSmall,
                      textAlign: TextAlign.center,
                    ),
                  )),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: switch (state.driverStatus) {
                    InitialDriverStatus() => const SizedBox(),
                    LoadingDriverStatus() => const SizedBox(),
                    AccessDeniedDriverStatus() => const SizedBox(),
                    OnTripDriverStatus() => const SizedBox(),
                    OnlineDriverStatus() => CupertinoSwitch(
                        value: true,
                        onChanged: (_) async {
                          locator<HomeBloc>().onStatusChanged(
                            const DriverStatus.offline(),
                          );
                        },
                        activeColor: ColorPalette.semanticgreen60,
                      ),
                    OfflineDriverStatus() => CupertinoSwitch(
                        value: false,
                        onChanged: (_) async {
                          final homeBloc = locator<HomeBloc>();

                          final locationDatsource = locator<LocationDatasource>();
                          final locationPermissionGranted = await locationDatsource.getLocationPermissionStatus();
                          switch (locationPermissionGranted) {
                            case LocationPermission.denied:
                              final permissionResult = await showDialog(
                                context: context,
                                useSafeArea: false,
                                builder: (context) => const LocationPermissionRequestDialog(),
                              );
                              if (permissionResult == false) {
                                return;
                              }
                            case LocationPermission.deniedForever:
                              showDialog(
                                context: context,
                                useSafeArea: false,
                                builder: (context) => const LocationPermissionDeniedForeverDialog(),
                              );
                              return;
                            case LocationPermission.whileInUse:
                              context.showSnackBar(
                                message:
                                    "Background location updates are not allowed, Please allow this permission in your phone settings for optimal experience.",
                              );

                              break;
                            case LocationPermission.always:
                              break;
                          }
                          final locationServiceEnabled = await locationDatsource.isLocationServiceEnabled();
                          if (locationServiceEnabled) {
                            homeBloc.onStatusChanged(const DriverStatus.online());
                          } else {
                            final serviceEnabled = await locationDatsource.requestLocationService();
                            if (!serviceEnabled) {
                              return;
                            }
                          }
                          homeBloc.onStatusChanged(const DriverStatus.online());
                          locator<LocationBloc>().state.mapOrNull(
                            determined: (determined) {
                              locator<HomeBloc>().onLocationUpdated(
                                location: determined.location,
                                forceUpdate: true,
                              );
                            },
                          );
                        },
                        activeColor: ColorPalette.semanticgreen60,
                      ),
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
