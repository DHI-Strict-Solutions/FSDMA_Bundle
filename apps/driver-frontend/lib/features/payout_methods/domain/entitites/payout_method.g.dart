// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payout_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayoutMethodEntityImpl _$$PayoutMethodEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PayoutMethodEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      linkMethod: $enumDecode(_$GatewayLinkMethodEnumMap, json['linkMethod']),
      media: json['media'] == null
          ? null
          : MediaEntity.fromJson(json['media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PayoutMethodEntityImplToJson(
        _$PayoutMethodEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'linkMethod': _$GatewayLinkMethodEnumMap[instance.linkMethod]!,
      'media': instance.media,
    };

const _$GatewayLinkMethodEnumMap = {
  GatewayLinkMethod.none: 'none',
  GatewayLinkMethod.redirect: 'redirect',
  GatewayLinkMethod.manual: 'manual',
};
