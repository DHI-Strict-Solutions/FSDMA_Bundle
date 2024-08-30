import 'package:driver_flutter/core/entities/vehicle_model.dart';
import 'package:driver_flutter/core/graphql/fragments/vehicle_model.fragment.graphql.dart';

extension VehicleModelGqlX on Fragment$VehicleModel {
  VehicleModelEntity get toEntity {
    return VehicleModelEntity(
      id: id,
      name: name,
    );
  }
}
