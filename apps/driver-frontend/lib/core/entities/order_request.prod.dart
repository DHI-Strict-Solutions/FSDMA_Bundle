import 'package:collection/collection.dart';
import 'package:driver_flutter/core/entities/payment_gateway.prod.dart';
import 'package:driver_flutter/core/entities/place.prod.dart';
import 'package:driver_flutter/core/entities/ride_option.prod.dart';
import 'package:driver_flutter/core/entities/saved_payment_method.prod.dart';
import 'package:driver_flutter/core/enums/order_status.prod.dart';
import 'package:driver_flutter/core/enums/payment_mode.prod.dart';
import 'package:driver_flutter/core/graphql/fragments/order_request.fragment.graphql.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/enums/payment_mode.dart';

import 'order_request.dart';

extension OrderRequestFragmentX on Fragment$OrderRequest {
  OrderRequestEntity get toEntity {
    return OrderRequestEntity(
      id: id,
      status: status.toEntity,
      currency: currency,
      fee: costBest,
      providerShare: providerShare,
      distance: distanceBest,
      paymentMethod: (
        paymentMode?.toEntity ?? PaymentMode.cash,
        paymentGateway?.toEntity,
        savedPaymentMethod?.toEntity,
      ).toUnion,
      duration: durationBest,
      waypoints: points
          .mapIndexed(
            (index, e) => PlaceEntity(
              coordinates: e.toLatLngEntity,
              address: addresses[index],
            ),
          )
          .toList(),
      serviceName: service!.name,
      route: directions!.map((e) => e.toLatLngEntity).toList(),
      rideOptions: options.map((e) => e.toEntity).toList(),
    );
  }
}

extension OrderRequestFragmentListX on List<Fragment$OrderRequest> {
  List<OrderRequestEntity> get toEntity {
    return map((e) => e.toEntity).toList();
  }
}
