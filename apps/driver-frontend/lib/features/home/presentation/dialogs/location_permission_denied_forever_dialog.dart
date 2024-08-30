import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/presentation/buttons/app_bordered_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ionicons/ionicons.dart';

class LocationPermissionDeniedForeverDialog extends StatelessWidget {
  const LocationPermissionDeniedForeverDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      type: context.responsive(
        DialogType.bottomSheet,
        xl: DialogType.dialog,
      ),
      header: (
        Ionicons.location,
        context.translate.locationPermission,
        context.translate.locationPermissionDeniedForeverMessage,
      ),
      primaryButton: AppPrimaryButton(
        onPressed: () {
          Navigator.of(context).pop();
          Geolocator.openLocationSettings();
        },
        child: Text(context.translate.openSettings),
      ),
      secondaryButton: AppBorderedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        title: context.translate.cancel,
      ),
      child: const SizedBox.shrink(),
    );
  }
}
