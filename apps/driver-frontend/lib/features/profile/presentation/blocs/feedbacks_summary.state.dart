part of 'feedbacks_summary.dart';

@freezed
class FeedbacksSummaryState with _$FeedbacksSummaryState {
  const factory FeedbacksSummaryState.initial() = _Initial;
  const factory FeedbacksSummaryState.loading() = _Loading;
  const factory FeedbacksSummaryState.loaded({
    required FeedbacksSummary summary,
  }) = _Loaded;
  const factory FeedbacksSummaryState.empty() = _Empty;
  const factory FeedbacksSummaryState.error({
    required String errorMessage,
  }) = _Error;
}
