import 'package:driver_flutter/core/graphql/fragments/wallet.fragment.graphql.dart';
import 'package:flutter_common/core/entities/wallet.dart';

extension WalletEntityGqlX on Fragment$WalletFragment {
  WalletEntity get toEntity => WalletEntity(
        balance: balance,
        currency: currency,
      );
}
