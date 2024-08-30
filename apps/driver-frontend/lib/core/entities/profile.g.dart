// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileEntityImpl _$$ProfileEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProfileEntityImpl(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      status: DriverStatus.fromJson(json['status'] as Map<String, dynamic>),
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      email: json['email'] as String?,
      countryCode: json['countryCode'] as String?,
      profilePicture: json['profilePicture'] == null
          ? null
          : MediaEntity.fromJson(
              json['profilePicture'] as Map<String, dynamic>),
      number: json['number'] as String,
      searchRadius: json['searchRadius'] as int?,
      wallets: (json['wallets'] as List<dynamic>)
          .map((e) => WalletEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      orders: (json['orders'] as List<dynamic>)
          .map((e) => OrderEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProfileEntityImplToJson(_$ProfileEntityImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'status': instance.status,
      'gender': _$GenderEnumMap[instance.gender],
      'email': instance.email,
      'countryCode': instance.countryCode,
      'profilePicture': instance.profilePicture,
      'number': instance.number,
      'searchRadius': instance.searchRadius,
      'wallets': instance.wallets,
      'orders': instance.orders,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.unknown: 'unknown',
};
