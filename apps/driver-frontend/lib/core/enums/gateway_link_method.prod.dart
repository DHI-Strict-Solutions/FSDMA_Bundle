import 'package:driver_flutter/core/graphql/schema.gql.dart';
import 'package:flutter_common/core/enums/gateway_link_method.dart';

extension GatewayLinkGqlX on Enum$GatewayLinkMethod {
  GatewayLinkMethod get toEntity {
    switch (this) {
      case Enum$GatewayLinkMethod.none:
        return GatewayLinkMethod.none;
      case Enum$GatewayLinkMethod.redirect:
        return GatewayLinkMethod.redirect;
      case Enum$GatewayLinkMethod.manual:
        return GatewayLinkMethod.manual;
      case Enum$GatewayLinkMethod.$unknown:
        throw Exception('Link method unsupported');
    }
  }
}
