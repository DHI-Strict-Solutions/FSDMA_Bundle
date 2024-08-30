import 'package:driver_flutter/core/entities/profile.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_page.freezed.dart';
part 'login_page.g.dart';

@freezed
sealed class LoginPage with _$LoginPage {
  const factory LoginPage.enterNumber() = EnterNumberPage;
  const factory LoginPage.enterOtp({
    String? otp,
  }) = EnterOtpPage;
  const factory LoginPage.enterPassword() = _EnterPassword;
  const factory LoginPage.setPassword() = _SetPassword;
  const factory LoginPage.contactDetails() = _ContactDetails;
  const factory LoginPage.vehicleDetails() = _VehicleDetails;
  const factory LoginPage.payoutInformation() = _PayoutInformation;
  const factory LoginPage.documents() = _Documents;
  const factory LoginPage.accessDenied() = _AccessDenied;
  const factory LoginPage.success({
    required ProfileEntity profile,
  }) = _Success;

  const LoginPage._();

  factory LoginPage.fromJson(Map<String, dynamic> json) => _$LoginPageFromJson(json);

  int? get loginStep {
    switch (this) {
      case EnterNumberPage():
        return 3;
      default:
        return null;
    }
  }

  int? get wizardStep {
    return map(
      enterNumber: (_) => null,
      enterOtp: (_) => 1,
      enterPassword: (_) => 1,
      setPassword: (_) => 1,
      contactDetails: (_) => 2,
      vehicleDetails: (_) => 3,
      payoutInformation: (_) => 4,
      documents: (_) => 5,
      accessDenied: (_) => null,
      success: (_) => null,
    );
  }

  String title(BuildContext context) {
    switch (this) {
      case EnterNumberPage():
        return context.translate.signInSignUp;
      case EnterOtpPage():
        return context.translate.enterOtp;
      case _EnterPassword():
        return context.translate.enterPassword;
      case _SetPassword():
        return context.translate.setPassword;
      case _ContactDetails():
        return context.translate.contactDetails;
      case _VehicleDetails():
        return context.translate.vehicleDetails;
      case _PayoutInformation():
        return context.translate.payoutInformation;
      case _Documents():
        return context.translate.documents;
      case _AccessDenied():
        return context.translate.accessDenied;
      case _Success():
        return context.translate.success;
    }
  }
}
