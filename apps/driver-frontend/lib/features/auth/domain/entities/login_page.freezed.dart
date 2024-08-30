// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginPage _$LoginPageFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'enterNumber':
      return EnterNumberPage.fromJson(json);
    case 'enterOtp':
      return EnterOtpPage.fromJson(json);
    case 'enterPassword':
      return _EnterPassword.fromJson(json);
    case 'setPassword':
      return _SetPassword.fromJson(json);
    case 'contactDetails':
      return _ContactDetails.fromJson(json);
    case 'vehicleDetails':
      return _VehicleDetails.fromJson(json);
    case 'payoutInformation':
      return _PayoutInformation.fromJson(json);
    case 'documents':
      return _Documents.fromJson(json);
    case 'accessDenied':
      return _AccessDenied.fromJson(json);
    case 'success':
      return _Success.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'LoginPage',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$LoginPage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterNumber,
    required TResult Function(String? otp) enterOtp,
    required TResult Function() enterPassword,
    required TResult Function() setPassword,
    required TResult Function() contactDetails,
    required TResult Function() vehicleDetails,
    required TResult Function() payoutInformation,
    required TResult Function() documents,
    required TResult Function() accessDenied,
    required TResult Function(ProfileEntity profile) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterNumber,
    TResult? Function(String? otp)? enterOtp,
    TResult? Function()? enterPassword,
    TResult? Function()? setPassword,
    TResult? Function()? contactDetails,
    TResult? Function()? vehicleDetails,
    TResult? Function()? payoutInformation,
    TResult? Function()? documents,
    TResult? Function()? accessDenied,
    TResult? Function(ProfileEntity profile)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterNumber,
    TResult Function(String? otp)? enterOtp,
    TResult Function()? enterPassword,
    TResult Function()? setPassword,
    TResult Function()? contactDetails,
    TResult Function()? vehicleDetails,
    TResult Function()? payoutInformation,
    TResult Function()? documents,
    TResult Function()? accessDenied,
    TResult Function(ProfileEntity profile)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumberPage value) enterNumber,
    required TResult Function(EnterOtpPage value) enterOtp,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ContactDetails value) contactDetails,
    required TResult Function(_VehicleDetails value) vehicleDetails,
    required TResult Function(_PayoutInformation value) payoutInformation,
    required TResult Function(_Documents value) documents,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumberPage value)? enterNumber,
    TResult? Function(EnterOtpPage value)? enterOtp,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ContactDetails value)? contactDetails,
    TResult? Function(_VehicleDetails value)? vehicleDetails,
    TResult? Function(_PayoutInformation value)? payoutInformation,
    TResult? Function(_Documents value)? documents,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumberPage value)? enterNumber,
    TResult Function(EnterOtpPage value)? enterOtp,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ContactDetails value)? contactDetails,
    TResult Function(_VehicleDetails value)? vehicleDetails,
    TResult Function(_PayoutInformation value)? payoutInformation,
    TResult Function(_Documents value)? documents,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPageCopyWith<$Res> {
  factory $LoginPageCopyWith(LoginPage value, $Res Function(LoginPage) then) =
      _$LoginPageCopyWithImpl<$Res, LoginPage>;
}

/// @nodoc
class _$LoginPageCopyWithImpl<$Res, $Val extends LoginPage>
    implements $LoginPageCopyWith<$Res> {
  _$LoginPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EnterNumberPageImplCopyWith<$Res> {
  factory _$$EnterNumberPageImplCopyWith(_$EnterNumberPageImpl value,
          $Res Function(_$EnterNumberPageImpl) then) =
      __$$EnterNumberPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnterNumberPageImplCopyWithImpl<$Res>
    extends _$LoginPageCopyWithImpl<$Res, _$EnterNumberPageImpl>
    implements _$$EnterNumberPageImplCopyWith<$Res> {
  __$$EnterNumberPageImplCopyWithImpl(
      _$EnterNumberPageImpl _value, $Res Function(_$EnterNumberPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$EnterNumberPageImpl extends EnterNumberPage {
  const _$EnterNumberPageImpl({final String? $type})
      : $type = $type ?? 'enterNumber',
        super._();

  factory _$EnterNumberPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnterNumberPageImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginPage.enterNumber()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnterNumberPageImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterNumber,
    required TResult Function(String? otp) enterOtp,
    required TResult Function() enterPassword,
    required TResult Function() setPassword,
    required TResult Function() contactDetails,
    required TResult Function() vehicleDetails,
    required TResult Function() payoutInformation,
    required TResult Function() documents,
    required TResult Function() accessDenied,
    required TResult Function(ProfileEntity profile) success,
  }) {
    return enterNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterNumber,
    TResult? Function(String? otp)? enterOtp,
    TResult? Function()? enterPassword,
    TResult? Function()? setPassword,
    TResult? Function()? contactDetails,
    TResult? Function()? vehicleDetails,
    TResult? Function()? payoutInformation,
    TResult? Function()? documents,
    TResult? Function()? accessDenied,
    TResult? Function(ProfileEntity profile)? success,
  }) {
    return enterNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterNumber,
    TResult Function(String? otp)? enterOtp,
    TResult Function()? enterPassword,
    TResult Function()? setPassword,
    TResult Function()? contactDetails,
    TResult Function()? vehicleDetails,
    TResult Function()? payoutInformation,
    TResult Function()? documents,
    TResult Function()? accessDenied,
    TResult Function(ProfileEntity profile)? success,
    required TResult orElse(),
  }) {
    if (enterNumber != null) {
      return enterNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumberPage value) enterNumber,
    required TResult Function(EnterOtpPage value) enterOtp,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ContactDetails value) contactDetails,
    required TResult Function(_VehicleDetails value) vehicleDetails,
    required TResult Function(_PayoutInformation value) payoutInformation,
    required TResult Function(_Documents value) documents,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_Success value) success,
  }) {
    return enterNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumberPage value)? enterNumber,
    TResult? Function(EnterOtpPage value)? enterOtp,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ContactDetails value)? contactDetails,
    TResult? Function(_VehicleDetails value)? vehicleDetails,
    TResult? Function(_PayoutInformation value)? payoutInformation,
    TResult? Function(_Documents value)? documents,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_Success value)? success,
  }) {
    return enterNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumberPage value)? enterNumber,
    TResult Function(EnterOtpPage value)? enterOtp,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ContactDetails value)? contactDetails,
    TResult Function(_VehicleDetails value)? vehicleDetails,
    TResult Function(_PayoutInformation value)? payoutInformation,
    TResult Function(_Documents value)? documents,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (enterNumber != null) {
      return enterNumber(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EnterNumberPageImplToJson(
      this,
    );
  }
}

