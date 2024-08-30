import 'package:flutter/material.dart';
import 'package:driver_flutter/core/graphql/schema.gql.dart';
import 'package:flutter_common/core/enums/card_type.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/gen/assets.gen.dart';

extension CardTypeX on CardType {
  Enum$ProviderBrand get toGql {
    switch (this) {
      case CardType.visa:
        return Enum$ProviderBrand.Visa;
      case CardType.mastercard:
        return Enum$ProviderBrand.Mastercard;
      case CardType.amex:
        return Enum$ProviderBrand.Amex;
      case CardType.discover:
        return Enum$ProviderBrand.Discover;
      case CardType.jcb:
        return Enum$ProviderBrand.JCB;
      case CardType.diners:
        return Enum$ProviderBrand.Diners;

      default:
        throw Exception('Card type not supported');
    }
  }

  AssetGenImage get icon {
    switch (this) {
      case CardType.visa:
        return Assets.images.visa;
      case CardType.mastercard:
        return Assets.images.mastercard;

      default:
        throw Exception('Card type not supported');
    }
  }

  String title(BuildContext context) {
    switch (this) {
      case CardType.visa:
        return context.translate.visa;
      case CardType.mastercard:
        return context.translate.mastercard;

      default:
        throw Exception('Card type not supported');
    }
  }
}

extension CardTypeProdX on Enum$ProviderBrand {
  CardType get toEntity {
    switch (this) {
      case Enum$ProviderBrand.Visa:
        return CardType.visa;
      case Enum$ProviderBrand.Mastercard:
        return CardType.mastercard;
      case Enum$ProviderBrand.Amex:
        return CardType.amex;
      case Enum$ProviderBrand.Discover:
        return CardType.discover;
      case Enum$ProviderBrand.JCB:
        return CardType.jcb;
      case Enum$ProviderBrand.Diners:
        return CardType.diners;

      default:
        throw Exception('Card type not supported');
    }
  }
}
