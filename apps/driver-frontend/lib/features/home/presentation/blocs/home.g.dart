// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeStateImpl _$$HomeStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeStateImpl(
      driverLocation: json['driverLocation'] == null
          ? null
          : DriverLocation.fromJson(
              json['driverLocation'] as Map<String, dynamic>),
      lastLocationUpdate: json['lastLocationUpdate'] == null
          ? null
          : DateTime.parse(json['lastLocationUpdate'] as String),
      error: json['error'] == null
          ? null
          : Failure.fromJson(json['error'] as Map<String, dynamic>),
      driverStatus: json['driverStatus'] == null
          ? const HomeStateDriverStatus.initial()
          : HomeStateDriverStatus.fromJson(
              json['driverStatus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeStateImplToJson(_$HomeStateImpl instance) =>
    <String, dynamic>{
      'driverLocation': instance.driverLocation,
      'lastLocationUpdate': instance.lastLocationUpdate?.toIso8601String(),
      'error': instance.error,
      'driverStatus': instance.driverStatus,
    };

_$OverviewImpl _$$OverviewImplFromJson(Map<String, dynamic> json) =>
    _$OverviewImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OverviewImplToJson(_$OverviewImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ChatImpl _$$ChatImplFromJson(Map<String, dynamic> json) => _$ChatImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ChatImplToJson(_$ChatImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$RateImpl _$$RateImplFromJson(Map<String, dynamic> json) => _$RateImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RateImplToJson(_$RateImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$InitialDriverStatusImpl _$$InitialDriverStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$InitialDriverStatusImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InitialDriverStatusImplToJson(
        _$InitialDriverStatusImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LoadingDriverStatusImpl _$$LoadingDriverStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$LoadingDriverStatusImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingDriverStatusImplToJson(
        _$LoadingDriverStatusImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$OnlineDriverStatusImpl _$$OnlineDriverStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$OnlineDriverStatusImpl(
      orderRequests: (json['orderRequests'] as List<dynamic>)
          .map((e) => OrderRequestEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentOrderRequest: json['currentOrderRequest'] == null
          ? null
          : OrderRequestEntity.fromJson(
              json['currentOrderRequest'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OnlineDriverStatusImplToJson(
        _$OnlineDriverStatusImpl instance) =>
    <String, dynamic>{
      'orderRequests': instance.orderRequests,
      'currentOrderRequest': instance.currentOrderRequest,
      'runtimeType': instance.$type,
    };

_$OfflineDriverStatusImpl _$$OfflineDriverStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$OfflineDriverStatusImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OfflineDriverStatusImplToJson(
        _$OfflineDriverStatusImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$OnTripDriverStatusImpl _$$OnTripDriverStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$OnTripDriverStatusImpl(
      order: OrderEntity.fromJson(json['order'] as Map<String, dynamic>),
      page: json['page'] == null
          ? const OnTripPage.overview()
          : OnTripPage.fromJson(json['page'] as Map<String, dynamic>),
      driverLocation: json['driverLocation'] == null
          ? null
          : DriverLocation.fromJson(
              json['driverLocation'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : Failure.fromJson(json['error'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OnTripDriverStatusImplToJson(
        _$OnTripDriverStatusImpl instance) =>
    <String, dynamic>{
      'order': instance.order,
      'page': instance.page,
      'driverLocation': instance.driverLocation,
      'error': instance.error,
      'runtimeType': instance.$type,
    };

_$AccessDeniedDriverStatusImpl _$$AccessDeniedDriverStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$AccessDeniedDriverStatusImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AccessDeniedDriverStatusImplToJson(
        _$AccessDeniedDriverStatusImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