abstract class EnterNumberPage extends LoginPage {
  const factory EnterNumberPage() = _$EnterNumberPageImpl;
  const EnterNumberPage._() : super._();

  factory EnterNumberPage.fromJson(Map<String, dynamic> json) =
      _$EnterNumberPageImpl.fromJson;
}

/// @nodoc
abstract class _$$EnterOtpPageImplCopyWith<$Res> {
  factory _$$EnterOtpPageImplCopyWith(
          _$EnterOtpPageImpl value, $Res Function(_$EnterOtpPageImpl) then) =
      __$$EnterOtpPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? otp});
}

/// @nodoc
class __$$EnterOtpPageImplCopyWithImpl<$Res>
    extends _$LoginPageCopyWithImpl<$Res, _$EnterOtpPageImpl>
    implements _$$EnterOtpPageImplCopyWith<$Res> {
  __$$EnterOtpPageImplCopyWithImpl(
      _$EnterOtpPageImpl _value, $Res Function(_$EnterOtpPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_$EnterOtpPageImpl(
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnterOtpPageImpl extends EnterOtpPage {
  const _$EnterOtpPageImpl({this.otp, final String? $type})
      : $type = $type ?? 'enterOtp',
        super._();

  factory _$EnterOtpPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnterOtpPageImplFromJson(json);

  @override
  final String? otp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginPage.enterOtp(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterOtpPageImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterOtpPageImplCopyWith<_$EnterOtpPageImpl> get copyWith =>
      __$$EnterOtpPageImplCopyWithImpl<_$EnterOtpPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterNumber,
    required TResult Function(String? otp) enterOtp,
    required TResult Function() enterPassword,
    required TResult Function() setPassword,
    required TResult Function() contactDetails,
    required TResult Function() vehicleDetails,
    required TResult Function() payoutInformation,
    required TResult Function() documents,
    required TResult Function() accessDenied,
    required TResult Function(ProfileEntity profile) success,
  }) {
    return enterOtp(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterNumber,
    TResult? Function(String? otp)? enterOtp,
    TResult? Function()? enterPassword,
    TResult? Function()? setPassword,
    TResult? Function()? contactDetails,
    TResult? Function()? vehicleDetails,
    TResult? Function()? payoutInformation,
    TResult? Function()? documents,
    TResult? Function()? accessDenied,
    TResult? Function(ProfileEntity profile)? success,
  }) {
    return enterOtp?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterNumber,
    TResult Function(String? otp)? enterOtp,
    TResult Function()? enterPassword,
    TResult Function()? setPassword,
    TResult Function()? contactDetails,
    TResult Function()? vehicleDetails,
    TResult Function()? payoutInformation,
    TResult Function()? documents,
    TResult Function()? accessDenied,
    TResult Function(ProfileEntity profile)? success,
    required TResult orElse(),
  }) {
    if (enterOtp != null) {
      return enterOtp(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumberPage value) enterNumber,
    required TResult Function(EnterOtpPage value) enterOtp,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ContactDetails value) contactDetails,
    required TResult Function(_VehicleDetails value) vehicleDetails,
    required TResult Function(_PayoutInformation value) payoutInformation,
    required TResult Function(_Documents value) documents,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_Success value) success,
  }) {
    return enterOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumberPage value)? enterNumber,
    TResult? Function(EnterOtpPage value)? enterOtp,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ContactDetails value)? contactDetails,
    TResult? Function(_VehicleDetails value)? vehicleDetails,
    TResult? Function(_PayoutInformation value)? payoutInformation,
    TResult? Function(_Documents value)? documents,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_Success value)? success,
  }) {
    return enterOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumberPage value)? enterNumber,
    TResult Function(EnterOtpPage value)? enterOtp,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ContactDetails value)? contactDetails,
    TResult Function(_VehicleDetails value)? vehicleDetails,
    TResult Function(_PayoutInformation value)? payoutInformation,
    TResult Function(_Documents value)? documents,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (enterOtp != null) {
      return enterOtp(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EnterOtpPageImplToJson(
      this,
    );
  }
}

