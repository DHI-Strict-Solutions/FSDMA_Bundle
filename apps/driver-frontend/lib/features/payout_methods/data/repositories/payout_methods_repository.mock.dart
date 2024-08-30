import 'package:dartz/dartz.dart';

import 'package:driver_flutter/core/error/failure.dart';
import 'package:driver_flutter/features/payout_methods/domain/entitites/payout_account.input.dart';
import 'package:driver_flutter/features/payout_methods/domain/entitites/payout_method.dart';
import 'package:flutter_common/core/entities/media.dart';
import 'package:flutter_common/core/enums/gateway_link_method.dart';

import '../../domain/entitites/payout_account.dart';
import '../../domain/repositories/payout_methods_repository.dart';
import 'package:injectable/injectable.dart';

@dev
@LazySingleton(as: PayoutMethodsRepository)
class PayoutMethodsRepositoryMock implements PayoutMethodsRepository {
  @override
  Future<Either<Failure, List<PayoutAccountEntity>>> getPayoutAccounts() async {
    return Right(
      PayoutAccountEntity.testData,
    );
  }

  @override
  Future<Either<Failure, void>> deletePayoutMethod(String id) async {
    return const Right(null);
  }

  @override
  Future<Either<Failure, PayoutAccountEntity>> updateDefaultPayoutMethodStatus({
    required String payoutMethodId,
    required bool isDefault,
  }) async {
    return Right(
      PayoutAccountEntity.testData.first,
    );
  }

  @override
  Future<Either<Failure, List<PayoutMethodEntity>>> getAvailablePayoutMethods() async {
    await Future.delayed(const Duration(seconds: 1));
    return const Right(
      [
        PayoutMethodEntity(
          id: "1",
          name: "Bank Transfer",
          linkMethod: GatewayLinkMethod.manual,
          media: null,
        ),
        PayoutMethodEntity(
          id: "2",
          name: "Stripe Connect",
          linkMethod: GatewayLinkMethod.redirect,
          media: MediaEntity(
            id: "1",
            address: "https://uploads.ridy.io/ridy-demo/stripe.png",
          ),
        ),
      ],
    );
  }

  @override
  Future<Either<Failure, PayoutAccountEntity>> addPayoutMethod(PayoutAccountInput input) async {
    return Right(
      PayoutAccountEntity.testData.first,
    );
  }

  @override
  Future<Either<Failure, String>> getLinkUrlForPayoutMethod(PayoutMethodEntity method) async {
    return const Right('https://stripe.com');
  }
}
