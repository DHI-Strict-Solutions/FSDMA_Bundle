import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/entities/order.dart';
import 'package:driver_flutter/core/entities/order.prod.dart';
import 'package:injectable/injectable.dart';
import 'package:driver_flutter/core/graphql/documents/ride_history.graphql.dart';
import 'package:driver_flutter/core/graphql/schema.gql.dart';
import 'package:driver_flutter/core/error/failure.dart';

import '../../../../core/datasources/graphql_datasource.dart';
import '../../domain/repositories/ride_history_repository.dart';

@prod
@LazySingleton(as: RideHistoryRepository)
class RideHistoryRepositoryImpl implements RideHistoryRepository {
  final GraphqlDatasource graphQLDatasource;

  RideHistoryRepositoryImpl(
    this.graphQLDatasource,
  );

  @override
  Future<Either<Failure, List<OrderEntity>>> getRideHistory() async {
    final result = await graphQLDatasource.query(Options$Query$RideHistory());
    return result.map((r) => r.orders.edges.map((e) => e.node.toEntity).toList());
  }

  @override
  Future<Either<Failure, bool>> reportIssue(
      {required String orderId, required String subject, required String issue}) async {
    final result = await graphQLDatasource.mutate(
      Options$Mutation$SubmitIssue(
        variables: Variables$Mutation$SubmitIssue(
          input: Input$CreateOneComplaintInput(
            complaint: Input$ComplaintInput(requestId: orderId, subject: subject, content: issue),
          ),
        ),
      ),
    );
    return result.map((r) => true);
  }
}
