import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/datasources/graphql_datasource.dart';
import 'package:driver_flutter/core/entities/profile.prod.dart';
import 'package:driver_flutter/core/graphql/documents/profile.graphql.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';

import '../entities/profile.dart';
import '../error/failure.dart';
import '../graphql/documents/home.graphql.dart';
import 'profile_repository.dart';

@prod
@LazySingleton(as: ProfileRepository)
class ProfileRepositoryProd implements ProfileRepository {
  final GraphqlDatasource graphqlDatasource;

  ProfileRepositoryProd(this.graphqlDatasource);

  @override
  Future<Either<Failure, ProfileEntity>> getProfile() async {
    final profile = await graphqlDatasource.query(
      Options$Query$Profile(
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    return profile.map(
      (r) => r.driver.toEntity,
    );
  }

  @override
  Future<Either<Failure, ProfileEntity>> updateRadius({
    required int? radius,
  }) async {
    final profile = await graphqlDatasource.mutate(
      Options$Mutation$UpdateDriverSearchDistance(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Mutation$UpdateDriverSearchDistance(
          distance: radius,
        ),
      ),
    );
    return profile.map((r) => r.updateOneDriver.toEntity);
  }

  @override
  Future<Either<Failure, void>> deleteAccount() async {
    await graphqlDatasource.mutate(Options$Mutation$DeleteAccount());
    return const Right(null);
  }
}
