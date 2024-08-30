import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_details.freezed.dart';
part 'registration_details.g.dart';

@freezed
class RegistrationDetails with _$RegistrationDetails {
  const factory RegistrationDetails({
    String? firstName,
    String? lastName,
    String? certificateNumber,
    String? mobileNumber,
    String? address,
    String? vehiclePlateNumber,
    int? vehicleProductionYear,
    String? vehicleModelId,
    String? vehicleColorId,
    String? bankName,
    String? bankAccountNumber,
    String? bankSwiftCode,
    String? bankRoutingNumber,
  }) = _RegistrationDetails;

  factory RegistrationDetails.fromJson(Map<String, dynamic> json) => _$RegistrationDetailsFromJson(json);
}