abstract class EnterOtpPage extends LoginPage {
  const factory EnterOtpPage({final String? otp}) = _$EnterOtpPageImpl;
  const EnterOtpPage._() : super._();

  factory EnterOtpPage.fromJson(Map<String, dynamic> json) =
      _$EnterOtpPageImpl.fromJson;

  String? get otp;
  @JsonKey(ignore: true)
  _$$EnterOtpPageImplCopyWith<_$EnterOtpPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnterPasswordImplCopyWith<$Res> {
  factory _$$EnterPasswordImplCopyWith(
          _$EnterPasswordImpl value, $Res Function(_$EnterPasswordImpl) then) =
      __$$EnterPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnterPasswordImplCopyWithImpl<$Res>
    extends _$LoginPageCopyWithImpl<$Res, _$EnterPasswordImpl>
    implements _$$EnterPasswordImplCopyWith<$Res> {
  __$$EnterPasswordImplCopyWithImpl(
      _$EnterPasswordImpl _value, $Res Function(_$EnterPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$EnterPasswordImpl extends _EnterPassword {
  const _$EnterPasswordImpl({final String? $type})
      : $type = $type ?? 'enterPassword',
        super._();

  factory _$EnterPasswordImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnterPasswordImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginPage.enterPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnterPasswordImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterNumber,
    required TResult Function(String? otp) enterOtp,
    required TResult Function() enterPassword,
    required TResult Function() setPassword,
    required TResult Function() contactDetails,
    required TResult Function() vehicleDetails,
    required TResult Function() payoutInformation,
    required TResult Function() documents,
    required TResult Function() accessDenied,
    required TResult Function(ProfileEntity profile) success,
  }) {
    return enterPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterNumber,
    TResult? Function(String? otp)? enterOtp,
    TResult? Function()? enterPassword,
    TResult? Function()? setPassword,
    TResult? Function()? contactDetails,
    TResult? Function()? vehicleDetails,
    TResult? Function()? payoutInformation,
    TResult? Function()? documents,
    TResult? Function()? accessDenied,
    TResult? Function(ProfileEntity profile)? success,
  }) {
    return enterPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterNumber,
    TResult Function(String? otp)? enterOtp,
    TResult Function()? enterPassword,
    TResult Function()? setPassword,
    TResult Function()? contactDetails,
    TResult Function()? vehicleDetails,
    TResult Function()? payoutInformation,
    TResult Function()? documents,
    TResult Function()? accessDenied,
    TResult Function(ProfileEntity profile)? success,
    required TResult orElse(),
  }) {
    if (enterPassword != null) {
      return enterPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumberPage value) enterNumber,
    required TResult Function(EnterOtpPage value) enterOtp,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ContactDetails value) contactDetails,
    required TResult Function(_VehicleDetails value) vehicleDetails,
    required TResult Function(_PayoutInformation value) payoutInformation,
    required TResult Function(_Documents value) documents,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_Success value) success,
  }) {
    return enterPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumberPage value)? enterNumber,
    TResult? Function(EnterOtpPage value)? enterOtp,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ContactDetails value)? contactDetails,
    TResult? Function(_VehicleDetails value)? vehicleDetails,
    TResult? Function(_PayoutInformation value)? payoutInformation,
    TResult? Function(_Documents value)? documents,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_Success value)? success,
  }) {
    return enterPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumberPage value)? enterNumber,
    TResult Function(EnterOtpPage value)? enterOtp,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ContactDetails value)? contactDetails,
    TResult Function(_VehicleDetails value)? vehicleDetails,
    TResult Function(_PayoutInformation value)? payoutInformation,
    TResult Function(_Documents value)? documents,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (enterPassword != null) {
      return enterPassword(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EnterPasswordImplToJson(
      this,
    );
  }
}

abstract class _EnterPassword extends LoginPage {
  const factory _EnterPassword() = _$EnterPasswordImpl;
  const _EnterPassword._() : super._();

  factory _EnterPassword.fromJson(Map<String, dynamic> json) =
      _$EnterPasswordImpl.fromJson;
}

