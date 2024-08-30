part of 'payout_methods.dart';

@freezed
sealed class PayoutMethodsState with _$PayoutMethodsState {
  const factory PayoutMethodsState.initial() = InitialState;
  const factory PayoutMethodsState.loading() = LoadingState;
  const factory PayoutMethodsState.empty() = EmptyState;
  const factory PayoutMethodsState.loaded(List<PayoutMethodEntity> payoutMethods) = LoadedState;
  const factory PayoutMethodsState.error(String message) = ErrorState;
}
