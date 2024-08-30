import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/enums/driver_status.dart';
import 'package:flutter_common/core/entities/wallet.dart';
import 'package:flutter_common/core/enums/gender.dart';
import 'package:injectable/injectable.dart';
import 'package:driver_flutter/core/entities/profile.dart';

import '../error/failure.dart';
import 'profile_repository.dart';

@dev
@LazySingleton(as: ProfileRepository)
class ProfileRepositoryMock implements ProfileRepository {
  @override
  Future<Either<Failure, ProfileEntity>> getProfile() async {
    return const Right(
      ProfileEntity(
        firstName: "John",
        lastName: "Doe",
        status: DriverStatus.offline(),
        countryCode: 'US',
        number: '6505551234',
        searchRadius: 1500,
        profilePicture: null,
        email: null,
        gender: Gender.male,
        wallets: [
          WalletEntity(
            currency: 'USD',
            balance: 100,
          ),
          WalletEntity(
            currency: 'EUR',
            balance: 200,
          ),
        ],
        orders: [],
      ),
    );
  }

  @override
  Future<Either<Failure, ProfileEntity>> updateRadius({
    required int? radius,
  }) async {
    return Right(
      ProfileEntity.testProfile.copyWith(
        searchRadius: radius,
      ),
    );
  }

  @override
  Future<Either<Failure, void>> deleteAccount() async {
    await Future.delayed(const Duration(seconds: 1));
    return const Right(null);
  }
}
