import 'package:flutter_common/core/enums/measurement_system.dart';
import 'package:generic_map/generic_map.dart';

import '../core/entities/place.dart';
import '../features/country_code_dialog/domain/entities/country_code.dart';

class Constants {
  static const String serverIp = "176.103.63.209";
  static const int resendOtpTime = 90;
  static const bool isDemoMode = false;
  static bool showTimeIn24HourFormat = true;
  static final CountryCode defaultCountry = CountryCode.parseByIso('US');

  static MapBoxProvider get mapBoxProvider => MapBoxProvider(
        secretKey: "",
        userId: "mapbox",
        tileSetId: "streets-v12",
      );
  static const PlaceEntity defaultLocation = PlaceEntity(
    coordinates: LatLngEntity(lat: 37.3875, lng: -122.0575),
    address: "1 Infinite Loop, Cupertino, CA 95014",
  );
  static const List<double> walletPresets = [10, 20, 50];
  static const MapProviderEnum defaultMapProvider = MapProviderEnum.mapBox;
  static const MeasurementSystem defaultMeasurementSystem = MeasurementSystem.metric;
}
