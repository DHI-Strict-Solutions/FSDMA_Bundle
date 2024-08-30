part of 'add_bank_transfer_payout_method_form_cubit.dart';

@freezed
class AddBankTransferPayoutMethodFormState with _$AddBankTransferPayoutMethodFormState {
  const factory AddBankTransferPayoutMethodFormState({
    String? name,
    String? payoutMethodId,
    String? accountNumber,
    String? routingNumber,
    String? bankName,
    String? accountHolderName,
    String? branchName,
    @Default(false) bool isDefault,
    String? accountHolderAddress,
    String? accountHolderCity,
    String? accountHolderState,
    String? accountHolderZip,
    String? accountHolderCountry,
    String? accountHolderPhone,
    DateTime? accountHolderDateOfBirth,
    @Default(FormSubmissionState.initial()) FormSubmissionState<PayoutAccountEntity> pageState,
  }) = _AddBankTransferPayoutMethodFormState;

  const AddBankTransferPayoutMethodFormState._();

  PayoutAccountInput get toInput {
    return PayoutAccountInput(
      name: name ?? "",
      payoutMethodId: payoutMethodId!,
      branchName: branchName,
      routingNumber: routingNumber,
      accountNumber: accountNumber!,
      accountHolderName: accountHolderName,
      bankName: bankName!,
      isDefault: isDefault,
      accountHolderState: accountHolderState,
      accountHolderCity: accountHolderCity,
      accountHolderAddress: accountHolderAddress,
      accountHolderDateOfBirth: accountHolderDateOfBirth,
      accountHolderPhone: accountHolderPhone,
      accountHolderZip: accountHolderZip,
      accountHolderCountry: accountHolderCountry,
    );
  }
}
