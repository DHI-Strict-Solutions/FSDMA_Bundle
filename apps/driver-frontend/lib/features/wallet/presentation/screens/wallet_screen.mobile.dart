import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:driver_flutter/features/wallet/presentation/components/wallet_activities.dart';
import 'package:driver_flutter/features/wallet/presentation/components/wallet_header.dart';
import 'package:driver_flutter/features/wallet/presentation/components/wallet_payment_method.dart';

class WalletScreenMobile extends StatelessWidget {
  const WalletScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        WalletHeader(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: WalletPaymentMethod(),
        ),
        WalletActivities(),
      ],
    );
  }
}
