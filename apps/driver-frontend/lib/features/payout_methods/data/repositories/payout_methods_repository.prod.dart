import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/datasources/graphql_datasource.dart';
import 'package:driver_flutter/core/graphql/documents/payout.graphql.dart';
import 'package:driver_flutter/features/payout_methods/data/models/payout_account.input.prod.dart';
import 'package:driver_flutter/features/payout_methods/data/models/payout_account.prod.dart';
import 'package:driver_flutter/features/payout_methods/data/models/payout_method.prod.dart';
import 'package:driver_flutter/features/payout_methods/domain/entitites/payout_account.input.dart';
import 'package:driver_flutter/features/payout_methods/domain/entitites/payout_method.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:driver_flutter/core/error/failure.dart';

import '../../domain/entitites/payout_account.dart';
import '../../domain/repositories/payout_methods_repository.dart';

@prod
@LazySingleton(as: PayoutMethodsRepository)
class PayoutMethodsRepositoryImpl implements PayoutMethodsRepository {
  final GraphqlDatasource graphQLDatasource;

  PayoutMethodsRepositoryImpl(
    this.graphQLDatasource,
  );

  @override
  Future<Either<Failure, List<PayoutAccountEntity>>> getPayoutAccounts() async {
    final payoutMethods = await graphQLDatasource.query(
      Options$Query$PayoutAccounts(
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    return payoutMethods.map((r) => r.toEntities);
  }

  @override
  Future<Either<Failure, void>> deletePayoutMethod(String id) async {
    final result = await graphQLDatasource
        .mutate(Options$Mutation$deletePayoutAccount(variables: Variables$Mutation$deletePayoutAccount(id: id)));
    return result;
  }

  @override
  Future<Either<Failure, PayoutAccountEntity>> updateDefaultPayoutMethodStatus({
    required String payoutMethodId,
    required bool isDefault,
  }) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$updatePayoutMethodDefaultStatus(
        variables: Variables$Mutation$updatePayoutMethodDefaultStatus(
          id: payoutMethodId,
          isDefault: isDefault,
        ),
      ),
    );
    return result.map((r) => r.updatePayoutMethod.toEntity);
  }

  @override
  Future<Either<Failure, List<PayoutMethodEntity>>> getAvailablePayoutMethods() async {
    final payoutMethods = await graphQLDatasource.query(Options$Query$SupportedPayoutMethods());
    return payoutMethods.map(
      (r) => r.toEntities,
    );
  }

  @override
  Future<Either<Failure, PayoutAccountEntity>> addPayoutMethod(PayoutAccountInput input) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$createPayoutAccount(
        variables: Variables$Mutation$createPayoutAccount(
          input: input.toGql,
        ),
      ),
    );
    return result.map((r) => r.createPayoutAccount.toEntity);
  }

  @override
  Future<Either<Failure, String>> getLinkUrlForPayoutMethod(PayoutMethodEntity method) async {
    final result = await graphQLDatasource.query(
      Options$Query$getPayoutAccountLinkUrl(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Query$getPayoutAccountLinkUrl(
          gatewayId: method.id,
        ),
      ),
    );
    return result.map((r) => r.getPayoutLinkUrl.url!);
  }
}
