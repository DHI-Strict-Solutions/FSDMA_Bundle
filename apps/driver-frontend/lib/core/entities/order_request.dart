import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/entities/ride_option.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_common/core/enums/order_status.dart';

part 'order_request.freezed.dart';
part 'order_request.g.dart';

@freezed
class OrderRequestEntity with _$OrderRequestEntity {
  const factory OrderRequestEntity({
    required String id,
    required OrderStatus status,
    required PaymentMethodUnion paymentMethod,
    required String currency,
    required double fee,
    required double providerShare,
    required int distance,
    required int duration,
    required String serviceName,
    required List<LatLngEntity> route,
    required List<PlaceEntity> waypoints,
    required List<RideOptionEntity> rideOptions,
  }) = _OrderRequestEntity;

  factory OrderRequestEntity.fromJson(Map<String, dynamic> json) => _$OrderRequestEntityFromJson(json);

  const OrderRequestEntity._();
}
