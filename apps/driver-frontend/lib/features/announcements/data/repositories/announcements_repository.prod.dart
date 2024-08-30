import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:driver_flutter/core/graphql/documents/announcements.graphql.dart';
import 'package:driver_flutter/core/datasources/graphql_datasource.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:driver_flutter/features/announcements/data/models/announcement.prod.dart';
import 'package:driver_flutter/features/announcements/domain/entity/announcement.dart';

import '../../domain/repositories/announcements_repository.dart';

@prod
@LazySingleton(as: AnnouncementsRepository)
class AnnouncementsRepositoryImpl implements AnnouncementsRepository {
  final GraphqlDatasource graphQLDatasource;

  AnnouncementsRepositoryImpl(
    this.graphQLDatasource,
  );

  @override
  Future<Either<Failure, List<AnnouncementEntity>>> getAnnouncements() async {
    final result = await graphQLDatasource.query(
      Options$Query$Announcements(),
    );
    return result.map((r) => r.toEntity);
  }
}
