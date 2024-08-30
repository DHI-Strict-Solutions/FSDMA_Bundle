import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:ionicons/ionicons.dart';

import '../blocs/home.dart';
import '../dialogs/launch_map_dialog.dart';

class NavigateButton extends StatelessWidget {
  const NavigateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.driverStatus.maybeMap(
          orElse: () => const SizedBox(),
          onTrip: (value) => AppPrimaryButton(
            onPressed: () {
              final place = value.order.waypoints[(value.order.destinationArrivedTo ?? -1) + 1];
              showDialog(
                context: context,
                useSafeArea: false,
                builder: (context) => LaunchMapDialog(
                  place: place,
                ),
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Ionicons.navigate_circle),
                const SizedBox(
                  width: 4,
                ),
                Text(context.translate.navigate)
              ],
            ),
          ),
        );
      },
    );
  }
}
