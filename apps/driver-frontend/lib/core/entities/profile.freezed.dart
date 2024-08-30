// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileEntity _$ProfileEntityFromJson(Map<String, dynamic> json) {
  return _ProfileEntity.fromJson(json);
}

/// @nodoc
mixin _$ProfileEntity {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  DriverStatus get status => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  MediaEntity? get profilePicture => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  int? get searchRadius => throw _privateConstructorUsedError;
  List<WalletEntity> get wallets => throw _privateConstructorUsedError;
  List<OrderEntity> get orders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileEntityCopyWith<ProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEntityCopyWith<$Res> {
  factory $ProfileEntityCopyWith(
          ProfileEntity value, $Res Function(ProfileEntity) then) =
      _$ProfileEntityCopyWithImpl<$Res, ProfileEntity>;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      DriverStatus status,
      Gender? gender,
      String? email,
      String? countryCode,
      MediaEntity? profilePicture,
      String number,
      int? searchRadius,
      List<WalletEntity> wallets,
      List<OrderEntity> orders});

  $DriverStatusCopyWith<$Res> get status;
  $MediaEntityCopyWith<$Res>? get profilePicture;
}

/// @nodoc
class _$ProfileEntityCopyWithImpl<$Res, $Val extends ProfileEntity>
    implements $ProfileEntityCopyWith<$Res> {
  _$ProfileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? status = null,
    Object? gender = freezed,
    Object? email = freezed,
    Object? countryCode = freezed,
    Object? profilePicture = freezed,
    Object? number = null,
    Object? searchRadius = freezed,
    Object? wallets = null,
    Object? orders = null,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DriverStatus,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as MediaEntity?,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      searchRadius: freezed == searchRadius
          ? _value.searchRadius
          : searchRadius // ignore: cast_nullable_to_non_nullable
              as int?,
      wallets: null == wallets
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<WalletEntity>,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverStatusCopyWith<$Res> get status {
    return $DriverStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaEntityCopyWith<$Res>? get profilePicture {
    if (_value.profilePicture == null) {
      return null;
    }

    return $MediaEntityCopyWith<$Res>(_value.profilePicture!, (value) {
      return _then(_value.copyWith(profilePicture: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileEntityImplCopyWith<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  factory _$$ProfileEntityImplCopyWith(
          _$ProfileEntityImpl value, $Res Function(_$ProfileEntityImpl) then) =
      __$$ProfileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      DriverStatus status,
      Gender? gender,
      String? email,
      String? countryCode,
      MediaEntity? profilePicture,
      String number,
      int? searchRadius,
      List<WalletEntity> wallets,
      List<OrderEntity> orders});

  @override
  $DriverStatusCopyWith<$Res> get status;
  @override
  $MediaEntityCopyWith<$Res>? get profilePicture;
}

/// @nodoc
class __$$ProfileEntityImplCopyWithImpl<$Res>
    extends _$ProfileEntityCopyWithImpl<$Res, _$ProfileEntityImpl>
    implements _$$ProfileEntityImplCopyWith<$Res> {
  __$$ProfileEntityImplCopyWithImpl(
      _$ProfileEntityImpl _value, $Res Function(_$ProfileEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? status = null,
    Object? gender = freezed,
    Object? email = freezed,
    Object? countryCode = freezed,
    Object? profilePicture = freezed,
    Object? number = null,
    Object? searchRadius = freezed,
    Object? wallets = null,
    Object? orders = null,
  }) {
    return _then(_$ProfileEntityImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DriverStatus,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicture: freezed == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as MediaEntity?,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      searchRadius: freezed == searchRadius
          ? _value.searchRadius
          : searchRadius // ignore: cast_nullable_to_non_nullable
              as int?,
      wallets: null == wallets
          ? _value._wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<WalletEntity>,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileEntityImpl extends _ProfileEntity {
  const _$ProfileEntityImpl(
      {required this.firstName,
      required this.lastName,
      required this.status,
      required this.gender,
      required this.email,
      required this.countryCode,
      required this.profilePicture,
      required this.number,
      required this.searchRadius,
      required final List<WalletEntity> wallets,
      required final List<OrderEntity> orders})
      : _wallets = wallets,
        _orders = orders,
        super._();

  factory _$ProfileEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileEntityImplFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final DriverStatus status;
  @override
  final Gender? gender;
  @override
  final String? email;
  @override
  final String? countryCode;
  @override
  final MediaEntity? profilePicture;
  @override
  final String number;
  @override
  final int? searchRadius;
  final List<WalletEntity> _wallets;
  @override
  List<WalletEntity> get wallets {
    if (_wallets is EqualUnmodifiableListView) return _wallets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wallets);
  }

  final List<OrderEntity> _orders;
  @override
  List<OrderEntity> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'ProfileEntity(firstName: $firstName, lastName: $lastName, status: $status, gender: $gender, email: $email, countryCode: $countryCode, profilePicture: $profilePicture, number: $number, searchRadius: $searchRadius, wallets: $wallets, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileEntityImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.searchRadius, searchRadius) ||
                other.searchRadius == searchRadius) &&
            const DeepCollectionEquality().equals(other._wallets, _wallets) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      status,
      gender,
      email,
      countryCode,
      profilePicture,
      number,
      searchRadius,
      const DeepCollectionEquality().hash(_wallets),
      const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileEntityImplCopyWith<_$ProfileEntityImpl> get copyWith =>
      __$$ProfileEntityImplCopyWithImpl<_$ProfileEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileEntityImplToJson(
      this,
    );
  }
}

abstract class _ProfileEntity extends ProfileEntity {
  const factory _ProfileEntity(
      {required final String? firstName,
      required final String? lastName,
      required final DriverStatus status,
      required final Gender? gender,
      required final String? email,
      required final String? countryCode,
      required final MediaEntity? profilePicture,
      required final String number,
      required final int? searchRadius,
      required final List<WalletEntity> wallets,
      required final List<OrderEntity> orders}) = _$ProfileEntityImpl;
  const _ProfileEntity._() : super._();

  factory _ProfileEntity.fromJson(Map<String, dynamic> json) =
      _$ProfileEntityImpl.fromJson;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  DriverStatus get status;
  @override
  Gender? get gender;
  @override
  String? get email;
  @override
  String? get countryCode;
  @override
  MediaEntity? get profilePicture;
  @override
  String get number;
  @override
  int? get searchRadius;
  @override
  List<WalletEntity> get wallets;
  @override
  List<OrderEntity> get orders;
  @override
  @JsonKey(ignore: true)
  _$$ProfileEntityImplCopyWith<_$ProfileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
