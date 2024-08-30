// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payout_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayoutAccountEntityImpl _$$PayoutAccountEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PayoutAccountEntityImpl(
      id: json['id'] as String,
      accountNumber: json['accountNumber'] as String?,
      routingNumber: json['routingNumber'] as String?,
      accountHolderName: json['accountHolderName'] as String?,
      bankName: json['bankName'] as String?,
      isDefault: json['isDefault'] as bool,
      accountHolderCountry: json['accountHolderCountry'] as String?,
      accountHolderCity: json['accountHolderCity'] as String?,
      accountHolderState: json['accountHolderState'] as String?,
      accountHolderAddress: json['accountHolderAddress'] as String?,
      accountHolderDateOfBirth: json['accountHolderDateOfBirth'] == null
          ? null
          : DateTime.parse(json['accountHolderDateOfBirth'] as String),
      accountHolderPhone: json['accountHolderPhone'] as String?,
      accountHolderZip: json['accountHolderZip'] as String?,
    );

Map<String, dynamic> _$$PayoutAccountEntityImplToJson(
        _$PayoutAccountEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountNumber': instance.accountNumber,
      'routingNumber': instance.routingNumber,
      'accountHolderName': instance.accountHolderName,
      'bankName': instance.bankName,
      'isDefault': instance.isDefault,
      'accountHolderCountry': instance.accountHolderCountry,
      'accountHolderCity': instance.accountHolderCity,
      'accountHolderState': instance.accountHolderState,
      'accountHolderAddress': instance.accountHolderAddress,
      'accountHolderDateOfBirth':
          instance.accountHolderDateOfBirth?.toIso8601String(),
      'accountHolderPhone': instance.accountHolderPhone,
      'accountHolderZip': instance.accountHolderZip,
    };
