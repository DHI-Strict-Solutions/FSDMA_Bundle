import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/datasources/location_update_datasource.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:flutter_common/core/entities/driver_location.dart';
import 'package:injectable/injectable.dart';

@dev
@LazySingleton(as: LocationUpdateDatasource)
class LocationUpdateDatasourceMock implements LocationUpdateDatasource {
  @override
  Future<Either<Failure, bool>> updateDriverLocation({required DriverLocation location}) async {
    return const Right(true);
  }
}
