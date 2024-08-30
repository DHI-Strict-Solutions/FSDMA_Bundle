import 'package:driver_flutter/core/datasources/upload_datasource.dart';
import 'package:flutter_common/core/entities/media.dart';
import 'package:injectable/injectable.dart';

@dev
@LazySingleton(as: UploadDatasource)
class UploadDatasourceMock implements UploadDatasource {
  @override
  Future<MediaEntity> uploadProfilePicture(String filePath) async {
    return const MediaEntity(id: "1", address: "https://i.ibb.co/vXkk90M/person.png");
  }

  @override
  Future<MediaEntity> uploadDocument(String filePath) async {
    return const MediaEntity(id: "1", address: "https://i.ibb.co/vXkk90M/person.png");
  }
}