/// @nodoc
abstract class _$$SetPasswordImplCopyWith<$Res> {
  factory _$$SetPasswordImplCopyWith(
          _$SetPasswordImpl value, $Res Function(_$SetPasswordImpl) then) =
      __$$SetPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetPasswordImplCopyWithImpl<$Res>
    extends _$LoginPageCopyWithImpl<$Res, _$SetPasswordImpl>
    implements _$$SetPasswordImplCopyWith<$Res> {
  __$$SetPasswordImplCopyWithImpl(
      _$SetPasswordImpl _value, $Res Function(_$SetPasswordImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SetPasswordImpl extends _SetPassword {
  const _$SetPasswordImpl({final String? $type})
      : $type = $type ?? 'setPassword',
        super._();

  factory _$SetPasswordImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetPasswordImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginPage.setPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetPasswordImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterNumber,
    required TResult Function(String? otp) enterOtp,
    required TResult Function() enterPassword,
    required TResult Function() setPassword,
    required TResult Function() contactDetails,
    required TResult Function() vehicleDetails,
    required TResult Function() payoutInformation,
    required TResult Function() documents,
    required TResult Function() accessDenied,
    required TResult Function(ProfileEntity profile) success,
  }) {
    return setPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterNumber,
    TResult? Function(String? otp)? enterOtp,
    TResult? Function()? enterPassword,
    TResult? Function()? setPassword,
    TResult? Function()? contactDetails,
    TResult? Function()? vehicleDetails,
    TResult? Function()? payoutInformation,
    TResult? Function()? documents,
    TResult? Function()? accessDenied,
    TResult? Function(ProfileEntity profile)? success,
  }) {
    return setPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterNumber,
    TResult Function(String? otp)? enterOtp,
    TResult Function()? enterPassword,
    TResult Function()? setPassword,
    TResult Function()? contactDetails,
    TResult Function()? vehicleDetails,
    TResult Function()? payoutInformation,
    TResult Function()? documents,
    TResult Function()? accessDenied,
    TResult Function(ProfileEntity profile)? success,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumberPage value) enterNumber,
    required TResult Function(EnterOtpPage value) enterOtp,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ContactDetails value) contactDetails,
    required TResult Function(_VehicleDetails value) vehicleDetails,
    required TResult Function(_PayoutInformation value) payoutInformation,
    required TResult Function(_Documents value) documents,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_Success value) success,
  }) {
    return setPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumberPage value)? enterNumber,
    TResult? Function(EnterOtpPage value)? enterOtp,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ContactDetails value)? contactDetails,
    TResult? Function(_VehicleDetails value)? vehicleDetails,
    TResult? Function(_PayoutInformation value)? payoutInformation,
    TResult? Function(_Documents value)? documents,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_Success value)? success,
  }) {
    return setPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumberPage value)? enterNumber,
    TResult Function(EnterOtpPage value)? enterOtp,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ContactDetails value)? contactDetails,
    TResult Function(_VehicleDetails value)? vehicleDetails,
    TResult Function(_PayoutInformation value)? payoutInformation,
    TResult Function(_Documents value)? documents,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (setPassword != null) {
      return setPassword(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SetPasswordImplToJson(
      this,
    );
  }
}

abstract class _SetPassword extends LoginPage {
  const factory _SetPassword() = _$SetPasswordImpl;
  const _SetPassword._() : super._();

  factory _SetPassword.fromJson(Map<String, dynamic> json) =
      _$SetPasswordImpl.fromJson;
}

/// @nodoc
abstract class _$$ContactDetailsImplCopyWith<$Res> {
  factory _$$ContactDetailsImplCopyWith(_$ContactDetailsImpl value,
          $Res Function(_$ContactDetailsImpl) then) =
      __$$ContactDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactDetailsImplCopyWithImpl<$Res>
    extends _$LoginPageCopyWithImpl<$Res, _$ContactDetailsImpl>
    implements _$$ContactDetailsImplCopyWith<$Res> {
  __$$ContactDetailsImplCopyWithImpl(
      _$ContactDetailsImpl _value, $Res Function(_$ContactDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ContactDetailsImpl extends _ContactDetails {
  const _$ContactDetailsImpl({final String? $type})
      : $type = $type ?? 'contactDetails',
        super._();

  factory _$ContactDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactDetailsImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginPage.contactDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContactDetailsImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterNumber,
    required TResult Function(String? otp) enterOtp,
    required TResult Function() enterPassword,
    required TResult Function() setPassword,
    required TResult Function() contactDetails,
    required TResult Function() vehicleDetails,
    required TResult Function() payoutInformation,
    required TResult Function() documents,
    required TResult Function() accessDenied,
    required TResult Function(ProfileEntity profile) success,
  }) {
    return contactDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterNumber,
    TResult? Function(String? otp)? enterOtp,
    TResult? Function()? enterPassword,
    TResult? Function()? setPassword,
    TResult? Function()? contactDetails,
    TResult? Function()? vehicleDetails,
    TResult? Function()? payoutInformation,
    TResult? Function()? documents,
    TResult? Function()? accessDenied,
    TResult? Function(ProfileEntity profile)? success,
  }) {
    return contactDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterNumber,
    TResult Function(String? otp)? enterOtp,
    TResult Function()? enterPassword,
    TResult Function()? setPassword,
    TResult Function()? contactDetails,
    TResult Function()? vehicleDetails,
    TResult Function()? payoutInformation,
    TResult Function()? documents,
    TResult Function()? accessDenied,
    TResult Function(ProfileEntity profile)? success,
    required TResult orElse(),
  }) {
    if (contactDetails != null) {
      return contactDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumberPage value) enterNumber,
    required TResult Function(EnterOtpPage value) enterOtp,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ContactDetails value) contactDetails,
    required TResult Function(_VehicleDetails value) vehicleDetails,
    required TResult Function(_PayoutInformation value) payoutInformation,
    required TResult Function(_Documents value) documents,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_Success value) success,
  }) {
    return contactDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumberPage value)? enterNumber,
    TResult? Function(EnterOtpPage value)? enterOtp,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ContactDetails value)? contactDetails,
    TResult? Function(_VehicleDetails value)? vehicleDetails,
    TResult? Function(_PayoutInformation value)? payoutInformation,
    TResult? Function(_Documents value)? documents,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_Success value)? success,
  }) {
    return contactDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumberPage value)? enterNumber,
    TResult Function(EnterOtpPage value)? enterOtp,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ContactDetails value)? contactDetails,
    TResult Function(_VehicleDetails value)? vehicleDetails,
    TResult Function(_PayoutInformation value)? payoutInformation,
    TResult Function(_Documents value)? documents,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (contactDetails != null) {
      return contactDetails(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactDetailsImplToJson(
      this,
    );
  }
}

