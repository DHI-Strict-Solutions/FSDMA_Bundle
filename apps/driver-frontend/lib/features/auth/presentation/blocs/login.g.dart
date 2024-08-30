// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginStateImpl _$$LoginStateImplFromJson(Map<String, dynamic> json) =>
    _$LoginStateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      errorMessage: json['errorMessage'] as String?,
      loginPage: json['loginPage'] == null
          ? const LoginPage.enterNumber()
          : LoginPage.fromJson(json['loginPage'] as Map<String, dynamic>),
      countryCode: json['countryCode'] == null
          ? null
          : CountryCode.fromJson(json['countryCode'] as Map<String, dynamic>),
      verificationHash: json['verificationHash'] as String?,
      jwtToken: json['jwtToken'] as String?,
      currentPassword: json['currentPassword'] as String?,
      newPassword: json['newPassword'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      vehicleModels: (json['vehicleModels'] as List<dynamic>?)
              ?.map(
                  (e) => VehicleModelEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      vehicleColors: (json['vehicleColors'] as List<dynamic>?)
              ?.map(
                  (e) => VehicleColorEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      profileFullEntity: json['profileFullEntity'] == null
          ? null
          : ProfileFullEntity.fromJson(
              json['profileFullEntity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginStateImplToJson(_$LoginStateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'errorMessage': instance.errorMessage,
      'loginPage': instance.loginPage,
      'countryCode': instance.countryCode,
      'verificationHash': instance.verificationHash,
      'jwtToken': instance.jwtToken,
      'currentPassword': instance.currentPassword,
      'newPassword': instance.newPassword,
      'mobileNumber': instance.mobileNumber,
      'vehicleModels': instance.vehicleModels,
      'vehicleColors': instance.vehicleColors,
      'profileFullEntity': instance.profileFullEntity,
    };
