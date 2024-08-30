import 'package:driver_flutter/core/graphql/documents/payout.graphql.dart';
import 'package:driver_flutter/core/graphql/fragments/payout_account.fragment.graphql.dart';
import 'package:driver_flutter/gen/assets.gen.dart';
import 'package:flutter_common/features/wallet/wallet.dart';

import '../../domain/entitites/payout_account.dart';

extension PayoutMethodEntityGqlX on Fragment$PayoutAccount {
  PayoutAccountEntity get toEntity {
    return PayoutAccountEntity(
      id: id,
      accountNumber: accountNumber,
      routingNumber: routingNumber,
      accountHolderName: accountHolderName,
      bankName: name ?? bankName,
      isDefault: isDefault,
      accountHolderState: accountHolderState,
      accountHolderCity: accountHolderCity,
      accountHolderAddress: accountHolderAddress,
      accountHolderDateOfBirth: DateTime(1990, 1, 1),
      accountHolderPhone: accountHolderPhone,
      accountHolderZip: accountHolderZip,
      accountHolderCountry: accountHolderCountry,
    );
  }
}

extension PayoutMethodGqlX on Query$PayoutAccounts {
  List<PayoutAccountEntity> get toEntities {
    return payoutAccounts.map((e) => e.toEntity).toList();
  }
}

extension PayoutMethodX on PayoutAccountEntity {
  SavedCard toSavedCard({
    required Function(bool)? onDefaultChanged,
    required Function()? onDeletePressed,
  }) {
    return SavedCard(
      bankName: bankName ?? "-",
      accountNumber: accountNumber ?? "-",
      accountHolderName: accountHolderName ?? "-",
      cardImage: Assets.images.cardBackground2.provider(),
      icon: null,
      markAsDefaultPressed: onDefaultChanged,
      deletePressed: onDeletePressed,
      isDefault: isDefault,
    );
  }
}
