part of 'login.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default(LoginPage.enterNumber()) LoginPage loginPage,
    CountryCode? countryCode,
    String? verificationHash,
    String? jwtToken,
    String? currentPassword,
    String? newPassword,
    String? mobileNumber,
    @Default([]) List<VehicleModelEntity> vehicleModels,
    @Default([]) List<VehicleColorEntity> vehicleColors,
    ProfileFullEntity? profileFullEntity,
  }) = _LoginState;

  const LoginState._();

  factory LoginState.fromJson(Map<String, dynamic> json) => _$LoginStateFromJson(json);

  bool get codeLengthIsSafe => newPassword != null && newPassword!.length >= 9 && newPassword!.length <= 64;

  bool get hasUppercase => newPassword != null && newPassword!.contains(RegExp(r'[A-Z]'));

  bool get hasDigits => newPassword != null && newPassword!.contains(RegExp(r'[0-9]'));

  bool get hasLowercase => newPassword != null && newPassword!.contains(RegExp(r'[a-z]'));

  double get desktopHeight => loginPage.map(
        enterNumber: (_) => 200,
        enterOtp: (_) => 300,
        enterPassword: (_) => 400,
        setPassword: (_) => 400,
        contactDetails: (_) => 700,
        vehicleDetails: (_) => double.infinity,
        payoutInformation: (_) => double.infinity,
        documents: (_) => double.infinity,
        accessDenied: (_) => 100,
        success: (_) => 100,
      );

  bool get hasSpecialCharacters =>
      newPassword != null &&
      newPassword!.contains(
        RegExp(
          r'[!@#$%^&*(),.?":{}|<>]',
        ),
      );

  bool get hasAtLeastTwoChecks =>
      [
        hasUppercase,
        hasDigits,
        hasLowercase,
        hasSpecialCharacters,
      ]
          .where(
            (element) => element,
          )
          .length >=
      2;
}
