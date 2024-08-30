import 'package:driver_flutter/core/entities/profile.dart';
import 'package:flutter_common/core/entities/media.dart';
import 'package:flutter_common/core/enums/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/driver_status.dart';

part 'profile_full.freezed.dart';
part 'profile_full.g.dart';

@freezed
class ProfileFullEntity with _$ProfileFullEntity {
  const factory ProfileFullEntity({
    required String id,
    required String? firstName,
    required String? lastName,
    required String? mobileNumber,
    required DriverStatus status,
    required Gender? gender,
    required String? certificateNumber,
    required String? email,
    required String? address,
    required int? searchDistance,
    required String? vehiclePlateNumber,
    required int? vehicleProductionYear,
    required String? vehicleModelId,
    required String? vehicleColorId,
    required String? bankName,
    required String? bankAccountNumber,
    required String? bankSwiftCode,
    required String? bankRoutingNumber,
    required MediaEntity? profilePicture,
    required List<MediaEntity>? documents,
  }) = _ProfileFullEntity;

  static ProfileFullEntity get testData => const ProfileFullEntity(
        id: "1",
        firstName: "John",
        lastName: "Doe",
        mobileNumber: "6505551234",
        gender: Gender.male,
        searchDistance: 1500,
        status: DriverStatus.pendingSubmission(),
        certificateNumber: "413213",
        email: null,
        address: null,
        vehiclePlateNumber: null,
        vehicleProductionYear: null,
        vehicleModelId: null,
        vehicleColorId: null,
        bankName: null,
        bankAccountNumber: null,
        bankSwiftCode: null,
        bankRoutingNumber: null,
        profilePicture: null,
        documents: null,
      );

  factory ProfileFullEntity.fromJson(Map<String, dynamic> json) => _$ProfileFullEntityFromJson(json);

  const ProfileFullEntity._();

  ProfileEntity get toEntity => ProfileEntity(
        firstName: firstName,
        lastName: lastName,
        countryCode: null,
        gender: gender,
        email: email,
        status: status,
        searchRadius: searchDistance,
        profilePicture: profilePicture,
        number: mobileNumber!,
        orders: [],
        wallets: const [],
      );
}
