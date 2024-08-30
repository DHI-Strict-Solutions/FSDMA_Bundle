import 'package:driver_flutter/core/graphql/fragments/point.fragment.graphql.dart';
import 'package:flutter_common/core/entities/place.dart';

extension PointFragmentX on Fragment$Point {
  LatLngEntity get toLatLngEntity => LatLngEntity(
        lat: lat,
        lng: lng,
      );
}

extension PointFragmentListX on List<Fragment$Point> {
  List<LatLngEntity> get toLatLngList => map((e) => e.toLatLngEntity).toList();
}
