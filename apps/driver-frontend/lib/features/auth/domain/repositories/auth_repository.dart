import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/entities/profile.dart';
import 'package:driver_flutter/core/entities/profile_full.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:driver_flutter/features/auth/domain/entities/registration_remote_data.dart';
import 'package:flutter_common/core/enums/gender.dart';

import '../entities/verify_number_response.dart';
import '../entities/verify_otp_response.dart';

abstract class AuthRepository {
  Future<Either<Failure, VerifyNumberResponse>> verifyNumber({
    required String mobileNumber,
    required String countryIsoCode,
  });

  Future<Either<Failure, VerifyOtpResponse>> verifyOtp(
    String hash,
    String otp,
  );

  Future<Either<Failure, VerifyOtpResponse>> verifyPassword(
    String mobileNumber,
    String password,
  );

  Future<Either<Failure, bool>> setPassword(
    String password,
  );

  Future<Either<Failure, RegistrationRemoteData>> getRegistrationData();

  Future<Either<Failure, VerifyNumberResponse>> resendOtp(
    String mobileNumber,
  );

  Future<Either<Failure, ProfileEntity>> updateProfile({
    required String firstName,
    required String lastName,
    required Gender gender,
  });

  Future<Either<Failure, ProfileEntity>> register({
    required ProfileFullEntity profile,
  });
}
