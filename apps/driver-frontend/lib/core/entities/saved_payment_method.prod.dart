import 'package:driver_flutter/core/graphql/fragments/saved_payment_method.fragment.graphql.dart';
import 'package:flutter_common/core/entities/saved_payment_method.dart';
import 'package:flutter_common/core/enums/card_type.dart';
import 'package:driver_flutter/core/enums/card_type.prod.dart';
import 'package:driver_flutter/gen/assets.gen.dart';

extension SavedPaymentMethodX on SavedPaymentMethodEntity {
  AssetGenImage get cardImage {
    switch (cardType) {
      case CardType.visa:
        return Assets.images.cardBackground2;
      case CardType.mastercard:
        return Assets.images.cardBackground3;
      case CardType.amex:
        return Assets.images.cardBackground4;
      default:
        return Assets.images.cardBackground1;
    }
  }
}

extension SavedPaymentMethodProdX on Fragment$SavedPaymentMethodFragment {
  SavedPaymentMethodEntity get toEntity => SavedPaymentMethodEntity(
        id: id,
        cardHolderName: holderName,
        last4Digits: lastFour ?? title,
        cardType: providerBrand?.toEntity ?? CardType.unknown,
        expiryDate: expiryDate,
        isEnabled: isEnabled,
        isDefault: isDefault,
      );
}

extension SavedPaymentMethodsProdX on List<Fragment$SavedPaymentMethodFragment> {
  List<SavedPaymentMethodEntity> get toEntity => map((e) => e.toEntity).toList();
}