abstract class _ContactDetails extends LoginPage {
  const factory _ContactDetails() = _$ContactDetailsImpl;
  const _ContactDetails._() : super._();

  factory _ContactDetails.fromJson(Map<String, dynamic> json) =
      _$ContactDetailsImpl.fromJson;
}

/// @nodoc
abstract class _$$VehicleDetailsImplCopyWith<$Res> {
  factory _$$VehicleDetailsImplCopyWith(_$VehicleDetailsImpl value,
          $Res Function(_$VehicleDetailsImpl) then) =
      __$$VehicleDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VehicleDetailsImplCopyWithImpl<$Res>
    extends _$LoginPageCopyWithImpl<$Res, _$VehicleDetailsImpl>
    implements _$$VehicleDetailsImplCopyWith<$Res> {
  __$$VehicleDetailsImplCopyWithImpl(
      _$VehicleDetailsImpl _value, $Res Function(_$VehicleDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$VehicleDetailsImpl extends _VehicleDetails {
  const _$VehicleDetailsImpl({final String? $type})
      : $type = $type ?? 'vehicleDetails',
        super._();

  factory _$VehicleDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleDetailsImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginPage.vehicleDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VehicleDetailsImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterNumber,
    required TResult Function(String? otp) enterOtp,
    required TResult Function() enterPassword,
    required TResult Function() setPassword,
    required TResult Function() contactDetails,
    required TResult Function() vehicleDetails,
    required TResult Function() payoutInformation,
    required TResult Function() documents,
    required TResult Function() accessDenied,
    required TResult Function(ProfileEntity profile) success,
  }) {
    return vehicleDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterNumber,
    TResult? Function(String? otp)? enterOtp,
    TResult? Function()? enterPassword,
    TResult? Function()? setPassword,
    TResult? Function()? contactDetails,
    TResult? Function()? vehicleDetails,
    TResult? Function()? payoutInformation,
    TResult? Function()? documents,
    TResult? Function()? accessDenied,
    TResult? Function(ProfileEntity profile)? success,
  }) {
    return vehicleDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterNumber,
    TResult Function(String? otp)? enterOtp,
    TResult Function()? enterPassword,
    TResult Function()? setPassword,
    TResult Function()? contactDetails,
    TResult Function()? vehicleDetails,
    TResult Function()? payoutInformation,
    TResult Function()? documents,
    TResult Function()? accessDenied,
    TResult Function(ProfileEntity profile)? success,
    required TResult orElse(),
  }) {
    if (vehicleDetails != null) {
      return vehicleDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumberPage value) enterNumber,
    required TResult Function(EnterOtpPage value) enterOtp,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ContactDetails value) contactDetails,
    required TResult Function(_VehicleDetails value) vehicleDetails,
    required TResult Function(_PayoutInformation value) payoutInformation,
    required TResult Function(_Documents value) documents,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_Success value) success,
  }) {
    return vehicleDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumberPage value)? enterNumber,
    TResult? Function(EnterOtpPage value)? enterOtp,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ContactDetails value)? contactDetails,
    TResult? Function(_VehicleDetails value)? vehicleDetails,
    TResult? Function(_PayoutInformation value)? payoutInformation,
    TResult? Function(_Documents value)? documents,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_Success value)? success,
  }) {
    return vehicleDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumberPage value)? enterNumber,
    TResult Function(EnterOtpPage value)? enterOtp,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ContactDetails value)? contactDetails,
    TResult Function(_VehicleDetails value)? vehicleDetails,
    TResult Function(_PayoutInformation value)? payoutInformation,
    TResult Function(_Documents value)? documents,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (vehicleDetails != null) {
      return vehicleDetails(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleDetailsImplToJson(
      this,
    );
  }
}

