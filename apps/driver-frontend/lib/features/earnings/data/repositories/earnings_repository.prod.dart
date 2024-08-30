import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:driver_flutter/core/graphql/documents/earnings.graphql.dart';
import 'package:driver_flutter/features/earnings/data/models/earnings_dataset.prod.dart';
import 'package:driver_flutter/features/earnings/data/models/earnings_timeframe.prod.dart';
import 'package:driver_flutter/features/earnings/domain/entities/earnings_dataset.dart';
import 'package:driver_flutter/features/earnings/domain/enums/earnings_timeframe.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/datasources/graphql_datasource.dart';
import '../../domain/repositories/earnings_repository.dart';

@prod
@LazySingleton(as: EarningsRepository)
class EarningsRepositoryImpl implements EarningsRepository {
  final GraphqlDatasource graphQLDatasource;

  EarningsRepositoryImpl(
    this.graphQLDatasource,
  );

  @override
  Future<Either<Failure, EarningsDataset>> getEarningsDataset({
    required EarningsTimeFrame timeFrame,
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final earnings = await graphQLDatasource.query(
      Options$Query$Earnings(
        variables: Variables$Query$Earnings(
          timeFrame: timeFrame.toEntity,
          startDate: startDate,
          endDate: endDate,
        ),
      ),
    );
    return earnings.map((r) => r.toEntity);
  }
}
