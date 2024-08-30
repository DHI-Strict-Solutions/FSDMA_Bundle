part of 'earnings.dart';

@freezed
class EarningsState with _$EarningsState {
  const factory EarningsState({
    required EarningsTimeFrame timeframe,
    required DateTime startDate,
    required DateTime endDate,
    required EarningsPageState pageState,
  }) = _EarningsState;

  const EarningsState._();

  bool get canGoBack => startDate.isAfter(
        DateTime.now().subtract(
          Duration(days: timeframe == EarningsTimeFrame.weekly ? 180 : 365),
        ),
      );

  bool get canGoForward => endDate.isBefore(
        DateTime.now().subtract(const Duration(days: 1)),
      );

  factory EarningsState.initial() => EarningsState(
        timeframe: EarningsTimeFrame.daily,
        startDate: DateTime.now(),
        endDate: DateTime.now().subtract(const Duration(days: 7)),
        pageState: const EarningsPageState.initial(),
      );
}

@freezed
class EarningsPageState with _$EarningsPageState {
  const factory EarningsPageState.initial() = _Initial;
  const factory EarningsPageState.loading() = _Loading;
  const factory EarningsPageState.loaded({
    required EarningsDataset dataset,
  }) = _Loaded;
  const factory EarningsPageState.empty() = _Empty;
  const factory EarningsPageState.error({
    required String errorMessage,
  }) = _Error;
}
