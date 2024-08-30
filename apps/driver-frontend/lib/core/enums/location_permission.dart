import 'package:location/location.dart';

enum LocationPermission { denied, deniedForever, whileInUse, always }

extension PermissionStatusX on PermissionStatus {
  LocationPermission toLocationPermission() {
    switch (this) {
      case PermissionStatus.denied:
        return LocationPermission.denied;

      case PermissionStatus.deniedForever:
        return LocationPermission.deniedForever;

      case PermissionStatus.granted:
      case PermissionStatus.grantedLimited:
        return LocationPermission.always;
    }
  }
}
