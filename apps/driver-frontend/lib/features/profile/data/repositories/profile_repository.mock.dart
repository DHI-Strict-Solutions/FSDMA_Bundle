import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/enums/driver_status.dart';
import 'package:driver_flutter/features/profile/data/models/feedbacks_summary.dart';
import 'package:flutter_common/core/entities/media.dart';
import 'package:flutter_common/core/enums/gender.dart';
import 'package:injectable/injectable.dart';
import 'package:driver_flutter/core/entities/profile.dart';
import 'package:driver_flutter/core/error/failure.dart';
import 'package:driver_flutter/features/profile/data/models/profile_aggregations_info.dart';
import 'package:driver_flutter/features/profile/domain/repositories/profile_repository.dart';

import '../../domain/entities/review.dart';

@dev
@LazySingleton(as: ProfileRepository)
class ProfileRepositoryMock implements ProfileRepository {
  @override
  Future<Either<Failure, ProfileAggregationsInfo>> getProfileAggregationsInfo() async {
    return const Right(
      ProfileAggregationsInfo(
        totalRides: 432,
        totalDistance: 123,
        rating: 95,
      ),
    );
  }

  @override
  Future<Either<Failure, ProfileEntity>> uploadProfileImage({required MediaEntity image}) async {
    await Future.delayed(const Duration(seconds: 1));
    return const Right(
      ProfileEntity(
        firstName: "John",
        lastName: "Doe",
        countryCode: "US",
        profilePicture: null,
        wallets: [],
        orders: [],
        searchRadius: 1500,
        number: '6505551234',
        email: "john@doe.com",
        gender: Gender.male,
        status: DriverStatus.online(),
      ),
    );
  }

  @override
  Future<Either<Failure, FeedbacksSummary>> getFeedbacksSummary() async {
    return const Right(
      FeedbacksSummary(
        averageRating: 4.2,
        goodPoints: ["Great vehicle condition", "Good routing"],
        badPoints: ["Unsafe driving"],
        goodReviews: [
          ReviewEntity(
            rating: 5,
            goodPoints: [
              "Great vehicle condition",
              "Good routing",
              "Polite",
            ],
            serviceName: 'Economy',
            description: 'Excellence driving and a very good car condition one of the best rides I have ever had',
          ),
          ReviewEntity(
            rating: 5,
            goodPoints: [
              "Great vehicle condition",
              "Good routing",
              "Polite",
            ],
            serviceName: 'Economy',
            description: 'Excellence driving and a very good car condition one of the best rides I have ever had',
          ),
        ],
      ),
    );
  }
}
