import 'package:driver_flutter/core/entities/media.prod.dart';
import 'package:driver_flutter/core/enums/gateway_link_method.prod.dart';
import 'package:driver_flutter/core/graphql/documents/payout.graphql.dart';
import 'package:driver_flutter/features/payout_methods/domain/entitites/payout_method.dart';

extension PayoutMethodGqlX on Query$SupportedPayoutMethods$payoutMethods {
  PayoutMethodEntity get toEntity {
    return PayoutMethodEntity(
      id: id,
      name: name,
      linkMethod: linkMethod.toEntity,
      media: media?.toEntity,
    );
  }
}

extension PayoutMethodQueryX on Query$SupportedPayoutMethods {
  List<PayoutMethodEntity> get toEntities {
    return payoutMethods.map((e) => e.toEntity).toList();
  }
}
