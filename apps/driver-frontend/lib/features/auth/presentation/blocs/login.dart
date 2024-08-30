import 'package:driver_flutter/core/entities/profile_full.dart';
import 'package:driver_flutter/core/entities/vehicle_color.dart';
import 'package:driver_flutter/core/entities/vehicle_model.dart';
import 'package:driver_flutter/core/enums/driver_status.dart';
import 'package:driver_flutter/features/auth/domain/entities/login_page.dart';
import 'package:flutter_common/core/entities/media.dart';
import 'package:flutter_common/core/enums/gender.dart';
import 'package:flutter_common/features/country_code_dialog/country_code.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/verify_otp_response.dart';
import '../../domain/repositories/auth_repository.dart';

part 'login.state.dart';
part 'login.freezed.dart';
part 'login.g.dart';

@LazySingleton()
class LoginBloc extends HydratedCubit<LoginState> {
  AuthRepository repository;

  LoginBloc(
    this.repository,
  ) : super(const LoginState());

  void onBackPressed() {
    emit(
      state.loginPage.when(
        enterNumber: () => state.copyWith(
          loginPage: const LoginPage.enterNumber(),
        ),
        enterOtp: (otp) => state.copyWith(
          loginPage: const LoginPage.enterNumber(),
        ),
        enterPassword: () => state.copyWith(
          loginPage: const LoginPage.enterNumber(),
        ),
        setPassword: () => state.copyWith(
          loginPage: const LoginPage.enterNumber(),
        ),
        contactDetails: () => state.copyWith(
          loginPage: const LoginPage.enterNumber(),
        ),
        vehicleDetails: () => state.copyWith(
          loginPage: const LoginPage.contactDetails(),
        ),
        payoutInformation: () => state.copyWith(
          loginPage: const LoginPage.vehicleDetails(),
        ),
        documents: () => state.copyWith(
          loginPage: const LoginPage.payoutInformation(),
        ),
        success: (profile) => state.copyWith(
          loginPage: const LoginPage.enterNumber(),
        ),
        accessDenied: () => state.copyWith(
          loginPage: const LoginPage.enterNumber(),
        ),
      ),
    );
  }

  void reset() => emit(const LoginState());

  void onNumberChanged(CountryCode countryCode, String number) => emit(
        state.copyWith(
          countryCode: countryCode,
          mobileNumber: number,
        ),
      );

  void onOtpChanged(String newOtp) => state.loginPage.mapOrNull(
        enterOtp: (enterOtp) => emit(
          state.copyWith(
            loginPage: enterOtp.copyWith(
              otp: newOtp,
            ),
          ),
        ),
      );

  void onCurrentPasswordChanged(String password) => emit(state.copyWith(currentPassword: password));

  void onNewPasswordChanged(String password) => emit(state.copyWith(newPassword: password));

  void onNewPasswordSubmitted() async {
    emit(state.copyWith(isLoading: true));
    final result = await repository.setPassword(state.newPassword!);
    result.fold(
      (l) => emit(state.copyWith(errorMessage: l.errorMessage, isLoading: false)),
      (r) async => _processVerifiedUser(
        VerifyOtpResponse(
          jwtToken: state.jwtToken!,
          driverFullProfile: state.profileFullEntity!,
          hasPassword: true,
        ),
      ),
    );
  }

  void sendOtp() async {
    emit(state.copyWith(isLoading: true));
    final result = await repository.resendOtp(
      state.countryCode!.e164CC + state.mobileNumber!,
    );
    result.fold(
      (l) => emit(state.copyWith(errorMessage: l.errorMessage, isLoading: false)),
      (r) {
        emit(
          state.copyWith(
            loginPage: state.loginPage.maybeMap(
              orElse: () => const LoginPage.enterOtp(),
              enterOtp: (otp) => otp,
            ),
            isLoading: false,
            errorMessage: null,
            verificationHash: r.hash!,
          ),
        );
      },
    );
  }

  void onNumberSubmitted() async {
    emit(state.copyWith(isLoading: true));
    final result = await repository.verifyNumber(
      mobileNumber: state.countryCode!.e164CC + state.mobileNumber!,
      countryIsoCode: state.countryCode!.iso2CC,
    );
    result.fold(
      (l) => emit(
        state.copyWith(
          isLoading: false,
          errorMessage: l.errorMessage,
        ),
      ),
      (r) {
        if (r.isExistingUser) {
          emit(state.copyWith(
            loginPage: const LoginPage.enterPassword(),
            isLoading: false,
            errorMessage: null,
            verificationHash: null,
          ));
        } else {
          emit(
            state.copyWith(
              loginPage: const LoginPage.enterOtp(),
              isLoading: false,
              errorMessage: null,
              verificationHash: r.hash!,
            ),
          );
        }
      },
    );
  }

  void onConfirmOtpPressed() async {
    emit(state.copyWith(isLoading: true));
    final result = await repository.verifyOtp(
      state.verificationHash!,
      state.loginPage.maybeMap(orElse: () => '', enterOtp: (otp) => otp.otp!),
    );
    result.fold(
      (l) {
        if (l.errorMessage == 'Mobile number not found') {
          emit(state.copyWith(
            loginPage: const LoginPage.enterNumber(),
            isLoading: false,
            errorMessage: null,
            verificationHash: null,
          ));
          return;
        }
        emit(
          state.copyWith(
            errorMessage: l.errorMessage,
            isLoading: false,
          ),
        );
      },
      (r) async => _processVerifiedUser(r),
    );
  }

