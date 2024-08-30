import 'package:driver_flutter/core/graphql/documents/wallet.graphql.dart';
import '../../domain/enums/deduct_transaction_type.prod.dart';
import '../../domain/enums/recharge_transaction_type.prod.dart';

import 'transaction.dart';

extension WalletTransactionEntityProdX on Query$Wallet$driver$transactions$nodes {
  WalletTransactionEntity get toEntity => WalletTransactionEntity(
        id: id,
        amount: amount,
        dateTime: createdAt,
        currency: currency,
        deductTransactionType: deductType?.toEntity,
        rechargeTransactionType: rechargeType?.toEntity,
      );
}
