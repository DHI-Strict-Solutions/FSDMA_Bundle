import 'package:driver_flutter/core/entities/media.prod.dart';
import 'package:driver_flutter/core/entities/profile_full.dart';
import 'package:driver_flutter/core/enums/driver_status.prod.dart';
import 'package:driver_flutter/core/enums/gender.prod.dart';
import 'package:driver_flutter/core/graphql/documents/login.graphql.dart';
import 'package:driver_flutter/core/graphql/fragments/profile.fragment.graphql.dart';

extension ProfileFullEntityX on Fragment$ProfileFullFragment {
  ProfileFullEntity get toEntity {
    return ProfileFullEntity(
      id: id,
      status: status.toEntity,
      firstName: firstName,
      lastName: lastName,
      mobileNumber: mobileNumber,
      gender: gender?.toEntity,
      email: email,
      searchDistance: 1500,
      certificateNumber: certificateNumber,
      address: address,
      vehiclePlateNumber: carPlate,
      vehicleProductionYear: carProductionYear,
      vehicleModelId: carId,
      vehicleColorId: carColorId,
      bankName: bankName,
      bankAccountNumber: accountNumber,
      bankSwiftCode: bankSwift,
      bankRoutingNumber: bankRoutingNumber,
      profilePicture: media?.toEntity,
      documents: documents?.map((e) => e.toEntity).toList(),
    );
  }
}

extension FullPofileX on ProfileFullEntity {
  Variables$Mutation$Register get toRegisterVariables {
    return Variables$Mutation$Register(
      id: id,
      firstName: firstName!,
      lastName: lastName!,
      address: address,
      email: email,
      gender: gender?.toGql,
      vehicleColorId: vehicleColorId,
      vehicleModelId: vehicleModelId,
      vehiclePlateNumber: vehiclePlateNumber,
      vehicleProductionYear: vehicleProductionYear,
      bankName: bankName,
      bankAccountNumber: bankAccountNumber,
      bankRoutingNumber: bankRoutingNumber,
      bankSwiftCode: bankSwiftCode,
      documentIds: documents?.map((e) => e.id).toList() ?? [],
      profilePictureId: profilePicture!.id,
    );
  }
}
