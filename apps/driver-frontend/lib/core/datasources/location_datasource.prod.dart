import 'dart:async';
import 'dart:io';

import 'package:driver_flutter/core/enums/location_permission.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:geolocator/geolocator.dart' as geolocator;
import 'package:rxdart/rxdart.dart';

import 'location_datasource.dart';

@prod
@LazySingleton(as: LocationDatasource)
class LocationDatasourceImpl implements LocationDatasource {
  final StreamController<DriverLocation> _locationStreamController = BehaviorSubject();

  StreamSubscription? _locationSubscription;

  @override
  Stream<DriverLocation> get driverLocation => _locationStreamController.stream.asBroadcastStream();

  @override
  void getCurrentLocation() async {
    // final currentPosition = await Location.instance.getLocation();
    final currentPosition = await geolocator.Geolocator.getCurrentPosition(
      desiredAccuracy: geolocator.LocationAccuracy.high,
    );
    _locationStreamController.add(
      DriverLocation(
        lat: currentPosition.latitude,
        lng: currentPosition.longitude,
        rotation: currentPosition.heading.toInt(),
      ),
    );
  }

  @override
  Future<bool> isLocationServiceEnabled() async {
    return Location.instance.serviceEnabled();
  }

  @override
  Future<void> startGettingLocationUpdates() async {
    if (!Platform.isMacOS) {
      Location.instance.enableBackgroundMode(enable: true);
    }
    await Location.instance.changeSettings(
      accuracy: LocationAccuracy.high,
      interval: 5000,
      distanceFilter: 10,
    );
    _locationSubscription = Location.instance.onLocationChanged.listen(
      (event) {
        _locationStreamController.add(
          DriverLocation(
            lat: event.latitude!,
            lng: event.longitude!,
            rotation: event.heading?.toInt(),
          ),
        );
      },
    );
  }

  @override
  void stopGettingLocationUpdates() {
    if (!Platform.isMacOS) {
      Location.instance.enableBackgroundMode(enable: false);
    }
    _locationSubscription?.cancel();
  }

  @override
  Future<bool> requestLocationService() async {
    return Location.instance.requestService();
  }

  @override
  Future<LocationPermission> getLocationPermissionStatus() async {
    final permission = await Location.instance.hasPermission();
    return permission.toLocationPermission();
  }

  @override
  Future<LocationPermission> requestLocationPermission() async {
    final permission = await Location.instance.requestPermission();
    return permission.toLocationPermission();
  }
}
