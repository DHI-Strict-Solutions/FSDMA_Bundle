import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_bordered_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:flutter_common/core/presentation/buttons/app_text_button.dart';

import 'cancel_ride_reason.dart';

@Deprecated("We are using the CancelRideReasonDialog")
class CancelRideDialog extends StatelessWidget {
  final String orderId;

  const CancelRideDialog({
    super.key,
    required this.orderId,
  });

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      type: context.responsive(
        DialogType.bottomSheet,
        xl: DialogType.dialog,
      ),
      primaryButton: AppBorderedButton(
        onPressed: () {
          Navigator.of(context).pop();
          showDialog(
            context: context,
            useSafeArea: false,
            builder: (context) => CancelRideReasonDialog(
              orderId: orderId,
            ),
          );
        },
        textColor: ColorPalette.error40,
        title: context.translate.cancelRide,
      ),
      secondaryButton: AppTextButton(
        onPressed: () => Navigator.of(context).pop(),
        text: context.translate.goBackToRide,
      ),
      iconColor: ColorPalette.error40,
      header: (
        Ionicons.close_circle,
        context.translate.rideCancellation,
        context.translate.cancelRideMessage,
      ),
      child: const SizedBox.shrink(),
    );
  }
}
