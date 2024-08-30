import 'package:driver_flutter/core/graphql/documents/announcements.graphql.dart';
import 'package:driver_flutter/features/announcements/domain/entity/announcement.dart';

extension AnnouncementProdX on Query$Announcements {
  List<AnnouncementEntity> get toEntity {
    return announcements.map((e) => e.toEntity).toList();
  }
}

extension AnnouncementNodeProdX on Query$Announcements$announcements {
  AnnouncementEntity get toEntity {
    return AnnouncementEntity(
      id: id,
      title: title,
      description: description,
      url: url,
    );
  }
}
