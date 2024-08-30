import 'package:driver_flutter/core/entities/vehicle_color.dart';
import 'package:driver_flutter/core/graphql/fragments/vehicle_color.fragment.graphql.dart';

extension VehicleColorGqlX on Fragment$VehicleColor {
  VehicleColorEntity get toEntity {
    return VehicleColorEntity(
      id: id,
      name: name,
    );
  }
}
