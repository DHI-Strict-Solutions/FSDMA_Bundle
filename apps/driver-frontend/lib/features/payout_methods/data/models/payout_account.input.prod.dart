import 'package:driver_flutter/core/graphql/schema.gql.dart';
import 'package:driver_flutter/features/payout_methods/domain/entitites/payout_account.input.dart';

extension PayoutAccountInputX on PayoutAccountInput {
  Input$PayoutAccountInput get toGql => Input$PayoutAccountInput(
        name: name,
        payoutMethodId: payoutMethodId,
        accountNumber: accountNumber,
        routingNumber: routingNumber,
        bankName: bankName,
        isDefault: isDefault,
        accountHolderName: accountHolderName,
        branchName: branchName,
        accountHolderAddress: accountHolderAddress,
        accountHolderCity: accountHolderCity,
        accountHolderState: accountHolderState,
        accountHolderZip: accountHolderZip,
        accountHolderCountry: accountHolderCountry,
        accountHolderPhone: accountHolderPhone,
        accountHolderDateOfBirth: accountHolderDateOfBirth,
      );
}
