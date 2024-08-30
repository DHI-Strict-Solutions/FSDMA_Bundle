import 'package:freezed_annotation/freezed_annotation.dart';

part 'payout_account.freezed.dart';
part 'payout_account.g.dart';

@freezed
class PayoutAccountEntity with _$PayoutAccountEntity {
  const factory PayoutAccountEntity({
    required String id,
    required String? accountNumber,
    required String? routingNumber,
    required String? accountHolderName,
    required String? bankName,
    required bool isDefault,
    required String? accountHolderCountry,
    required String? accountHolderCity,
    required String? accountHolderState,
    required String? accountHolderAddress,
    required DateTime? accountHolderDateOfBirth,
    required String? accountHolderPhone,
    required String? accountHolderZip,
  }) = _PayoutAccountEntity;

  const PayoutAccountEntity._();

  factory PayoutAccountEntity.fromJson(Map<String, dynamic> json) => _$PayoutAccountEntityFromJson(json);

  static List<PayoutAccountEntity> get testData => [
        PayoutAccountEntity(
          id: "1",
          accountNumber: "****   ****   ****   2456",
          routingNumber: "123456789",
          accountHolderName: "John Martin",
          bankName: "Bank of America",
          isDefault: true,
          accountHolderState: "CA",
          accountHolderCity: "San Francisco",
          accountHolderAddress: "123 Main St",
          accountHolderDateOfBirth: DateTime(1990, 1, 1),
          accountHolderPhone: "+1 123 456 7890",
          accountHolderZip: "94105",
          accountHolderCountry: "US",
        ),
        PayoutAccountEntity(
          id: "2",
          accountNumber: "****   ****   ****   4321",
          routingNumber: "123456789",
          accountHolderName: "John Martin",
          bankName: "Bank of America",
          isDefault: false,
          accountHolderState: "CA",
          accountHolderCity: "San Francisco",
          accountHolderAddress: "123 Main St",
          accountHolderDateOfBirth: DateTime(1990, 1, 1),
          accountHolderPhone: "+1 123 456 7890",
          accountHolderZip: "94105",
          accountHolderCountry: "US",
        ),
      ];
}
