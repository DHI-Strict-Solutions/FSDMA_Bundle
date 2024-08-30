import 'dart:async';

import 'package:driver_flutter/core/enums/location_permission.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'location_datasource.dart';

@dev
@LazySingleton(as: LocationDatasource)
class LocationDatasourceImpl implements LocationDatasource {
  final StreamController<DriverLocation> _locationStreamController = BehaviorSubject();

  @override
  Stream<DriverLocation> get driverLocation => _locationStreamController.stream.asBroadcastStream();

  @override
  void getCurrentLocation() async {
    _locationStreamController.add(
      const DriverLocation(
        lat: 37.384135,
        lng: -122.067976,
        rotation: 65,
      ),
    );
  }

  @override
  Future<bool> isLocationServiceEnabled() async {
    return true;
  }

  @override
  Future<void> startGettingLocationUpdates() async {
    return _locationStreamController.add(const DriverLocation(lat: 37.384135, lng: -122.067976, rotation: 90));
  }

  @override
  void stopGettingLocationUpdates() {
    _locationStreamController.close();
  }

  @override
  Future<LocationPermission> getLocationPermissionStatus() async {
    return LocationPermission.always;
  }

  @override
  Future<LocationPermission> requestLocationPermission() async {
    return LocationPermission.always;
  }

  @override
  Future<bool> requestLocationService() async {
    return true;
  }
}
