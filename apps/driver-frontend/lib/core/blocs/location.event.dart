part of 'location.dart';

@freezed
abstract class LocationEvent with _$LocationEvent {
  const factory LocationEvent.fetchCurrentLocation() = _FetchCurrentLocation;
  const factory LocationEvent.startGettingLocationUpdates() = _StartGettingLocationUpdates;
  const factory LocationEvent.stopGettingLocationUpdates() = _StopGettingLocationUpdates;
  const factory LocationEvent.uploadDriverLocation({required DriverLocation location}) = _UpdateDriverLocation;
}
