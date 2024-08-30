import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';
part 'vehicle_model.g.dart';

@freezed
class VehicleModelEntity with _$VehicleModelEntity {
  const factory VehicleModelEntity({
    required String id,
    required String name,
  }) = _VehicleModelEntity;

  factory VehicleModelEntity.fromJson(Map<String, dynamic> json) => _$VehicleModelEntityFromJson(json);
}
