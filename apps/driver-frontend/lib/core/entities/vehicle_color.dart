import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_color.freezed.dart';
part 'vehicle_color.g.dart';

@freezed
class VehicleColorEntity with _$VehicleColorEntity {
  const factory VehicleColorEntity({
    required String id,
    required String name,
  }) = _VehicleColorEntity;

  factory VehicleColorEntity.fromJson(Map<String, dynamic> json) => _$VehicleColorEntityFromJson(json);
}
