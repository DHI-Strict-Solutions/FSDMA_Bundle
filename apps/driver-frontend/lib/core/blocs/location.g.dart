// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoadingImpl _$$LoadingImplFromJson(Map<String, dynamic> json) =>
    _$LoadingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingImplToJson(_$LoadingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ErrorImpl _$$ErrorImplFromJson(Map<String, dynamic> json) => _$ErrorImpl(
      error: $enumDecode(_$LocationErrorEnumMap, json['error']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorImplToJson(_$ErrorImpl instance) =>
    <String, dynamic>{
      'error': _$LocationErrorEnumMap[instance.error]!,
      'runtimeType': instance.$type,
    };

const _$LocationErrorEnumMap = {
  LocationError.permissionDenied: 'permissionDenied',
  LocationError.serviceDisabled: 'serviceDisabled',
};

_$DeterminedImpl _$$DeterminedImplFromJson(Map<String, dynamic> json) =>
    _$DeterminedImpl(
      location:
          DriverLocation.fromJson(json['location'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DeterminedImplToJson(_$DeterminedImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'runtimeType': instance.$type,
    };
