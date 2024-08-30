// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_full.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileFullEntityImpl _$$ProfileFullEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileFullEntityImpl(
      id: json['id'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      status: DriverStatus.fromJson(json['status'] as Map<String, dynamic>),
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      certificateNumber: json['certificateNumber'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      searchDistance: json['searchDistance'] as int?,
      vehiclePlateNumber: json['vehiclePlateNumber'] as String?,
      vehicleProductionYear: json['vehicleProductionYear'] as int?,
      vehicleModelId: json['vehicleModelId'] as String?,
      vehicleColorId: json['vehicleColorId'] as String?,
      bankName: json['bankName'] as String?,
      bankAccountNumber: json['bankAccountNumber'] as String?,
      bankSwiftCode: json['bankSwiftCode'] as String?,
      bankRoutingNumber: json['bankRoutingNumber'] as String?,
      profilePicture: json['profilePicture'] == null
          ? null
          : MediaEntity.fromJson(
              json['profilePicture'] as Map<String, dynamic>),
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => MediaEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProfileFullEntityImplToJson(
        _$ProfileFullEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'mobileNumber': instance.mobileNumber,
      'status': instance.status,
      'gender': _$GenderEnumMap[instance.gender],
      'certificateNumber': instance.certificateNumber,
      'email': instance.email,
      'address': instance.address,
      'searchDistance': instance.searchDistance,
      'vehiclePlateNumber': instance.vehiclePlateNumber,
      'vehicleProductionYear': instance.vehicleProductionYear,
      'vehicleModelId': instance.vehicleModelId,
      'vehicleColorId': instance.vehicleColorId,
      'bankName': instance.bankName,
      'bankAccountNumber': instance.bankAccountNumber,
      'bankSwiftCode': instance.bankSwiftCode,
      'bankRoutingNumber': instance.bankRoutingNumber,
      'profilePicture': instance.profilePicture,
      'documents': instance.documents,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.unknown: 'unknown',
};
