import 'package:flutter_common/core/entities/cancel_reason.dart';
import 'package:driver_flutter/core/graphql/documents/home.graphql.dart';

extension CancelReasonFragmentX on Query$CancelReasons$orderCancelReasons {
  CancelReasonEntity get toEntity => CancelReasonEntity(
        id: id,
        name: title,
      );
}

extension CancelReasonQueryX on Query$CancelReasons {
  List<CancelReasonEntity> get toEntity => orderCancelReasons.map((e) => e.toEntity).toList();
}
