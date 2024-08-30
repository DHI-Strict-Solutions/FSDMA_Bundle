import 'package:dartz/dartz.dart';
import 'package:driver_flutter/features/profile/data/models/feedbacks_summary.dart';
import 'package:driver_flutter/features/profile/data/models/feedbacks_summary.prod.dart';
import 'package:flutter_common/core/entities/media.dart';
import 'package:injectable/injectable.dart';
import 'package:driver_flutter/core/graphql/documents/profile.graphql.dart';
import 'package:driver_flutter/core/datasources/graphql_datasource.dart';
import 'package:driver_flutter/core/entities/profile.dart';
import 'package:driver_flutter/core/entities/profile.prod.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:driver_flutter/features/profile/data/models/profile_aggregations_info.dart';
import 'package:driver_flutter/features/profile/data/models/profile_aggregations_info.prod.dart';
import 'package:driver_flutter/features/profile/domain/repositories/profile_repository.dart';

@prod
@LazySingleton(as: ProfileRepository)
class ProfileRepositoryProd implements ProfileRepository {
  final GraphqlDatasource graphqlDatasource;

  ProfileRepositoryProd(this.graphqlDatasource);

  @override
  Future<Either<Failure, ProfileAggregationsInfo>> getProfileAggregationsInfo() async {
    final result = await graphqlDatasource.query(
      Options$Query$ProfileAggregations(),
    );
    return result.map((r) => r.toEntity);
  }

  @override
  Future<Either<Failure, ProfileEntity>> uploadProfileImage({
    required MediaEntity image,
  }) async {
    final profile = await graphqlDatasource.mutate(Options$Mutation$UpdateProfileImage(
      variables: Variables$Mutation$UpdateProfileImage(
        mediaId: image.id,
      ),
    ));
    return profile.map((r) => r.updateOneDriver.toEntity);
  }

  @override
  Future<Either<Failure, FeedbacksSummary>> getFeedbacksSummary() async {
    final summary = await graphqlDatasource.query(Options$Query$FeedbacksSummary());
    return summary.map((r) => r.toEntity);
  }
}
