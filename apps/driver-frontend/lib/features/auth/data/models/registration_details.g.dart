// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationDetailsImpl _$$RegistrationDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationDetailsImpl(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      certificateNumber: json['certificateNumber'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      address: json['address'] as String?,
      vehiclePlateNumber: json['vehiclePlateNumber'] as String?,
      vehicleProductionYear: json['vehicleProductionYear'] as int?,
      vehicleModelId: json['vehicleModelId'] as String?,
      vehicleColorId: json['vehicleColorId'] as String?,
      bankName: json['bankName'] as String?,
      bankAccountNumber: json['bankAccountNumber'] as String?,
      bankSwiftCode: json['bankSwiftCode'] as String?,
      bankRoutingNumber: json['bankRoutingNumber'] as String?,
    );

Map<String, dynamic> _$$RegistrationDetailsImplToJson(
        _$RegistrationDetailsImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'certificateNumber': instance.certificateNumber,
      'mobileNumber': instance.mobileNumber,
      'address': instance.address,
      'vehiclePlateNumber': instance.vehiclePlateNumber,
      'vehicleProductionYear': instance.vehicleProductionYear,
      'vehicleModelId': instance.vehicleModelId,
      'vehicleColorId': instance.vehicleColorId,
      'bankName': instance.bankName,
      'bankAccountNumber': instance.bankAccountNumber,
      'bankSwiftCode': instance.bankSwiftCode,
      'bankRoutingNumber': instance.bankRoutingNumber,
    };
