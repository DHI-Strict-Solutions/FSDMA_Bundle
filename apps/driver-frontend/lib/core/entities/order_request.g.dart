// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderRequestEntityImpl _$$OrderRequestEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderRequestEntityImpl(
      id: json['id'] as String,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      paymentMethod: PaymentMethodUnion.fromJson(
          json['paymentMethod'] as Map<String, dynamic>),
      currency: json['currency'] as String,
      fee: (json['fee'] as num).toDouble(),
      providerShare: (json['providerShare'] as num).toDouble(),
      distance: json['distance'] as int,
      duration: json['duration'] as int,
      serviceName: json['serviceName'] as String,
      route: (json['route'] as List<dynamic>)
          .map((e) => LatLngEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      waypoints: (json['waypoints'] as List<dynamic>)
          .map((e) => PlaceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      rideOptions: (json['rideOptions'] as List<dynamic>)
          .map((e) => RideOptionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderRequestEntityImplToJson(
        _$OrderRequestEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'paymentMethod': instance.paymentMethod,
      'currency': instance.currency,
      'fee': instance.fee,
      'providerShare': instance.providerShare,
      'distance': instance.distance,
      'duration': instance.duration,
      'serviceName': instance.serviceName,
      'route': instance.route,
      'waypoints': instance.waypoints,
      'rideOptions': instance.rideOptions,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.requested: 'requested',
  OrderStatus.notFound: 'notFound',
  OrderStatus.noCloseFound: 'noCloseFound',
  OrderStatus.found: 'found',
  OrderStatus.driverAccepted: 'driverAccepted',
  OrderStatus.arrived: 'arrived',
  OrderStatus.waitingForPrePay: 'waitingForPrePay',
  OrderStatus.driverCanceled: 'driverCanceled',
  OrderStatus.riderCanceled: 'riderCanceled',
  OrderStatus.started: 'started',
  OrderStatus.waitingForPostPay: 'waitingForPostPay',
  OrderStatus.waitingForReview: 'waitingForReview',
  OrderStatus.finished: 'finished',
  OrderStatus.booked: 'booked',
  OrderStatus.expired: 'expired',
};
