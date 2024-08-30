import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';

enum WalletRechargeTransactionType { orderFee, bankTransfer, inAppPayment, gift, unknown }

extension WalletRechargeTransactionTypeX on WalletRechargeTransactionType {
  IconData get icon {
    switch (this) {
      case WalletRechargeTransactionType.orderFee:
        return Ionicons.cash;
      case WalletRechargeTransactionType.bankTransfer:
        return Ionicons.card;
      case WalletRechargeTransactionType.inAppPayment:
        return Ionicons.card;
      case WalletRechargeTransactionType.gift:
        return Ionicons.gift;
      case WalletRechargeTransactionType.unknown:
        return Ionicons.information;
    }
  }

  String getTitle(BuildContext context) {
    switch (this) {
      case WalletRechargeTransactionType.bankTransfer:
        return context.translate.bankTransfer;
      case WalletRechargeTransactionType.gift:
        return context.translate.gift;
      case WalletRechargeTransactionType.inAppPayment:
        return context.translate.inappPayment;
      case WalletRechargeTransactionType.orderFee:
        return context.translate.orderFee;
      case WalletRechargeTransactionType.unknown:
        return context.translate.unknown;
    }
  }
}
