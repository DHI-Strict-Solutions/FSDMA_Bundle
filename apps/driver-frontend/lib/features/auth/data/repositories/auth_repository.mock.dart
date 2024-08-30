import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/entities/profile.dart';
import 'package:driver_flutter/core/entities/profile_full.dart';
import 'package:driver_flutter/core/entities/vehicle_color.dart';
import 'package:driver_flutter/core/entities/vehicle_model.dart';
import 'package:driver_flutter/core/enums/driver_status.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:driver_flutter/features/auth/domain/entities/registration_remote_data.dart';
import 'package:driver_flutter/features/auth/domain/entities/verify_number_response.dart';
import 'package:flutter_common/core/enums/gender.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/verify_otp_response.dart';
import '../../domain/repositories/auth_repository.dart';

@dev
@LazySingleton(as: AuthRepository)
class AuthRepositoryMock implements AuthRepository {
  @override
  Future<Either<Failure, VerifyNumberResponse>> resendOtp(String mobileNumber) async {
    await Future.delayed(const Duration(seconds: 1));
    return const Right(VerifyNumberResponse(isExistingUser: true, hash: 'hash'));
  }

  @override
  Future<Either<Failure, bool>> setPassword(String password) async {
    await Future.delayed(const Duration(seconds: 1));
    return const Right(true);
  }

  @override
  Future<Either<Failure, ProfileEntity>> updateProfile(
      {required String firstName, required String lastName, required Gender gender}) async {
    await Future.delayed(const Duration(seconds: 1));
    return Right(
      ProfileEntity.testProfile,
    );
  }

  @override
  Future<Either<Failure, VerifyNumberResponse>> verifyNumber({
    required String mobileNumber,
    required String countryIsoCode,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return const Right(VerifyNumberResponse(isExistingUser: false, hash: 'hash'));
  }

  @override
  Future<Either<Failure, VerifyOtpResponse>> verifyOtp(String hash, String otp) async {
    await Future.delayed(const Duration(seconds: 1));
    return Right(
      VerifyOtpResponse(
        driverFullProfile: ProfileFullEntity.testData.copyWith(
          status: const DriverStatus.pendingSubmission(),
        ),
        hasPassword: false,
        jwtToken: 'token',
      ),
    );
  }

  @override
  Future<Either<Failure, VerifyOtpResponse>> verifyPassword(String mobileNumber, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    return Right(VerifyOtpResponse(
      driverFullProfile: ProfileFullEntity.testData.copyWith(
        status: const DriverStatus.pendingSubmission(),
      ),
      hasPassword: false,
      jwtToken: 'token',
    ));
  }

  @override
  Future<Either<Failure, RegistrationRemoteData>> getRegistrationData() async {
    await Future.delayed(const Duration(seconds: 1));
    return Right(
      RegistrationRemoteData(
        profile: ProfileFullEntity.testData,
        vehicleColors: const [
          VehicleColorEntity(id: "1", name: "White"),
          VehicleColorEntity(id: "2", name: "Black"),
          VehicleColorEntity(id: "3", name: "Red"),
          VehicleColorEntity(id: "4", name: "Blue"),
          VehicleColorEntity(id: "5", name: "Green"),
          VehicleColorEntity(id: "6", name: "Yellow"),
          VehicleColorEntity(id: "7", name: "Orange"),
          VehicleColorEntity(id: "8", name: "Purple"),
          VehicleColorEntity(id: "9", name: "Gray"),
          VehicleColorEntity(id: "10", name: "Brown"),
          VehicleColorEntity(id: "11", name: "Silver"),
          VehicleColorEntity(id: "12", name: "Gold"),
          VehicleColorEntity(id: "13", name: "Pink"),
          VehicleColorEntity(id: "14", name: "Cyan"),
          VehicleColorEntity(id: "15", name: "Magenta"),
        ],
        vehicleModels: const [
          VehicleModelEntity(
            id: "1",
            name: "Tesla Model 3",
          ),
          VehicleModelEntity(
            id: "2",
            name: "Tesla Model S",
          ),
          VehicleModelEntity(
            id: "3",
            name: "BMW i4",
          ),
          VehicleModelEntity(
            id: "4",
            name: "BMW iX",
          ),
          VehicleModelEntity(
            id: "5",
            name: "BMW iX3",
          ),
          VehicleModelEntity(
            id: "6",
            name: "BMW i3",
          ),
        ],
      ),
    );
  }

  @override
  Future<Either<Failure, ProfileEntity>> register({
    required ProfileFullEntity profile,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return Right(ProfileEntity.testProfile);
  }
}
