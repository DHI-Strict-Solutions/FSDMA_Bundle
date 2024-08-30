import 'package:driver_flutter/config/env.dart';
import 'package:driver_flutter/core/graphql/fragments/media.fragment.graphql.dart';
import 'package:flutter_common/core/entities/media.dart';

extension MediaEntityGqlX on Fragment$MediaFragment {
  MediaEntity get toEntity {
    return MediaEntity(
      id: id,
      address: Env.serverUrl + address,
    );
  }
}
