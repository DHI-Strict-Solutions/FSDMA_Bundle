import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';

class ReportIssueSuccessDialog extends StatelessWidget {
  const ReportIssueSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      header: (
        Ionicons.document_text,
        "Report submitted",
        " Our support team will review your report and contact you as soon as possible.",
      ),
      primaryButton: AppPrimaryButton(
        child: Text(context.translate.ok),
        onPressed: () => context.router.maybePop(),
      ),
      type: context.responsive(DialogType.bottomSheet, xl: DialogType.dialog),
      child: const SizedBox(height: 100),
    );
  }
}
