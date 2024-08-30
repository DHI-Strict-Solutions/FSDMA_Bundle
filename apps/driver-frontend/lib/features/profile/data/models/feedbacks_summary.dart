import 'package:driver_flutter/features/profile/domain/entities/review.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedbacks_summary.freezed.dart';

@freezed
class FeedbacksSummary with _$FeedbacksSummary {
  const factory FeedbacksSummary({
    required double? averageRating,
    required List<String> goodPoints,
    required List<String> badPoints,
    required List<ReviewEntity> goodReviews,
  }) = _FeedbacksSummary;
}
