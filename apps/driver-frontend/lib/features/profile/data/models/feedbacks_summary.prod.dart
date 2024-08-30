import 'package:driver_flutter/core/graphql/documents/profile.graphql.dart';

import '../../domain/entities/review.dart';
import 'feedbacks_summary.dart';

extension FeedbacksSummaryGql on Query$FeedbacksSummary {
  FeedbacksSummary get toEntity {
    return FeedbacksSummary(
        averageRating: feedbacksSummary.averageRating,
        goodPoints: feedbacksSummary.goodPoints,
        badPoints: feedbacksSummary.badPoints,
        goodReviews: feedbacksSummary.goodReviews.map((e) => e.toEntity).toList());
  }
}

extension ReviewGqlX on Query$FeedbacksSummary$feedbacksSummary$goodReviews {
  ReviewEntity get toEntity {
    return ReviewEntity(
      serviceName: serviceName,
      rating: rating,
      goodPoints: goodPoints,
      description: review,
    );
  }
}
