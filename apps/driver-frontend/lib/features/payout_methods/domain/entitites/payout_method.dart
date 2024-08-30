import 'package:flutter_common/core/entities/media.dart';
import 'package:flutter_common/core/enums/gateway_link_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payout_method.freezed.dart';
part 'payout_method.g.dart';

@freezed
class PayoutMethodEntity with _$PayoutMethodEntity {
  const factory PayoutMethodEntity({
    required String id,
    required String name,
    required GatewayLinkMethod linkMethod,
    required MediaEntity? media,
  }) = _PayoutMethodEntity;

  const PayoutMethodEntity._();

  factory PayoutMethodEntity.fromJson(Map<String, dynamic> json) => _$PayoutMethodEntityFromJson(json);
}
