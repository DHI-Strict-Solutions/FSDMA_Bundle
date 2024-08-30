import 'package:dartz/dartz.dart';

import '../entities/profile.dart';
import '../error/failure.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileEntity>> getProfile();

  Future<Either<Failure, ProfileEntity>> updateRadius({
    required int? radius,
  });

  Future<Either<Failure, void>> deleteAccount();
}
