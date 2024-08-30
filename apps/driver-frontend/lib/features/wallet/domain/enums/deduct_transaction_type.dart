import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';

enum WalletDeductTransactionType { withdraw, commisson, correction, unknown }

extension WalletDeductTransactionTypeX on WalletDeductTransactionType {
  IconData get icon {
    switch (this) {
      case WalletDeductTransactionType.withdraw:
        return Ionicons.car;
      case WalletDeductTransactionType.commisson:
        return Ionicons.car;
      case WalletDeductTransactionType.correction:
        return Ionicons.information;
      case WalletDeductTransactionType.unknown:
        return Ionicons.information;
    }
  }

  String getTitle(BuildContext context) {
    switch (this) {
      case WalletDeductTransactionType.withdraw:
        return context.translate.withdraw;
      case WalletDeductTransactionType.commisson:
        return context.translate.commission;
      case WalletDeductTransactionType.correction:
        return context.translate.correction;
      case WalletDeductTransactionType.unknown:
        return context.translate.unknown;
    }
  }
}
