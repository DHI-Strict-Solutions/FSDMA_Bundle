// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VehicleColorEntity _$VehicleColorEntityFromJson(Map<String, dynamic> json) {
  return _VehicleColorEntity.fromJson(json);
}

/// @nodoc
mixin _$VehicleColorEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleColorEntityCopyWith<VehicleColorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleColorEntityCopyWith<$Res> {
  factory $VehicleColorEntityCopyWith(
          VehicleColorEntity value, $Res Function(VehicleColorEntity) then) =
      _$VehicleColorEntityCopyWithImpl<$Res, VehicleColorEntity>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$VehicleColorEntityCopyWithImpl<$Res, $Val extends VehicleColorEntity>
    implements $VehicleColorEntityCopyWith<$Res> {
  _$VehicleColorEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleColorEntityImplCopyWith<$Res>
    implements $VehicleColorEntityCopyWith<$Res> {
  factory _$$VehicleColorEntityImplCopyWith(_$VehicleColorEntityImpl value,
          $Res Function(_$VehicleColorEntityImpl) then) =
      __$$VehicleColorEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$VehicleColorEntityImplCopyWithImpl<$Res>
    extends _$VehicleColorEntityCopyWithImpl<$Res, _$VehicleColorEntityImpl>
    implements _$$VehicleColorEntityImplCopyWith<$Res> {
  __$$VehicleColorEntityImplCopyWithImpl(_$VehicleColorEntityImpl _value,
      $Res Function(_$VehicleColorEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$VehicleColorEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleColorEntityImpl implements _VehicleColorEntity {
  const _$VehicleColorEntityImpl({required this.id, required this.name});

  factory _$VehicleColorEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleColorEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'VehicleColorEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleColorEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleColorEntityImplCopyWith<_$VehicleColorEntityImpl> get copyWith =>
      __$$VehicleColorEntityImplCopyWithImpl<_$VehicleColorEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleColorEntityImplToJson(
      this,
    );
  }
}

abstract class _VehicleColorEntity implements VehicleColorEntity {
  const factory _VehicleColorEntity(
      {required final String id,
      required final String name}) = _$VehicleColorEntityImpl;

  factory _VehicleColorEntity.fromJson(Map<String, dynamic> json) =
      _$VehicleColorEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$VehicleColorEntityImplCopyWith<_$VehicleColorEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
