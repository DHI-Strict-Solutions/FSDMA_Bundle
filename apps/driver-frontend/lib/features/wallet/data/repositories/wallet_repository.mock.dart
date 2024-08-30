import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:driver_flutter/features/wallet/domain/entity/transaction.dart';
import 'package:driver_flutter/features/wallet/domain/entity/wallet_query_response.dart';
import 'package:flutter_common/core/entities/payment_gateway.dart';
import 'package:flutter_common/core/entities/saved_payment_method.dart';
import 'package:flutter_common/core/enums/card_type.dart';
import 'package:flutter_common/core/enums/gateway_link_method.dart';
import 'package:flutter_common/core/enums/intent_result.dart';
import 'package:flutter_common/core/enums/payment_mode.dart';
import 'package:injectable/injectable.dart';

import '../../domain/enums/deduct_transaction_type.dart';
import '../../domain/enums/recharge_transaction_type.dart';
import '../../domain/repositories/wallet_repository.dart';

@dev
@LazySingleton(as: WalletRepository)
class WalletRepositoryMock implements WalletRepository {
  @override
  Future<Either<Failure, WalletQueryResponse>> getWalletData() async {
    return Right(WalletQueryResponse(
      firstName: "John",
      lastName: "Doe",
      balance: 100,
      currency: "USD",
      transactions: [
        WalletTransactionEntity(
            id: "1",
            amount: 22,
            currency: "USD",
            dateTime: DateTime.now().subtract(const Duration(days: 1)),
            rechargeTransactionType: WalletRechargeTransactionType.inAppPayment,
            deductTransactionType: null),
        WalletTransactionEntity(
          id: "2",
          amount: -10,
          currency: "USD",
          dateTime: DateTime.now().subtract(const Duration(days: 2)),
          rechargeTransactionType: null,
          deductTransactionType: WalletDeductTransactionType.commisson,
        ),
        WalletTransactionEntity(
          id: "3",
          amount: 100,
          currency: "USD",
          dateTime: DateTime.now().subtract(const Duration(days: 3)),
          rechargeTransactionType: null,
          deductTransactionType: WalletDeductTransactionType.correction,
        ),
        WalletTransactionEntity(
            id: "4",
            amount: -10,
            currency: "USD",
            dateTime: DateTime.now().subtract(const Duration(days: 4)),
            rechargeTransactionType: WalletRechargeTransactionType.gift,
            deductTransactionType: null),
        WalletTransactionEntity(
          id: "5",
          amount: 100,
          currency: "USD",
          dateTime: DateTime.now().subtract(const Duration(days: 5)),
          rechargeTransactionType: WalletRechargeTransactionType.orderFee,
          deductTransactionType: null,
        ),
      ],
      savedPaymentMethods: [
        SavedPaymentMethodEntity(
          id: "1",
          cardType: CardType.visa,
          last4Digits: "4242",
          cardHolderName: "John Doe",
          expiryDate: DateTime.now().add(const Duration(days: 400)),
          isEnabled: true,
          isDefault: true,
        ),
      ],
      paymentGateways: const [
        PaymentGatewayEntity(
          id: "1",
          name: "PayPal",
          logoUrl: "https://uploads.ridy.io/ridy-demo/paypal.png",
          linkMethod: GatewayLinkMethod.redirect,
        ),
        PaymentGatewayEntity(
          id: "2",
          name: "Stripe",
          logoUrl: "https://uploads.ridy.io/ridy-demo/stripe.png",
          linkMethod: GatewayLinkMethod.manual,
        ),
      ],
    ));
  }

  @override
  Future<Either<Failure, IntentResult>> topUpWallet({
    required PaymentMode paymentMode,
    required String paymentGatewayId,
    required String currency,
    required double amount,
  }) {
    return Future.delayed(
      const Duration(seconds: 1),
      () => const Right(
        IntentResult.redirect(
          url: "https://www.stripe.com",
        ),
      ),
    );
  }
}
