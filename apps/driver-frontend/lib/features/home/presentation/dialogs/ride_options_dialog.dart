import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/features/home/presentation/dialogs/cancel_ride_reason.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/presentation/buttons/app_list_button.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:flutter_common/core/presentation/buttons/app_bordered_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';

class RideOptionsSheet extends StatelessWidget {
  final String orderId;

  const RideOptionsSheet({
    super.key,
    required this.orderId,
  });

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      type: context.responsive(DialogType.bottomSheet, xl: DialogType.dialog),
      header: (Ionicons.cog, context.translate.rideOptions, null),
      onBackPressed: () => Navigator.of(context).pop(),
      secondaryButton: AppBorderedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          title: context.translate.goBackToRide),
      child: Column(
        children: [
          AppListButton(
            icon: Ionicons.close_circle,
            title: context.translate.cancelRide,
            iconColor: ColorPalette.error40,
            onPressed: () {
              Navigator.of(context).pop();
              showDialog(
                context: context,
                useSafeArea: false,
                builder: (context) {
                  return CancelRideReasonDialog(
                    orderId: orderId,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
