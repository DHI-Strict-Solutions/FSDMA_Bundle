import 'package:driver_flutter/l10n/messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/config/constants.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
export 'package:flutter_common/core/extensions/extensions.dart';

extension Translations on BuildContext {
  S get translate => S.of(this);
}

extension DateTimeX on DateTime {
  String get _formatTimeAmPm => DateFormat('hh:mm a').format(this);

  String get _formatTime24Hours => DateFormat('HH:mm').format(this);

  String get _formatDateTimeAmPm => DateFormat('dd MMM hh:mm a').format(this);

  String get _formatDateTime24Hours => DateFormat('dd MMM HH:mm').format(this);

  String get formatTime => Constants.showTimeIn24HourFormat ? _formatTime24Hours : _formatTimeAmPm;

  String get formatDateTime => Constants.showTimeIn24HourFormat ? _formatDateTime24Hours : _formatDateTimeAmPm;

  String formatDate(BuildContext context) {
    if (isToday) {
      return context.translate.today;
    }
    if (isSameDate(DateTime.now().subtract(const Duration(days: 1)))) {
      return context.translate.yesterday;
    }
    return DateFormat('dd MMM').format(this);
  }
}

extension LatLngX on LatLng {
  int distanceWith(LatLng latLng) =>
      Geolocator.distanceBetween(latitude, longitude, latLng.latitude, latLng.longitude).toInt();
}
