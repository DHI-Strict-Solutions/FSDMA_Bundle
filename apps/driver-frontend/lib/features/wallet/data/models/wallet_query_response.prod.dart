import 'package:collection/collection.dart';
import 'package:driver_flutter/core/entities/payment_gateway.prod.dart';
import 'package:driver_flutter/core/entities/saved_payment_method.prod.dart';
import 'package:driver_flutter/core/graphql/documents/wallet.graphql.dart';

import 'package:driver_flutter/features/wallet/domain/entity/transaction.prod.dart';

import '../../domain/entity/wallet_query_response.dart';

extension WalletQueryResponseProdX on Query$Wallet {
  WalletQueryResponse get toEntity => WalletQueryResponse(
        firstName: driver.firstName,
        lastName: driver.lastName,
        currency: driver.wallets.sorted((a, b) => a.balance.compareTo(b.balance)).firstOrNull?.currency ?? 'USD',
        balance: driver.wallets.sorted((a, b) => a.balance.compareTo(b.balance)).firstOrNull?.balance ?? 0,
        transactions: driver.transactions.nodes.map((e) => e.toEntity).toList(),
        paymentGateways: paymentGateways.map((e) => e.toEntity).toList(),
        savedPaymentMethods: savedPaymentMethods.map((e) => e.toEntity).toList(),
      );
}
