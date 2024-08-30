// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginState _$LoginStateFromJson(Map<String, dynamic> json) {
  return _LoginState.fromJson(json);
}

/// @nodoc
mixin _$LoginState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  LoginPage get loginPage => throw _privateConstructorUsedError;
  CountryCode? get countryCode => throw _privateConstructorUsedError;
  String? get verificationHash => throw _privateConstructorUsedError;
  String? get jwtToken => throw _privateConstructorUsedError;
  String? get currentPassword => throw _privateConstructorUsedError;
  String? get newPassword => throw _privateConstructorUsedError;
  String? get mobileNumber => throw _privateConstructorUsedError;
  List<VehicleModelEntity> get vehicleModels =>
      throw _privateConstructorUsedError;
  List<VehicleColorEntity> get vehicleColors =>
      throw _privateConstructorUsedError;
  ProfileFullEntity? get profileFullEntity =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? errorMessage,
      LoginPage loginPage,
      CountryCode? countryCode,
      String? verificationHash,
      String? jwtToken,
      String? currentPassword,
      String? newPassword,
      String? mobileNumber,
      List<VehicleModelEntity> vehicleModels,
      List<VehicleColorEntity> vehicleColors,
      ProfileFullEntity? profileFullEntity});

  $LoginPageCopyWith<$Res> get loginPage;
  $CountryCodeCopyWith<$Res>? get countryCode;
  $ProfileFullEntityCopyWith<$Res>? get profileFullEntity;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? loginPage = null,
    Object? countryCode = freezed,
    Object? verificationHash = freezed,
    Object? jwtToken = freezed,
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
    Object? mobileNumber = freezed,
    Object? vehicleModels = null,
    Object? vehicleColors = null,
    Object? profileFullEntity = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      loginPage: null == loginPage
          ? _value.loginPage
          : loginPage // ignore: cast_nullable_to_non_nullable
              as LoginPage,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as CountryCode?,
      verificationHash: freezed == verificationHash
          ? _value.verificationHash
          : verificationHash // ignore: cast_nullable_to_non_nullable
              as String?,
      jwtToken: freezed == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPassword: freezed == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleModels: null == vehicleModels
          ? _value.vehicleModels
          : vehicleModels // ignore: cast_nullable_to_non_nullable
              as List<VehicleModelEntity>,
      vehicleColors: null == vehicleColors
          ? _value.vehicleColors
          : vehicleColors // ignore: cast_nullable_to_non_nullable
              as List<VehicleColorEntity>,
      profileFullEntity: freezed == profileFullEntity
          ? _value.profileFullEntity
          : profileFullEntity // ignore: cast_nullable_to_non_nullable
              as ProfileFullEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginPageCopyWith<$Res> get loginPage {
    return $LoginPageCopyWith<$Res>(_value.loginPage, (value) {
      return _then(_value.copyWith(loginPage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryCodeCopyWith<$Res>? get countryCode {
    if (_value.countryCode == null) {
      return null;
    }

    return $CountryCodeCopyWith<$Res>(_value.countryCode!, (value) {
      return _then(_value.copyWith(countryCode: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileFullEntityCopyWith<$Res>? get profileFullEntity {
    if (_value.profileFullEntity == null) {
      return null;
    }

    return $ProfileFullEntityCopyWith<$Res>(_value.profileFullEntity!, (value) {
      return _then(_value.copyWith(profileFullEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? errorMessage,
      LoginPage loginPage,
      CountryCode? countryCode,
      String? verificationHash,
      String? jwtToken,
      String? currentPassword,
      String? newPassword,
      String? mobileNumber,
      List<VehicleModelEntity> vehicleModels,
      List<VehicleColorEntity> vehicleColors,
      ProfileFullEntity? profileFullEntity});

  @override
  $LoginPageCopyWith<$Res> get loginPage;
  @override
  $CountryCodeCopyWith<$Res>? get countryCode;
  @override
  $ProfileFullEntityCopyWith<$Res>? get profileFullEntity;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? loginPage = null,
    Object? countryCode = freezed,
    Object? verificationHash = freezed,
    Object? jwtToken = freezed,
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
    Object? mobileNumber = freezed,
    Object? vehicleModels = null,
    Object? vehicleColors = null,
    Object? profileFullEntity = freezed,
  }) {
    return _then(_$LoginStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      loginPage: null == loginPage
          ? _value.loginPage
          : loginPage // ignore: cast_nullable_to_non_nullable
              as LoginPage,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as CountryCode?,
      verificationHash: freezed == verificationHash
          ? _value.verificationHash
          : verificationHash // ignore: cast_nullable_to_non_nullable
              as String?,
      jwtToken: freezed == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPassword: freezed == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleModels: null == vehicleModels
          ? _value._vehicleModels
          : vehicleModels // ignore: cast_nullable_to_non_nullable
              as List<VehicleModelEntity>,
      vehicleColors: null == vehicleColors
          ? _value._vehicleColors
          : vehicleColors // ignore: cast_nullable_to_non_nullable
              as List<VehicleColorEntity>,
      profileFullEntity: freezed == profileFullEntity
          ? _value.profileFullEntity
          : profileFullEntity // ignore: cast_nullable_to_non_nullable
              as ProfileFullEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginStateImpl extends _LoginState {
  const _$LoginStateImpl(
      {this.isLoading = false,
      this.errorMessage,
      this.loginPage = const LoginPage.enterNumber(),
      this.countryCode,
      this.verificationHash,
      this.jwtToken,
      this.currentPassword,
      this.newPassword,
      this.mobileNumber,
      final List<VehicleModelEntity> vehicleModels = const [],
      final List<VehicleColorEntity> vehicleColors = const [],
      this.profileFullEntity})
      : _vehicleModels = vehicleModels,
        _vehicleColors = vehicleColors,
        super._();

  factory _$LoginStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginStateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final LoginPage loginPage;
  @override
  final CountryCode? countryCode;
  @override
  final String? verificationHash;
  @override
  final String? jwtToken;
  @override
  final String? currentPassword;
  @override
  final String? newPassword;
  @override
  final String? mobileNumber;
  final List<VehicleModelEntity> _vehicleModels;
  @override
  @JsonKey()
  List<VehicleModelEntity> get vehicleModels {
    if (_vehicleModels is EqualUnmodifiableListView) return _vehicleModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicleModels);
  }

  final List<VehicleColorEntity> _vehicleColors;
  @override
  @JsonKey()
  List<VehicleColorEntity> get vehicleColors {
    if (_vehicleColors is EqualUnmodifiableListView) return _vehicleColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicleColors);
  }

  @override
  final ProfileFullEntity? profileFullEntity;

  @override
  String toString() {
    return 'LoginState(isLoading: $isLoading, errorMessage: $errorMessage, loginPage: $loginPage, countryCode: $countryCode, verificationHash: $verificationHash, jwtToken: $jwtToken, currentPassword: $currentPassword, newPassword: $newPassword, mobileNumber: $mobileNumber, vehicleModels: $vehicleModels, vehicleColors: $vehicleColors, profileFullEntity: $profileFullEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.loginPage, loginPage) ||
                other.loginPage == loginPage) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.verificationHash, verificationHash) ||
                other.verificationHash == verificationHash) &&
            (identical(other.jwtToken, jwtToken) ||
                other.jwtToken == jwtToken) &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            const DeepCollectionEquality()
                .equals(other._vehicleModels, _vehicleModels) &&
            const DeepCollectionEquality()
                .equals(other._vehicleColors, _vehicleColors) &&
            (identical(other.profileFullEntity, profileFullEntity) ||
                other.profileFullEntity == profileFullEntity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      errorMessage,
      loginPage,
      countryCode,
      verificationHash,
      jwtToken,
      currentPassword,
      newPassword,
      mobileNumber,
      const DeepCollectionEquality().hash(_vehicleModels),
      const DeepCollectionEquality().hash(_vehicleColors),
      profileFullEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginStateImplToJson(
      this,
    );
  }
}

abstract class _LoginState extends LoginState {
  const factory _LoginState(
      {final bool isLoading,
      final String? errorMessage,
      final LoginPage loginPage,
      final CountryCode? countryCode,
      final String? verificationHash,
      final String? jwtToken,
      final String? currentPassword,
      final String? newPassword,
      final String? mobileNumber,
      final List<VehicleModelEntity> vehicleModels,
      final List<VehicleColorEntity> vehicleColors,
      final ProfileFullEntity? profileFullEntity}) = _$LoginStateImpl;
  const _LoginState._() : super._();

  factory _LoginState.fromJson(Map<String, dynamic> json) =
      _$LoginStateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  LoginPage get loginPage;
  @override
  CountryCode? get countryCode;
  @override
  String? get verificationHash;
  @override
  String? get jwtToken;
  @override
  String? get currentPassword;
  @override
  String? get newPassword;
  @override
  String? get mobileNumber;
  @override
  List<VehicleModelEntity> get vehicleModels;
  @override
  List<VehicleColorEntity> get vehicleColors;
  @override
  ProfileFullEntity? get profileFullEntity;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
