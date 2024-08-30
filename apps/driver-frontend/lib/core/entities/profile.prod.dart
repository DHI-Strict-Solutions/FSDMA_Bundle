import 'package:driver_flutter/core/entities/media.prod.dart';
import 'package:driver_flutter/core/entities/order.prod.dart';
import 'package:driver_flutter/core/entities/profile.dart';
import 'package:driver_flutter/core/entities/wallet.prod.dart';
import 'package:driver_flutter/core/enums/driver_status.prod.dart';
import 'package:driver_flutter/core/enums/gender.prod.dart';
import 'package:driver_flutter/core/graphql/fragments/profile.fragment.graphql.dart';

extension ProfileEntityProdX on Fragment$ProfileFragment {
  ProfileEntity get toEntity => ProfileEntity(
        status: status.toEntity,
        firstName: firstName,
        lastName: lastName,
        searchRadius: searchDistance,
        gender: gender?.toEntity,
        email: email,
        countryCode: countryIso,
        profilePicture: media?.toEntity,
        number: mobileNumber,
        orders: currentOrders.map((e) => e.toEntity).toList(),
        wallets: wallets.map((e) => e.toEntity).toList(),
      );
}
