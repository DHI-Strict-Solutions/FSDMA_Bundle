import 'package:driver_flutter/config/env.dart';
import 'package:driver_flutter/core/enums/gateway_link_method.prod.dart';
import 'package:driver_flutter/core/graphql/fragments/payment_gateway.fragment.graphql.dart';
import 'package:flutter_common/core/entities/payment_gateway.dart';

extension PaymentGatewayProdX on Fragment$PaymentGatewayFragment {
  PaymentGatewayEntity get toEntity => PaymentGatewayEntity(
        id: id,
        name: title,
        logoUrl: media == null ? null : (Env.serverUrl + media!.address),
        linkMethod: linkMethod.toEntity,
      );
}

extension PaymentGatewaysProdX on List<Fragment$PaymentGatewayFragment> {
  List<PaymentGatewayEntity> get toEntity => map((e) => e.toEntity).toList();
}
