import 'package:driver_flutter/core/entities/profile_full.dart';
import 'package:driver_flutter/core/entities/vehicle_color.dart';
import 'package:driver_flutter/core/entities/vehicle_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_remote_data.freezed.dart';
part 'registration_remote_data.g.dart';

@freezed
class RegistrationRemoteData with _$RegistrationRemoteData {
  const factory RegistrationRemoteData({
    required ProfileFullEntity profile,
    required List<VehicleModelEntity> vehicleModels,
    required List<VehicleColorEntity> vehicleColors,
  }) = _RegistrationRemoteData;

  factory RegistrationRemoteData.fromJson(Map<String, dynamic> json) => _$RegistrationRemoteDataFromJson(json);
}
