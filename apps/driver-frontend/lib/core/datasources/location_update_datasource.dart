import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:flutter_common/core/entities/driver_location.dart';

abstract class LocationUpdateDatasource {
  Future<Either<Failure, bool>> updateDriverLocation({required DriverLocation location});
}
