import 'package:driver_flutter/core/graphql/schema.gql.dart';
import 'package:flutter_common/core/enums/gender.dart';

extension GenderGqlX on Enum$Gender {
  Gender get toEntity {
    switch (this) {
      case Enum$Gender.Male:
        return Gender.male;

      case Enum$Gender.Female:
        return Gender.female;

      case Enum$Gender.Unknown:
        return Gender.unknown;

      case Enum$Gender.$unknown:
        throw Exception("Unknown gender: $this");
    }
  }
}

extension GenderExtension on Gender {
  Enum$Gender get toGql {
    switch (this) {
      case Gender.male:
        return Enum$Gender.Male;
      case Gender.female:
        return Enum$Gender.Female;
      case Gender.unknown:
        return Enum$Gender.Unknown;
    }
  }
}
