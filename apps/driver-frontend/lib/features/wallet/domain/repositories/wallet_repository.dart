import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:flutter_common/core/enums/intent_result.dart';
import 'package:flutter_common/core/enums/payment_mode.dart';

import '../entity/wallet_query_response.dart';

abstract class WalletRepository {
  Future<Either<Failure, WalletQueryResponse>> getWalletData();

  Future<Either<Failure, IntentResult>> topUpWallet({
    required PaymentMode paymentMode,
    required String paymentGatewayId,
    required String currency,
    required double amount,
  });
}
