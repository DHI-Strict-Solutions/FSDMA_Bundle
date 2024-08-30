import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/blocs/auth_bloc.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/config/constants.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/enums/measurement_system.dart';
import 'package:ionicons/ionicons.dart';

import '../blocs/home.dart';

class DriverSearchRadiusButtonNew extends StatelessWidget {
  const DriverSearchRadiusButtonNew({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.driverStatus.maybeMap(
          orElse: () => const SizedBox(),
          online: (online) {
            return BlocBuilder<AuthBloc, AuthState>(
              builder: (context, stateAuth) {
                return stateAuth.maybeMap(
                  orElse: () => const SizedBox(),
                  authenticated: (authenticated) {
                    final radius = authenticated.profile.searchRadius;
                    return Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: ColorPalette.neutralVariant99,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x1464748B),
                            blurRadius: 8,
                            offset: Offset(2, 4),
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CupertinoButton(
                            minSize: 0,
                            padding: EdgeInsets.zero,
                            onPressed: (radius ?? 0) > 99000
                                ? null
                                : () {
                                    const measurementSystem = Constants.defaultMeasurementSystem;
                                    if (measurementSystem == MeasurementSystem.metric) {
                                      onRadiusChanged((radius ?? 0) + 1000);
                                    } else {
                                      onRadiusChanged((radius ?? 0) + 1609);
                                    }
                                  },
                            child: const Icon(
                              Ionicons.add_circle,
                              color: ColorPalette.primary80,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            radius == null ? '∞' : (radius).toFormattedDistance(context),
                            style: context.labelMedium,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          CupertinoButton(
                            minSize: 0,
                            padding: EdgeInsets.zero,
                            onPressed: (radius ?? 0) < 1000
                                ? null
                                : () {
                                    const measurementSystem = Constants.defaultMeasurementSystem;
                                    if (measurementSystem == MeasurementSystem.metric) {
                                      if ((radius ?? 0) - 1000 < 1000) {
                                        onRadiusChanged(null);
                                      } else {
                                        onRadiusChanged((radius ?? 0) - 1000);
                                      }
                                    } else {
                                      if ((radius ?? 0) - 1609 < 1609) {
                                        onRadiusChanged(0);
                                      } else {
                                        onRadiusChanged((radius ?? 0) - 1609);
                                      }
                                    }
                                  },
                            child: const Icon(
                              Ionicons.remove_circle,
                              color: ColorPalette.neutral90,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }

  void onRadiusChanged(int? radius) {
    locator<AuthBloc>().changeSearchRadius(radius);
  }
}
