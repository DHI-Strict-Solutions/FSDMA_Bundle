import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:driver_flutter/features/payout_methods/domain/entitites/payout_account.input.dart';
import 'package:driver_flutter/features/payout_methods/domain/entitites/payout_method.dart';

import '../entitites/payout_account.dart';

abstract class PayoutMethodsRepository {
  Future<Either<Failure, List<PayoutAccountEntity>>> getPayoutAccounts();

  Future<Either<Failure, List<PayoutMethodEntity>>> getAvailablePayoutMethods();

  Future<Either<Failure, PayoutAccountEntity>> updateDefaultPayoutMethodStatus({
    required String payoutMethodId,
    required bool isDefault,
  });

  Future<Either<Failure, void>> deletePayoutMethod(String id);

  Future<Either<Failure, PayoutAccountEntity>> addPayoutMethod(PayoutAccountInput input);

  Future<Either<Failure, String>> getLinkUrlForPayoutMethod(PayoutMethodEntity method);
}
