import 'package:driver_flutter/core/datasources/location_update_datasource.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:driver_flutter/core/datasources/location_datasource.dart';

part 'location.event.dart';
part 'location.state.dart';
part 'location.freezed.dart';
part 'location.g.dart';

@LazySingleton()
class LocationBloc extends HydratedBloc<LocationEvent, LocationState> {
  final LocationDatasource locationDatasource;
  final LocationUpdateDatasource locationUpdateDatasource;

  LocationBloc(
    this.locationDatasource,
    this.locationUpdateDatasource,
  ) : super(const LocationState.loading()) {
    on<LocationEvent>(
      (event, emit) async {
        await event.map(
          fetchCurrentLocation: (fetchCurrentLocation) async {
            locationDatasource.getCurrentLocation();
          },
          startGettingLocationUpdates: (_) async {
            locationDatasource.getCurrentLocation();
            locationDatasource.startGettingLocationUpdates();
            await emit.forEach(locationDatasource.driverLocation, onData: (onData) {
              return LocationState.determined(location: onData);
            });
          },
          stopGettingLocationUpdates: (_) async {
            locationDatasource.stopGettingLocationUpdates();
          },
          uploadDriverLocation: (_UpdateDriverLocation value) {
            locationUpdateDatasource.updateDriverLocation(location: value.location);
          },
        );
      },
    );
  }

  @override
  LocationState? fromJson(Map<String, dynamic> json) => LocationState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(LocationState state) => state.toJson();

  void fetchCurrentLocation() => add(const LocationEvent.fetchCurrentLocation());

  void startGettingLocationUpdates() => add(const LocationEvent.startGettingLocationUpdates());

  void stopGettingLocationUpdates() => add(const LocationEvent.stopGettingLocationUpdates());
}
