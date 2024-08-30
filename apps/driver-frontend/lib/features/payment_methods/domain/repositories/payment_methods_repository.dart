import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:flutter_common/core/entities/payment_gateway.dart';
import 'package:flutter_common/core/entities/saved_payment_method.dart';

abstract class PaymentMethodsRepository {
  Future<Either<Failure, (List<SavedPaymentMethodEntity>, List<PaymentGatewayEntity>)>> getSavedPaymentMethods();

  Future<Either<Failure, String>> getExternalUrl({
    required String paymentGatewayId,
  });
}
