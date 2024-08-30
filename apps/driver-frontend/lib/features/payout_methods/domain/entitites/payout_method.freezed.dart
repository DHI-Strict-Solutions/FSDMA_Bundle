// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payout_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PayoutMethodEntity _$PayoutMethodEntityFromJson(Map<String, dynamic> json) {
  return _PayoutMethodEntity.fromJson(json);
}

/// @nodoc
mixin _$PayoutMethodEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  GatewayLinkMethod get linkMethod => throw _privateConstructorUsedError;
  MediaEntity? get media => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayoutMethodEntityCopyWith<PayoutMethodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutMethodEntityCopyWith<$Res> {
  factory $PayoutMethodEntityCopyWith(
          PayoutMethodEntity value, $Res Function(PayoutMethodEntity) then) =
      _$PayoutMethodEntityCopyWithImpl<$Res, PayoutMethodEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      GatewayLinkMethod linkMethod,
      MediaEntity? media});

  $MediaEntityCopyWith<$Res>? get media;
}

/// @nodoc
class _$PayoutMethodEntityCopyWithImpl<$Res, $Val extends PayoutMethodEntity>
    implements $PayoutMethodEntityCopyWith<$Res> {
  _$PayoutMethodEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? linkMethod = null,
    Object? media = freezed,
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
      linkMethod: null == linkMethod
          ? _value.linkMethod
          : linkMethod // ignore: cast_nullable_to_non_nullable
              as GatewayLinkMethod,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaEntityCopyWith<$Res>? get media {
    if (_value.media == null) {
      return null;
    }

    return $MediaEntityCopyWith<$Res>(_value.media!, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PayoutMethodEntityImplCopyWith<$Res>
    implements $PayoutMethodEntityCopyWith<$Res> {
  factory _$$PayoutMethodEntityImplCopyWith(_$PayoutMethodEntityImpl value,
          $Res Function(_$PayoutMethodEntityImpl) then) =
      __$$PayoutMethodEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      GatewayLinkMethod linkMethod,
      MediaEntity? media});

  @override
  $MediaEntityCopyWith<$Res>? get media;
}

/// @nodoc
class __$$PayoutMethodEntityImplCopyWithImpl<$Res>
    extends _$PayoutMethodEntityCopyWithImpl<$Res, _$PayoutMethodEntityImpl>
    implements _$$PayoutMethodEntityImplCopyWith<$Res> {
  __$$PayoutMethodEntityImplCopyWithImpl(_$PayoutMethodEntityImpl _value,
      $Res Function(_$PayoutMethodEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? linkMethod = null,
    Object? media = freezed,
  }) {
    return _then(_$PayoutMethodEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      linkMethod: null == linkMethod
          ? _value.linkMethod
          : linkMethod // ignore: cast_nullable_to_non_nullable
              as GatewayLinkMethod,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutMethodEntityImpl extends _PayoutMethodEntity {
  const _$PayoutMethodEntityImpl(
      {required this.id,
      required this.name,
      required this.linkMethod,
      required this.media})
      : super._();

  factory _$PayoutMethodEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutMethodEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final GatewayLinkMethod linkMethod;
  @override
  final MediaEntity? media;

  @override
  String toString() {
    return 'PayoutMethodEntity(id: $id, name: $name, linkMethod: $linkMethod, media: $media)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutMethodEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.linkMethod, linkMethod) ||
                other.linkMethod == linkMethod) &&
            (identical(other.media, media) || other.media == media));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, linkMethod, media);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutMethodEntityImplCopyWith<_$PayoutMethodEntityImpl> get copyWith =>
      __$$PayoutMethodEntityImplCopyWithImpl<_$PayoutMethodEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutMethodEntityImplToJson(
      this,
    );
  }
}

abstract class _PayoutMethodEntity extends PayoutMethodEntity {
  const factory _PayoutMethodEntity(
      {required final String id,
      required final String name,
      required final GatewayLinkMethod linkMethod,
      required final MediaEntity? media}) = _$PayoutMethodEntityImpl;
  const _PayoutMethodEntity._() : super._();

  factory _PayoutMethodEntity.fromJson(Map<String, dynamic> json) =
      _$PayoutMethodEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  GatewayLinkMethod get linkMethod;
  @override
  MediaEntity? get media;
  @override
  @JsonKey(ignore: true)
  _$$PayoutMethodEntityImplCopyWith<_$PayoutMethodEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
