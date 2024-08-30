import 'dart:async';

import 'package:driver_flutter/core/enums/location_permission.dart';
import 'package:flutter_common/core/entities/driver_location.dart';

abstract class LocationDatasource {
  final _controller = StreamController<DriverLocation>();

  Stream<DriverLocation> get driverLocation => _controller.stream.asBroadcastStream();

  Future<LocationPermission> getLocationPermissionStatus();
  Future<bool> isLocationServiceEnabled();
  Future<LocationPermission> requestLocationPermission();
  Future<bool> requestLocationService();
  void getCurrentLocation();
  Future<void> startGettingLocationUpdates();
  void stopGettingLocationUpdates();
}