abstract class _VehicleDetails extends LoginPage {
  const factory _VehicleDetails() = _$VehicleDetailsImpl;
  const _VehicleDetails._() : super._();

  factory _VehicleDetails.fromJson(Map<String, dynamic> json) =
      _$VehicleDetailsImpl.fromJson;
}

/// @nodoc
abstract class _$$PayoutInformationImplCopyWith<$Res> {
  factory _$$PayoutInformationImplCopyWith(_$PayoutInformationImpl value,
          $Res Function(_$PayoutInformationImpl) then) =
      __$$PayoutInformationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PayoutInformationImplCopyWithImpl<$Res>
    extends _$LoginPageCopyWithImpl<$Res, _$PayoutInformationImpl>
    implements _$$PayoutInformationImplCopyWith<$Res> {
  __$$PayoutInformationImplCopyWithImpl(_$PayoutInformationImpl _value,
      $Res Function(_$PayoutInformationImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PayoutInformationImpl extends _PayoutInformation {
  const _$PayoutInformationImpl({final String? $type})
      : $type = $type ?? 'payoutInformation',
        super._();

  factory _$PayoutInformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutInformationImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginPage.payoutInformation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PayoutInformationImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterNumber,
    required TResult Function(String? otp) enterOtp,
    required TResult Function() enterPassword,
    required TResult Function() setPassword,
    required TResult Function() contactDetails,
    required TResult Function() vehicleDetails,
    required TResult Function() payoutInformation,
    required TResult Function() documents,
    required TResult Function() accessDenied,
    required TResult Function(ProfileEntity profile) success,
  }) {
    return payoutInformation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterNumber,
    TResult? Function(String? otp)? enterOtp,
    TResult? Function()? enterPassword,
    TResult? Function()? setPassword,
    TResult? Function()? contactDetails,
    TResult? Function()? vehicleDetails,
    TResult? Function()? payoutInformation,
    TResult? Function()? documents,
    TResult? Function()? accessDenied,
    TResult? Function(ProfileEntity profile)? success,
  }) {
    return payoutInformation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterNumber,
    TResult Function(String? otp)? enterOtp,
    TResult Function()? enterPassword,
    TResult Function()? setPassword,
    TResult Function()? contactDetails,
    TResult Function()? vehicleDetails,
    TResult Function()? payoutInformation,
    TResult Function()? documents,
    TResult Function()? accessDenied,
    TResult Function(ProfileEntity profile)? success,
    required TResult orElse(),
  }) {
    if (payoutInformation != null) {
      return payoutInformation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumberPage value) enterNumber,
    required TResult Function(EnterOtpPage value) enterOtp,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ContactDetails value) contactDetails,
    required TResult Function(_VehicleDetails value) vehicleDetails,
    required TResult Function(_PayoutInformation value) payoutInformation,
    required TResult Function(_Documents value) documents,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_Success value) success,
  }) {
    return payoutInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumberPage value)? enterNumber,
    TResult? Function(EnterOtpPage value)? enterOtp,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ContactDetails value)? contactDetails,
    TResult? Function(_VehicleDetails value)? vehicleDetails,
    TResult? Function(_PayoutInformation value)? payoutInformation,
    TResult? Function(_Documents value)? documents,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_Success value)? success,
  }) {
    return payoutInformation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumberPage value)? enterNumber,
    TResult Function(EnterOtpPage value)? enterOtp,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ContactDetails value)? contactDetails,
    TResult Function(_VehicleDetails value)? vehicleDetails,
    TResult Function(_PayoutInformation value)? payoutInformation,
    TResult Function(_Documents value)? documents,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (payoutInformation != null) {
      return payoutInformation(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutInformationImplToJson(
      this,
    );
  }
}

abstract class _PayoutInformation extends LoginPage {
  const factory _PayoutInformation() = _$PayoutInformationImpl;
  const _PayoutInformation._() : super._();

  factory _PayoutInformation.fromJson(Map<String, dynamic> json) =
      _$PayoutInformationImpl.fromJson;
}

