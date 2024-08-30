import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/blocs/auth_bloc.dart';
import 'package:driver_flutter/core/blocs/settings.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/core/presentation/app_generic_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/config/constants.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:generic_map/generic_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:maps_toolkit/maps_toolkit.dart' as map_toolkit;

import '../blocs/home.dart';

class HomeMapView extends StatefulWidget {
  const HomeMapView({super.key});

  @override
  State<HomeMapView> createState() => _HomeMapViewState();
}

class _HomeMapViewState extends State<HomeMapView> {
  MapViewController? controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      buildWhen: (previous, current) => previous.mapProvider != current.mapProvider,
      builder: (context, settingsState) {
        return BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            if (state.markers.length > 1) {
              final markersDistances = state.markers
                  .map((e) => e.position.distanceWith(state.markers.first.position))
                  .reduce((value, element) => value + element);
              if (markersDistances > 10) {
                controller?.fitBounds(
                  state.markers.map((e) => e.position).toList(),
                );
              } else {
                controller?.moveCamera(state.markers.first.position, null);
              }
            } else if (state.markers.length == 1) {
              state.driverStatus.maybeMap(
                online: (value) {
                  final radius = locator<AuthBloc>().state.maybeMap(
                        orElse: () => null,
                        authenticated: (authenticated) => authenticated.profile.searchRadius,
                      );
                  fitMapToCenterAndRadius(
                    state.markers.first.position,
                    radius ?? 10000,
                  );
                },
                orElse: () {
                  controller?.moveCamera(state.markers.first.position, null);
                },
              );
            }
          },
          builder: (context, state) {
            return BlocConsumer<AuthBloc, AuthState>(
              listenWhen: (previous, current) => previous.maybeMap(
                orElse: () => true,
                authenticated: (authenticatedPrevious) => current.maybeMap(
                  orElse: () => false,
                  authenticated: (authenticated) =>
                      authenticatedPrevious.profile.searchRadius != authenticated.profile.searchRadius,
                ),
              ),
              listener: (context, stateAuth) {
                state.driverStatus.maybeMap(
                  online: (value) {
                    final radius = stateAuth.maybeMap(
                      orElse: () => null,
                      authenticated: (authenticated) => authenticated.profile.searchRadius,
                    );

                    if (state.markers.isNotEmpty && value.orderRequests.isEmpty) {
                      fitMapToCenterAndRadius(
                        state.markers.first.position,
                        radius ?? 10000,
                      );
                    }
                  },
                  orElse: () {
                    if (state.markers.isNotEmpty) {
                      controller?.moveCamera(state.markers.first.position, null);
                    }
                  },
                );
              },
              // buildWhen: (previous, current) => previous.maybeMap(
              //   orElse: () => true,
              //   authenticated: (authenticatedPrevious) => current.maybeMap(
              //     orElse: () => false,
              //     authenticated: (authenticated) =>
              //         authenticatedPrevious.profile.searchRadius != authenticated.profile.searchRadius,
              //   ),
              // ),
              builder: (context, stateAuth) {
                final radius = stateAuth.maybeMap(
                  orElse: () => null,
                  authenticated: (authenticated) => authenticated.profile.searchRadius,
                );
                return AppGenericMap(
                  padding: state.mapPadding(settingsState.mapProviderEnum, context),
                  onControllerReady: (p0) => controller = p0,
                  circleMarkers: state.circleMarkers(radius),
                  polylines: state.polylines,
                  interactive: true,
                  mode: MapViewMode.static,
                  initialLocation: Constants.defaultLocation.toGenericMapPlace,
                  markers: state.markers,
                );
              },
            );
          },
        );
      },
    );
  }

  void fitMapToCenterAndRadius(LatLng center, int radius) {
    final northeast = map_toolkit.SphericalUtil.computeOffset(
      map_toolkit.LatLng(center.latitude, center.longitude),
      radius.toDouble(),
      45,
    ).toLatLong;
    final southwest = map_toolkit.SphericalUtil.computeOffset(
      map_toolkit.LatLng(center.latitude, center.longitude),
      radius.toDouble(),
      225,
    ).toLatLong;
    controller?.fitBounds(
      [northeast, southwest],
    );
  }
}

extension MapToolkitLatLng on map_toolkit.LatLng {
  LatLng get toLatLong => LatLng(latitude, longitude);
}
