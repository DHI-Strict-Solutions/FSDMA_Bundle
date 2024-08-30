import 'package:driver_flutter/core/graphql/schema.gql.dart';

import 'recharge_transaction_type.dart';

extension WalletRechargeTransactionTypeProdX on Enum$DriverRechargeTransactionType {
  WalletRechargeTransactionType get toEntity {
    switch (this) {
      case Enum$DriverRechargeTransactionType.OrderFee:
        return WalletRechargeTransactionType.orderFee;
      case Enum$DriverRechargeTransactionType.BankTransfer:
        return WalletRechargeTransactionType.bankTransfer;
      case Enum$DriverRechargeTransactionType.InAppPayment:
        return WalletRechargeTransactionType.inAppPayment;
      case Enum$DriverRechargeTransactionType.Gift:
        return WalletRechargeTransactionType.gift;
      case Enum$DriverRechargeTransactionType.$unknown:
        return WalletRechargeTransactionType.unknown;
    }
  }
}
