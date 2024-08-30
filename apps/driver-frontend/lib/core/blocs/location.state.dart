part of 'location.dart';

@Freezed(fromJson: true)
class LocationState with _$LocationState {
  const factory LocationState.loading() = _Loading;

  const factory LocationState.error({
    required LocationError error,
  }) = _Error;

  const factory LocationState.determined({
    required DriverLocation location,
  }) = _Determined;

  factory LocationState.fromJson(Map<String, dynamic> json) => _$LocationStateFromJson(json);

  const LocationState._();
}

enum LocationError { permissionDenied, serviceDisabled }
