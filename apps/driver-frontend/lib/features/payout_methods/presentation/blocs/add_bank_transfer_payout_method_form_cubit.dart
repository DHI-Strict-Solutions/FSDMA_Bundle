import 'package:driver_flutter/features/payout_methods/domain/repositories/payout_methods_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:driver_flutter/core/entities/page_network_single_state.dart';
import 'package:driver_flutter/features/payout_methods/domain/entitites/payout_account.dart';
import 'package:driver_flutter/features/payout_methods/domain/entitites/payout_account.input.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_bank_transfer_payout_method_form_cubit.state.dart';
part 'add_bank_transfer_payout_method_form_cubit.freezed.dart';

@LazySingleton()
class AddBankTransferPayoutMethodFormCubit extends Cubit<AddBankTransferPayoutMethodFormState> {
  final PayoutMethodsRepository _repository;

  AddBankTransferPayoutMethodFormCubit(this._repository)
      : super(
          // ignore: prefer_const_constructors
          AddBankTransferPayoutMethodFormState(),
        );

  void init({
    required String payoutMethodId,
  }) {
    emit(state.copyWith(payoutMethodId: payoutMethodId));
  }

  void submit({
    required PayoutAccountInput input,
  }) async {
    emit(state.copyWith(pageState: const FormSubmissionState.loading()));
    final result = await _repository.addPayoutMethod(input);
    result.fold(
      (failure) => emit(
        state.copyWith(
          pageState: FormSubmissionState.error(failure.errorMessage),
        ),
      ),
      (account) => emit(
        state.copyWith(
          pageState: FormSubmissionState.success(account),
        ),
      ),
    );
  }

  void reset() {
    emit(
      AddBankTransferPayoutMethodFormState(
        pageState: const FormSubmissionState.initial(),
      ),
    );
  }

  void onNameChanged(String? name) => emit(state.copyWith(name: name));

  void onAccountNumberChanged(String? accountNumber) => emit(state.copyWith(accountNumber: accountNumber));

  void onRoutingNumberChanged(String? routingNumber) => emit(state.copyWith(routingNumber: routingNumber));

  void onBankNameChanged(String? bankName) => emit(state.copyWith(bankName: bankName));

  void onBranchNameChanged(String? branchName) => emit(state.copyWith(branchName: branchName));

  void onAccountHolderCountryChanged(String? country) => emit(state.copyWith(accountHolderCountry: country));

  void onAccountHolderNameChanged(String? name) => emit(state.copyWith(accountHolderName: name));

  void onAccountHolderAddressChanged(String? address) => emit(state.copyWith(accountHolderAddress: address));

  void onAccountHolderCityChanged(String? city) => emit(state.copyWith(accountHolderCity: city));

  void onAccountHolderZipCodeChanged(String? zipCode) => emit(state.copyWith(accountHolderZip: zipCode));

  void onAccountHolderStateChanged(String? accountHolderState) =>
      emit(state.copyWith(accountHolderState: accountHolderState));

  void onAccountHolderPhoneChanged(String? phone) => emit(state.copyWith(accountHolderPhone: phone));

  void onAccountHolderDateOfBirthChanged(DateTime dateOfBirth) => emit(
        state.copyWith(
          accountHolderDateOfBirth: dateOfBirth,
        ),
      );
}
