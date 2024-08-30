import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/datasources/graphql_datasource.dart';
import 'package:driver_flutter/core/entities/intent_result.prod.dart';
import 'package:driver_flutter/core/enums/payment_mode.prod.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:driver_flutter/core/graphql/documents/wallet.graphql.dart';
import 'package:driver_flutter/core/graphql/schema.gql.dart';
import 'package:driver_flutter/features/wallet/data/models/wallet_query_response.prod.dart';
import 'package:driver_flutter/features/wallet/domain/entity/wallet_query_response.dart';
import 'package:flutter_common/core/enums/intent_result.dart';
import 'package:flutter_common/core/enums/payment_mode.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/wallet_repository.dart';

@prod
@LazySingleton(as: WalletRepository)
class WalletRepositoryImpl implements WalletRepository {
  final GraphqlDatasource graphQLDatasource;

  WalletRepositoryImpl(
    this.graphQLDatasource,
  );

  @override
  Future<Either<Failure, WalletQueryResponse>> getWalletData() async {
    final result = await graphQLDatasource.query(
      Options$Query$Wallet(),
    );
    return result.map((r) => r.toEntity);
  }

  @override
  Future<Either<Failure, IntentResult>> topUpWallet({
    required PaymentMode paymentMode,
    required String paymentGatewayId,
    required String currency,
    required double amount,
  }) async {
    final intentResult = await graphQLDatasource.mutate(
      Options$Mutation$TopUpWallet(
        variables: Variables$Mutation$TopUpWallet(
          input: Input$TopUpWalletInput(
            gatewayId: paymentGatewayId,
            amount: amount,
            currency: currency,
            paymentMode: paymentMode.toGql,
          ),
        ),
      ),
    );
    return intentResult.map(
      (r) => r.topUpWallet.toEntity,
    );
  }
}
