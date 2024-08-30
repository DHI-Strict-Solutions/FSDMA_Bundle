// ignore_for_file: use_build_context_synchronously

import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/datasources/location_datasource.dart';
import 'package:driver_flutter/core/enums/location_permission.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/presentation/buttons/app_bordered_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:ionicons/ionicons.dart';

class LocationPermissionRequestDialog extends StatelessWidget {
  const LocationPermissionRequestDialog({super.key});

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
        "Location permission is a requirement for receiving orders around you and also for rider to track your location. This can happen while your app is in background or foreground. You can change this permission in your phone settings.",
      ),
      primaryButton: AppPrimaryButton(
        onPressed: () async {
          final permission = await locator<LocationDatasource>().requestLocationPermission();
          switch (permission) {
            case LocationPermission.always:
            case LocationPermission.whileInUse:
              Navigator.pop(context, true);
              break;
            case LocationPermission.denied:
            case LocationPermission.deniedForever:
              Navigator.pop(context, false);
              break;
          }
        },
        child: Text(context.translate.allow),
      ),
      secondaryButton: AppBorderedButton(
        onPressed: () {
          Navigator.of(context).pop(false);
        },
        title: context.translate.cancel,
      ),
      child: const SizedBox.shrink(),
    );
  }
}
