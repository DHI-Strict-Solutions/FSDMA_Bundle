// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_remote_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegistrationRemoteData _$RegistrationRemoteDataFromJson(
    Map<String, dynamic> json) {
  return _RegistrationRemoteData.fromJson(json);
}

/// @nodoc
mixin _$RegistrationRemoteData {
  ProfileFullEntity get profile => throw _privateConstructorUsedError;
  List<VehicleModelEntity> get vehicleModels =>
      throw _privateConstructorUsedError;
  List<VehicleColorEntity> get vehicleColors =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationRemoteDataCopyWith<RegistrationRemoteData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationRemoteDataCopyWith<$Res> {
  factory $RegistrationRemoteDataCopyWith(RegistrationRemoteData value,
          $Res Function(RegistrationRemoteData) then) =
      _$RegistrationRemoteDataCopyWithImpl<$Res, RegistrationRemoteData>;
  @useResult
  $Res call(
      {ProfileFullEntity profile,
      List<VehicleModelEntity> vehicleModels,
      List<VehicleColorEntity> vehicleColors});

  $ProfileFullEntityCopyWith<$Res> get profile;
}

/// @nodoc
class _$RegistrationRemoteDataCopyWithImpl<$Res,
        $Val extends RegistrationRemoteData>
    implements $RegistrationRemoteDataCopyWith<$Res> {
  _$RegistrationRemoteDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? vehicleModels = null,
    Object? vehicleColors = null,
  }) {
    return _then(_value.copyWith(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileFullEntity,
      vehicleModels: null == vehicleModels
          ? _value.vehicleModels
          : vehicleModels // ignore: cast_nullable_to_non_nullable
              as List<VehicleModelEntity>,
      vehicleColors: null == vehicleColors
          ? _value.vehicleColors
          : vehicleColors // ignore: cast_nullable_to_non_nullable
              as List<VehicleColorEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileFullEntityCopyWith<$Res> get profile {
    return $ProfileFullEntityCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationRemoteDataImplCopyWith<$Res>
    implements $RegistrationRemoteDataCopyWith<$Res> {
  factory _$$RegistrationRemoteDataImplCopyWith(
          _$RegistrationRemoteDataImpl value,
          $Res Function(_$RegistrationRemoteDataImpl) then) =
      __$$RegistrationRemoteDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProfileFullEntity profile,
      List<VehicleModelEntity> vehicleModels,
      List<VehicleColorEntity> vehicleColors});

  @override
  $ProfileFullEntityCopyWith<$Res> get profile;
}

/// @nodoc
class __$$RegistrationRemoteDataImplCopyWithImpl<$Res>
    extends _$RegistrationRemoteDataCopyWithImpl<$Res,
        _$RegistrationRemoteDataImpl>
    implements _$$RegistrationRemoteDataImplCopyWith<$Res> {
  __$$RegistrationRemoteDataImplCopyWithImpl(
      _$RegistrationRemoteDataImpl _value,
      $Res Function(_$RegistrationRemoteDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? vehicleModels = null,
    Object? vehicleColors = null,
  }) {
    return _then(_$RegistrationRemoteDataImpl(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileFullEntity,
      vehicleModels: null == vehicleModels
          ? _value._vehicleModels
          : vehicleModels // ignore: cast_nullable_to_non_nullable
              as List<VehicleModelEntity>,
      vehicleColors: null == vehicleColors
          ? _value._vehicleColors
          : vehicleColors // ignore: cast_nullable_to_non_nullable
              as List<VehicleColorEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationRemoteDataImpl implements _RegistrationRemoteData {
  const _$RegistrationRemoteDataImpl(
      {required this.profile,
      required final List<VehicleModelEntity> vehicleModels,
      required final List<VehicleColorEntity> vehicleColors})
      : _vehicleModels = vehicleModels,
        _vehicleColors = vehicleColors;

  factory _$RegistrationRemoteDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationRemoteDataImplFromJson(json);

  @override
  final ProfileFullEntity profile;
  final List<VehicleModelEntity> _vehicleModels;
  @override
  List<VehicleModelEntity> get vehicleModels {
    if (_vehicleModels is EqualUnmodifiableListView) return _vehicleModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicleModels);
  }

  final List<VehicleColorEntity> _vehicleColors;
  @override
  List<VehicleColorEntity> get vehicleColors {
    if (_vehicleColors is EqualUnmodifiableListView) return _vehicleColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicleColors);
  }

  @override
  String toString() {
    return 'RegistrationRemoteData(profile: $profile, vehicleModels: $vehicleModels, vehicleColors: $vehicleColors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationRemoteDataImpl &&
            (identical(other.profile, profile) || other.profile == profile) &&
            const DeepCollectionEquality()
                .equals(other._vehicleModels, _vehicleModels) &&
            const DeepCollectionEquality()
                .equals(other._vehicleColors, _vehicleColors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      profile,
      const DeepCollectionEquality().hash(_vehicleModels),
      const DeepCollectionEquality().hash(_vehicleColors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationRemoteDataImplCopyWith<_$RegistrationRemoteDataImpl>
      get copyWith => __$$RegistrationRemoteDataImplCopyWithImpl<
          _$RegistrationRemoteDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationRemoteDataImplToJson(
      this,
    );
  }
}

abstract class _RegistrationRemoteData implements RegistrationRemoteData {
  const factory _RegistrationRemoteData(
          {required final ProfileFullEntity profile,
          required final List<VehicleModelEntity> vehicleModels,
          required final List<VehicleColorEntity> vehicleColors}) =
      _$RegistrationRemoteDataImpl;

  factory _RegistrationRemoteData.fromJson(Map<String, dynamic> json) =
      _$RegistrationRemoteDataImpl.fromJson;

  @override
  ProfileFullEntity get profile;
  @override
  List<VehicleModelEntity> get vehicleModels;
  @override
  List<VehicleColorEntity> get vehicleColors;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationRemoteDataImplCopyWith<_$RegistrationRemoteDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