  void onConfirmPasswordPressed() async {
    emit(state.copyWith(isLoading: true));
    final result =
        await repository.verifyPassword(state.countryCode!.e164CC + state.mobileNumber!, state.currentPassword!);
    result.fold(
      (l) => emit(
        state.copyWith(
          errorMessage: l.errorMessage,
          isLoading: false,
        ),
      ),
      (r) async => _processVerifiedUser(r),
    );
  }

  void _processVerifiedUser(VerifyOtpResponse response) async {
    final profile = response.driverFullProfile;
    emit(
      state.copyWith(
        isLoading: true,
        jwtToken: response.jwtToken,
        profileFullEntity: profile,
      ),
    );
    if (response.hasPassword == false) {
      emit(state.copyWith(
        loginPage: const LoginPage.setPassword(),
        isLoading: false,
        errorMessage: null,
      ));
      return;
    }
    if (profile.status == const DriverStatus.pendingSubmission()) {
      final remoteData = await repository.getRegistrationData();
      remoteData.fold(
        (l) => emit(
          state.copyWith(
            errorMessage: l.errorMessage,
            isLoading: false,
          ),
        ),
        (rRemote) {
          emit(
            state.copyWith(
              loginPage: const LoginPage.contactDetails(),
              isLoading: false,
              vehicleModels: rRemote.vehicleModels,
              vehicleColors: rRemote.vehicleColors,
              profileFullEntity: rRemote.profile,
              errorMessage: null,
              jwtToken: response.jwtToken,
            ),
          );
        },
      );
    } else if (profile.status == const DriverStatus.blocked() || profile.status == const DriverStatus.hardReject()) {
      emit(
        state.copyWith(
          loginPage: const LoginPage.accessDenied(),
          isLoading: false,
          errorMessage: null,
        ),
      );
    } else {
      emit(
        state.copyWith(
          loginPage: LoginPage.success(profile: profile.toEntity),
          isLoading: false,
          errorMessage: null,
          jwtToken: response.jwtToken,
          profileFullEntity: profile,
        ),
      );
    }
  }

  // START: Contact Details

  void onGenderChanged(Gender? gender) => emit(state.copyWith.profileFullEntity!.call(gender: gender));

  void onFirstNameChanged(String? firstName) => emit(state.copyWith.profileFullEntity!.call(firstName: firstName));

  void onLastNameChanged(String? lastName) => emit(state.copyWith.profileFullEntity!.call(lastName: lastName));

  void onAddressChanged(String? address) => emit(state.copyWith.profileFullEntity!.call(address: address));

  void onEmailChanged(String? email) => emit(state.copyWith.profileFullEntity!.call(email: email));

  void onCertificateNumberChanged(String? certificateNumber) =>
      emit(state.copyWith.profileFullEntity!.call(certificateNumber: certificateNumber));

  void onConfirmContactDetailsPressed() => emit(state.copyWith(loginPage: const LoginPage.vehicleDetails()));

  // END: Contact Details

  // START: Vehicle Details

  void onPlateNumberChanged(String? newValue) =>
      emit(state.copyWith.profileFullEntity!.call(vehiclePlateNumber: newValue));

  void onVehicleModelIdChanged(String? newValue) =>
      emit(state.copyWith.profileFullEntity!.call(vehicleModelId: newValue));

  void onVehicleColorIdChanged(String? newValue) =>
      emit(state.copyWith.profileFullEntity!.call(vehicleColorId: newValue));

  void onVehicleProductionYearChanged(int? newValue) =>
      emit(state.copyWith.profileFullEntity!.call(vehicleProductionYear: newValue));

  void onConfirmVehicleDetailsPressed() => emit(state.copyWith(loginPage: const LoginPage.payoutInformation()));

  // END: Vehicle Details

  // START: Payout Information

  void onBankNameChanged(String? newValue) => emit(state.copyWith.profileFullEntity!.call(bankName: newValue));

  void onBankAccountNumberChanged(String? newValue) =>
      emit(state.copyWith.profileFullEntity!.call(bankAccountNumber: newValue));

  void onBankRoutingNumberChanged(String? newValue) =>
      emit(state.copyWith.profileFullEntity!.call(bankRoutingNumber: newValue));

  void onBankSwiftCodeChanged(String? newValue) => emit(state.copyWith.profileFullEntity!.call(bankSwiftCode: newValue));

  void onConfirmPayoutInformationPressed() => emit(state.copyWith(loginPage: const LoginPage.documents()));

  // END: Payout Information

  // START: Upload Documents

  void onProfilePhotoChanged(MediaEntity? newValue) =>
      emit(state.copyWith.profileFullEntity!.call(profilePicture: newValue));

  void setDocuments(List<MediaEntity> newValue) {
    emit(state.copyWith.profileFullEntity!.call(documents: newValue));
  }

  void onConfirmDocumentsPressed() async {
    emit(state.copyWith(isLoading: true));
    final result = await repository.register(profile: state.profileFullEntity!);
    result.fold(
      (l) => emit(
        state.copyWith(
          errorMessage: l.errorMessage,
          isLoading: false,
        ),
      ),
      (r) => emit(
        state.copyWith(
          loginPage: LoginPage.success(
            profile: r,
          ),
        ),
      ),
    );
  }

  @override
  LoginState? fromJson(Map<String, dynamic> json) => LoginState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(LoginState state) => state.toJson();
}
