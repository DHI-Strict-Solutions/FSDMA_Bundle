part of 'payout_accounts.dart';

@freezed
sealed class PayoutAccountsState with _$PayoutAccountsState {
  const factory PayoutAccountsState.initial() = InitialState;
  const factory PayoutAccountsState.loading() = LoadingState;
  const factory PayoutAccountsState.loaded({
    required List<PayoutAccountEntity> linkedMethods,
  }) = LoadedState;
  const factory PayoutAccountsState.empty() = EmptyState;
  const factory PayoutAccountsState.error(String message) = ErrorState;
}

extension PayoutAccountListX on List<PayoutAccountEntity> {
  PayoutAccountEntity? get defaultPayoutAccount {
    return firstWhereOrNull((element) => element.isDefault);
  }

  List<PayoutAccountEntity> get nonDefaultPayoutAccounts {
    return where((element) => !element.isDefault).toList();
  }
}