/// @nodoc
abstract class _$$DocumentsImplCopyWith<$Res> {
  factory _$$DocumentsImplCopyWith(
          _$DocumentsImpl value, $Res Function(_$DocumentsImpl) then) =
      __$$DocumentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DocumentsImplCopyWithImpl<$Res>
    extends _$LoginPageCopyWithImpl<$Res, _$DocumentsImpl>
    implements _$$DocumentsImplCopyWith<$Res> {
  __$$DocumentsImplCopyWithImpl(
      _$DocumentsImpl _value, $Res Function(_$DocumentsImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$DocumentsImpl extends _Documents {
  const _$DocumentsImpl({final String? $type})
      : $type = $type ?? 'documents',
        super._();

  factory _$DocumentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentsImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginPage.documents()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DocumentsImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterNumber,
    required TResult Function(String? otp) enterOtp,
    required TResult Function() enterPassword,
    required TResult Function() setPassword,
    required TResult Function() contactDetails,
    required TResult Function() vehicleDetails,
    required TResult Function() payoutInformation,
    required TResult Function() documents,
    required TResult Function() accessDenied,
    required TResult Function(ProfileEntity profile) success,
  }) {
    return documents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterNumber,
    TResult? Function(String? otp)? enterOtp,
    TResult? Function()? enterPassword,
    TResult? Function()? setPassword,
    TResult? Function()? contactDetails,
    TResult? Function()? vehicleDetails,
    TResult? Function()? payoutInformation,
    TResult? Function()? documents,
    TResult? Function()? accessDenied,
    TResult? Function(ProfileEntity profile)? success,
  }) {
    return documents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterNumber,
    TResult Function(String? otp)? enterOtp,
    TResult Function()? enterPassword,
    TResult Function()? setPassword,
    TResult Function()? contactDetails,
    TResult Function()? vehicleDetails,
    TResult Function()? payoutInformation,
    TResult Function()? documents,
    TResult Function()? accessDenied,
    TResult Function(ProfileEntity profile)? success,
    required TResult orElse(),
  }) {
    if (documents != null) {
      return documents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumberPage value) enterNumber,
    required TResult Function(EnterOtpPage value) enterOtp,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ContactDetails value) contactDetails,
    required TResult Function(_VehicleDetails value) vehicleDetails,
    required TResult Function(_PayoutInformation value) payoutInformation,
    required TResult Function(_Documents value) documents,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_Success value) success,
  }) {
    return documents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumberPage value)? enterNumber,
    TResult? Function(EnterOtpPage value)? enterOtp,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ContactDetails value)? contactDetails,
    TResult? Function(_VehicleDetails value)? vehicleDetails,
    TResult? Function(_PayoutInformation value)? payoutInformation,
    TResult? Function(_Documents value)? documents,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_Success value)? success,
  }) {
    return documents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumberPage value)? enterNumber,
    TResult Function(EnterOtpPage value)? enterOtp,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ContactDetails value)? contactDetails,
    TResult Function(_VehicleDetails value)? vehicleDetails,
    TResult Function(_PayoutInformation value)? payoutInformation,
    TResult Function(_Documents value)? documents,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (documents != null) {
      return documents(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentsImplToJson(
      this,
    );
  }
}

abstract class _Documents extends LoginPage {
  const factory _Documents() = _$DocumentsImpl;
  const _Documents._() : super._();

  factory _Documents.fromJson(Map<String, dynamic> json) =
      _$DocumentsImpl.fromJson;
}

/// @nodoc
abstract class _$$AccessDeniedImplCopyWith<$Res> {
  factory _$$AccessDeniedImplCopyWith(
          _$AccessDeniedImpl value, $Res Function(_$AccessDeniedImpl) then) =
      __$$AccessDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccessDeniedImplCopyWithImpl<$Res>
    extends _$LoginPageCopyWithImpl<$Res, _$AccessDeniedImpl>
    implements _$$AccessDeniedImplCopyWith<$Res> {
  __$$AccessDeniedImplCopyWithImpl(
      _$AccessDeniedImpl _value, $Res Function(_$AccessDeniedImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AccessDeniedImpl extends _AccessDenied {
  const _$AccessDeniedImpl({final String? $type})
      : $type = $type ?? 'accessDenied',
        super._();

  factory _$AccessDeniedImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessDeniedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginPage.accessDenied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccessDeniedImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterNumber,
    required TResult Function(String? otp) enterOtp,
    required TResult Function() enterPassword,
    required TResult Function() setPassword,
    required TResult Function() contactDetails,
    required TResult Function() vehicleDetails,
    required TResult Function() payoutInformation,
    required TResult Function() documents,
    required TResult Function() accessDenied,
    required TResult Function(ProfileEntity profile) success,
  }) {
    return accessDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterNumber,
    TResult? Function(String? otp)? enterOtp,
    TResult? Function()? enterPassword,
    TResult? Function()? setPassword,
    TResult? Function()? contactDetails,
    TResult? Function()? vehicleDetails,
    TResult? Function()? payoutInformation,
    TResult? Function()? documents,
    TResult? Function()? accessDenied,
    TResult? Function(ProfileEntity profile)? success,
  }) {
    return accessDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterNumber,
    TResult Function(String? otp)? enterOtp,
    TResult Function()? enterPassword,
    TResult Function()? setPassword,
    TResult Function()? contactDetails,
    TResult Function()? vehicleDetails,
    TResult Function()? payoutInformation,
    TResult Function()? documents,
    TResult Function()? accessDenied,
    TResult Function(ProfileEntity profile)? success,
    required TResult orElse(),
  }) {
    if (accessDenied != null) {
      return accessDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumberPage value) enterNumber,
    required TResult Function(EnterOtpPage value) enterOtp,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ContactDetails value) contactDetails,
    required TResult Function(_VehicleDetails value) vehicleDetails,
    required TResult Function(_PayoutInformation value) payoutInformation,
    required TResult Function(_Documents value) documents,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_Success value) success,
  }) {
    return accessDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumberPage value)? enterNumber,
    TResult? Function(EnterOtpPage value)? enterOtp,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ContactDetails value)? contactDetails,
    TResult? Function(_VehicleDetails value)? vehicleDetails,
    TResult? Function(_PayoutInformation value)? payoutInformation,
    TResult? Function(_Documents value)? documents,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_Success value)? success,
  }) {
    return accessDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumberPage value)? enterNumber,
    TResult Function(EnterOtpPage value)? enterOtp,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ContactDetails value)? contactDetails,
    TResult Function(_VehicleDetails value)? vehicleDetails,
    TResult Function(_PayoutInformation value)? payoutInformation,
    TResult Function(_Documents value)? documents,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (accessDenied != null) {
      return accessDenied(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessDeniedImplToJson(
      this,
    );
  }
}

