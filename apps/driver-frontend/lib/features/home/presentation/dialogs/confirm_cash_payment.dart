import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/features/home/presentation/blocs/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/presentation/buttons/app_bordered_button.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:ionicons/ionicons.dart';

class ConfirmCashPayment extends StatelessWidget {
  final String orderId;
  final double amount;
  final String currency;

  const ConfirmCashPayment({
    super.key,
    required this.amount,
    required this.currency,
    required this.orderId,
  });

  @override
  Widget build(BuildContext context) {
    return AppResponsiveDialog(
      header: (
        Ionicons.cash,
        context.translate.cashPayment,
        context.translate.cashPaymentDescription(
          amount.formatCurrency(
            currency,
          ),
        ),
      ),
      primaryButton: AppPrimaryButton(
        onPressed: () {
          locator<HomeBloc>().add(
            HomeEvent.paidInCash(
              orderId: orderId,
              amount: amount,
            ),
          );
          Navigator.pop(context);
        },
        child: Text(
          context.translate.confirmAndEndTrip,
        ),
      ),
      secondaryButton: AppBorderedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        title: context.translate.cancel,
      ),
      type: context.responsive(
        DialogType.bottomSheet,
        xl: DialogType.dialog,
      ),
      child: const SizedBox(
        width: double.infinity,
      ),
    );
  }
}
