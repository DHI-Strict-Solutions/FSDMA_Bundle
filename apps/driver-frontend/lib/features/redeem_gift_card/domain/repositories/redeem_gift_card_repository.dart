import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/error/failure.dart';

abstract class RedeemGiftCardRepository {
  Future<Either<Failure, (double, String)>> redeemGiftCard({
    required String code,
  });
}
