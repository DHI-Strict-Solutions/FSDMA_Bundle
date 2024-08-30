import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';

@freezed
class ReviewEntity with _$ReviewEntity {
  const factory ReviewEntity({
    required String serviceName,
    required String description,
    required double rating,
    required List<String> goodPoints,
  }) = _ReviewEntity;
}
