import 'package:freezed_annotation/freezed_annotation.dart';

part 'payout_account.input.freezed.dart';

@freezed
class PayoutAccountInput with _$PayoutAccountInput {
  const factory PayoutAccountInput({
    required String name,
    required String payoutMethodId,
    required String accountNumber,
    required String? routingNumber,
    required String bankName,
    required String? accountHolderName,
    required String? branchName,
    required bool isDefault,
    required String? accountHolderAddress,
    required String? accountHolderCity,
    required String? accountHolderState,
    required String? accountHolderZip,
    required String? accountHolderCountry,
    required String? accountHolderPhone,
    required DateTime? accountHolderDateOfBirth,
  }) = _PayoutAccountInput;
}
