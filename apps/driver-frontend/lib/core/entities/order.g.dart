// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderEntityImpl _$$OrderEntityImplFromJson(Map<String, dynamic> json) =>
    _$OrderEntityImpl(
      id: json['id'] as String,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      expextedAt: DateTime.parse(json['expextedAt'] as String),
      startAt: json['startAt'] == null
          ? null
          : DateTime.parse(json['startAt'] as String),
      finishAt: json['finishAt'] == null
          ? null
          : DateTime.parse(json['finishAt'] as String),
      etaPickupAt: json['etaPickupAt'] == null
          ? null
          : DateTime.parse(json['etaPickupAt'] as String),
      lastSeenMessagesAt: DateTime.parse(json['lastSeenMessagesAt'] as String),
      destinationArrivedTo: json['destinationArrivedTo'] as int?,
      providerShare: (json['providerShare'] as num).toDouble(),
      currency: json['currency'] as String,
      waypoints: (json['waypoints'] as List<dynamic>)
          .map((e) => PlaceEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      waitMinutes: json['waitMinutes'] as int,
      waitCost: (json['waitCost'] as num).toDouble(),
      rideOptionsCost: (json['rideOptionsCost'] as num).toDouble(),
      taxCost: (json['taxCost'] as num).toDouble(),
      serviceCost: (json['serviceCost'] as num).toDouble(),
      costBest: (json['costBest'] as num).toDouble(),
      costAfterCoupon: (json['costAfterCoupon'] as num).toDouble(),
      paymentMode: $enumDecode(_$PaymentModeEnumMap, json['paymentMode']),
      durationBest: json['durationBest'] as int,
      distanceBest: json['distanceBest'] as int,
      rideDirections: (json['rideDirections'] as List<dynamic>)
          .map((e) => LatLngEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      driverDirections: (json['driverDirections'] as List<dynamic>)
          .map((e) => LatLngEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      rideOptions: (json['rideOptions'] as List<dynamic>)
          .map((e) => RideOptionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      riderFirstName: json['riderFirstName'] as String?,
      riderLastName: json['riderLastName'] as String?,
      riderPhoneNumber: json['riderPhoneNumber'] as String,
      riderPhotoUrl: json['riderPhotoUrl'] as String?,
      riderPresetPhotoId: json['riderPresetPhotoId'] as int?,
      serviceName: json['serviceName'] as String,
      cashPaymentAllowed: json['cashPaymentAllowed'] as bool,
      chatMessages: (json['chatMessages'] as List<dynamic>)
          .map((e) => ChatMessageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderEntityImplToJson(_$OrderEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'expextedAt': instance.expextedAt.toIso8601String(),
      'startAt': instance.startAt?.toIso8601String(),
      'finishAt': instance.finishAt?.toIso8601String(),
      'etaPickupAt': instance.etaPickupAt?.toIso8601String(),
      'lastSeenMessagesAt': instance.lastSeenMessagesAt.toIso8601String(),
      'destinationArrivedTo': instance.destinationArrivedTo,
      'providerShare': instance.providerShare,
      'currency': instance.currency,
      'waypoints': instance.waypoints,
      'waitMinutes': instance.waitMinutes,
      'waitCost': instance.waitCost,
      'rideOptionsCost': instance.rideOptionsCost,
      'taxCost': instance.taxCost,
      'serviceCost': instance.serviceCost,
      'costBest': instance.costBest,
      'costAfterCoupon': instance.costAfterCoupon,
      'paymentMode': _$PaymentModeEnumMap[instance.paymentMode]!,
      'durationBest': instance.durationBest,
      'distanceBest': instance.distanceBest,
      'rideDirections': instance.rideDirections,
      'driverDirections': instance.driverDirections,
      'rideOptions': instance.rideOptions,
      'riderFirstName': instance.riderFirstName,
      'riderLastName': instance.riderLastName,
      'riderPhoneNumber': instance.riderPhoneNumber,
      'riderPhotoUrl': instance.riderPhotoUrl,
      'riderPresetPhotoId': instance.riderPresetPhotoId,
      'serviceName': instance.serviceName,
      'cashPaymentAllowed': instance.cashPaymentAllowed,
      'chatMessages': instance.chatMessages,
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

const _$PaymentModeEnumMap = {
  PaymentMode.paymentGateway: 'paymentGateway',
  PaymentMode.savedPaymentMethod: 'savedPaymentMethod',
  PaymentMode.cash: 'cash',
  PaymentMode.wallet: 'wallet',
};
