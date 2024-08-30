// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_remote_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationRemoteDataImpl _$$RegistrationRemoteDataImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationRemoteDataImpl(
      profile:
          ProfileFullEntity.fromJson(json['profile'] as Map<String, dynamic>),
      vehicleModels: (json['vehicleModels'] as List<dynamic>)
          .map((e) => VehicleModelEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      vehicleColors: (json['vehicleColors'] as List<dynamic>)
          .map((e) => VehicleColorEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RegistrationRemoteDataImplToJson(
        _$RegistrationRemoteDataImpl instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'vehicleModels': instance.vehicleModels,
      'vehicleColors': instance.vehicleColors,
    };