abstract class _AccessDenied extends LoginPage {
  const factory _AccessDenied() = _$AccessDeniedImpl;
  const _AccessDenied._() : super._();

  factory _AccessDenied.fromJson(Map<String, dynamic> json) =
      _$AccessDeniedImpl.fromJson;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProfileEntity profile});

  $ProfileEntityCopyWith<$Res> get profile;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$LoginPageCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$SuccessImpl(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileEntityCopyWith<$Res> get profile {
    return $ProfileEntityCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessImpl extends _Success {
  const _$SuccessImpl({required this.profile, final String? $type})
      : $type = $type ?? 'success',
        super._();

  factory _$SuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessImplFromJson(json);

  @override
  final ProfileEntity profile;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginPage.success(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enterNumber,
    required TResult Function(String? otp) enterOtp,
    required TResult Function() enterPassword,
    required TResult Function() setPassword,
    required TResult Function() contactDetails,
    required TResult Function() vehicleDetails,
    required TResult Function() payoutInformation,
    required TResult Function() documents,
    required TResult Function() accessDenied,
    required TResult Function(ProfileEntity profile) success,
  }) {
    return success(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enterNumber,
    TResult? Function(String? otp)? enterOtp,
    TResult? Function()? enterPassword,
    TResult? Function()? setPassword,
    TResult? Function()? contactDetails,
    TResult? Function()? vehicleDetails,
    TResult? Function()? payoutInformation,
    TResult? Function()? documents,
    TResult? Function()? accessDenied,
    TResult? Function(ProfileEntity profile)? success,
  }) {
    return success?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enterNumber,
    TResult Function(String? otp)? enterOtp,
    TResult Function()? enterPassword,
    TResult Function()? setPassword,
    TResult Function()? contactDetails,
    TResult Function()? vehicleDetails,
    TResult Function()? payoutInformation,
    TResult Function()? documents,
    TResult Function()? accessDenied,
    TResult Function(ProfileEntity profile)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnterNumberPage value) enterNumber,
    required TResult Function(EnterOtpPage value) enterOtp,
    required TResult Function(_EnterPassword value) enterPassword,
    required TResult Function(_SetPassword value) setPassword,
    required TResult Function(_ContactDetails value) contactDetails,
    required TResult Function(_VehicleDetails value) vehicleDetails,
    required TResult Function(_PayoutInformation value) payoutInformation,
    required TResult Function(_Documents value) documents,
    required TResult Function(_AccessDenied value) accessDenied,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnterNumberPage value)? enterNumber,
    TResult? Function(EnterOtpPage value)? enterOtp,
    TResult? Function(_EnterPassword value)? enterPassword,
    TResult? Function(_SetPassword value)? setPassword,
    TResult? Function(_ContactDetails value)? contactDetails,
    TResult? Function(_VehicleDetails value)? vehicleDetails,
    TResult? Function(_PayoutInformation value)? payoutInformation,
    TResult? Function(_Documents value)? documents,
    TResult? Function(_AccessDenied value)? accessDenied,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnterNumberPage value)? enterNumber,
    TResult Function(EnterOtpPage value)? enterOtp,
    TResult Function(_EnterPassword value)? enterPassword,
    TResult Function(_SetPassword value)? setPassword,
    TResult Function(_ContactDetails value)? contactDetails,
    TResult Function(_VehicleDetails value)? vehicleDetails,
    TResult Function(_PayoutInformation value)? payoutInformation,
    TResult Function(_Documents value)? documents,
    TResult Function(_AccessDenied value)? accessDenied,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessImplToJson(
      this,
    );
  }
}

abstract class _Success extends LoginPage {
  const factory _Success({required final ProfileEntity profile}) =
      _$SuccessImpl;
  const _Success._() : super._();

  factory _Success.fromJson(Map<String, dynamic> json) = _$SuccessImpl.fromJson;

  ProfileEntity get profile;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
