import 'package:dartz/dartz.dart';
import 'package:flutter_common/core/entities/media.dart';
import 'package:driver_flutter/core/entities/profile.dart';
import 'package:driver_flutter/core/error/failure.dart';

import '../../data/models/feedbacks_summary.dart';
import '../../data/models/profile_aggregations_info.dart';

abstract class ProfileRepository {
  Future<Either<Failure, ProfileAggregationsInfo>> getProfileAggregationsInfo();

  Future<Either<Failure, ProfileEntity>> uploadProfileImage({
    required MediaEntity image,
  });

  Future<Either<Failure, FeedbacksSummary>> getFeedbacksSummary();
}
