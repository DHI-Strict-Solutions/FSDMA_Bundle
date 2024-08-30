part of 'earnings_dataset.dart';

@freezed
class EarningsDatapoint with _$EarningsDatapoint {
  const factory EarningsDatapoint({
    required String title,
    required double earnings,
    required int rides,
    required int timeSpent,
    required int distanceTraveled,
  }) = _EarningsDatapoint;
}
