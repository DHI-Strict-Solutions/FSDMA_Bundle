import 'package:dartz/dartz.dart';
import 'package:driver_flutter/core/enums/driver_status.dart';
import 'package:flutter_common/core/entities/media.dart';
import 'package:flutter_common/core/enums/gender.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/features/country_code_dialog/domain/entities/country_code.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_common/core/entities/wallet.dart';

import 'order.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    required String? firstName,
    required String? lastName,
    required DriverStatus status,
    required Gender? gender,
    required String? email,
    required String? countryCode,
    required MediaEntity? profilePicture,
    required String number,
    required int? searchRadius,
    required List<WalletEntity> wallets,
    required List<OrderEntity> orders,
  }) = _ProfileEntity;

  factory ProfileEntity.fromJson(Map<String, dynamic> json) => _$ProfileEntityFromJson(json);

  static ProfileEntity get testProfile => const ProfileEntity(
        firstName: 'John',
        lastName: 'Doe',
        countryCode: 'US',
        gender: Gender.male,
        email: "john@doe.com",
        status: DriverStatus.offline(),
        number: '6505551234',
        searchRadius: 1500,
        profilePicture: null,
        orders: [],
        wallets: [
          WalletEntity(
            currency: 'USD',
            balance: 100,
          ),
          WalletEntity(
            currency: 'EUR',
            balance: 200,
          ),
        ],
      );

  const ProfileEntity._();

  String get fullName => '$firstName $lastName';

  Option<Either<String, String>> get avatar {
    if (profilePicture != null) {
      return Some(Right(profilePicture!.address));
    } else {
      return const None();
    }
  }

  String get mobileNumberFormatted {
    if (countryCode?.isEmpty == false) {
      final country = CountryCode.parseByIso(countryCode!);
      final dialCode = country.e164CC;
      final mobileNumber = (number.startsWith(dialCode)) ? number.substring(dialCode.length) : number;
      return '+$dialCode $mobileNumber';
    } else {
      return number.formatPhoneNumber('');
    }
  }

  WalletEntity? get mainWallet {
    if (wallets.isEmpty) {
      return null;
    } else {
      return wallets.reduce((value, element) => value.balance > element.balance ? value : element);
    }
  }
}
