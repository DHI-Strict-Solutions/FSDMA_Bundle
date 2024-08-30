import 'package:driver_flutter/core/graphql/schema.gql.dart';

import 'deduct_transaction_type.dart';

extension DeductTransactionTypeProdX on Enum$DriverDeductTransactionType {
  WalletDeductTransactionType get toEntity {
    switch (this) {
      case Enum$DriverDeductTransactionType.Withdraw:
        return WalletDeductTransactionType.withdraw;
      case Enum$DriverDeductTransactionType.Commission:
        return WalletDeductTransactionType.commisson;
      case Enum$DriverDeductTransactionType.Correction:
        return WalletDeductTransactionType.correction;

      case Enum$DriverDeductTransactionType.$unknown:
        return WalletDeductTransactionType.unknown;
    }
  }
}
