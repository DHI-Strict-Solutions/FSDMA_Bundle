// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReviewEntity {
  String get serviceName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  List<String> get goodPoints => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewEntityCopyWith<ReviewEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewEntityCopyWith<$Res> {
  factory $ReviewEntityCopyWith(
          ReviewEntity value, $Res Function(ReviewEntity) then) =
      _$ReviewEntityCopyWithImpl<$Res, ReviewEntity>;
  @useResult
  $Res call(
      {String serviceName,
      String description,
      double rating,
      List<String> goodPoints});
}

/// @nodoc
class _$ReviewEntityCopyWithImpl<$Res, $Val extends ReviewEntity>
    implements $ReviewEntityCopyWith<$Res> {
  _$ReviewEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceName = null,
    Object? description = null,
    Object? rating = null,
    Object? goodPoints = null,
  }) {
    return _then(_value.copyWith(
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      goodPoints: null == goodPoints
          ? _value.goodPoints
          : goodPoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewEntityImplCopyWith<$Res>
    implements $ReviewEntityCopyWith<$Res> {
  factory _$$ReviewEntityImplCopyWith(
          _$ReviewEntityImpl value, $Res Function(_$ReviewEntityImpl) then) =
      __$$ReviewEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String serviceName,
      String description,
      double rating,
      List<String> goodPoints});
}

/// @nodoc
class __$$ReviewEntityImplCopyWithImpl<$Res>
    extends _$ReviewEntityCopyWithImpl<$Res, _$ReviewEntityImpl>
    implements _$$ReviewEntityImplCopyWith<$Res> {
  __$$ReviewEntityImplCopyWithImpl(
      _$ReviewEntityImpl _value, $Res Function(_$ReviewEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceName = null,
    Object? description = null,
    Object? rating = null,
    Object? goodPoints = null,
  }) {
    return _then(_$ReviewEntityImpl(
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      goodPoints: null == goodPoints
          ? _value._goodPoints
          : goodPoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ReviewEntityImpl implements _ReviewEntity {
  const _$ReviewEntityImpl(
      {required this.serviceName,
      required this.description,
      required this.rating,
      required final List<String> goodPoints})
      : _goodPoints = goodPoints;

  @override
  final String serviceName;
  @override
  final String description;
  @override
  final double rating;
  final List<String> _goodPoints;
  @override
  List<String> get goodPoints {
    if (_goodPoints is EqualUnmodifiableListView) return _goodPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goodPoints);
  }

  @override
  String toString() {
    return 'ReviewEntity(serviceName: $serviceName, description: $description, rating: $rating, goodPoints: $goodPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewEntityImpl &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality()
                .equals(other._goodPoints, _goodPoints));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serviceName, description, rating,
      const DeepCollectionEquality().hash(_goodPoints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewEntityImplCopyWith<_$ReviewEntityImpl> get copyWith =>
      __$$ReviewEntityImplCopyWithImpl<_$ReviewEntityImpl>(this, _$identity);
}

abstract class _ReviewEntity implements ReviewEntity {
  const factory _ReviewEntity(
      {required final String serviceName,
      required final String description,
      required final double rating,
      required final List<String> goodPoints}) = _$ReviewEntityImpl;

  @override
  String get serviceName;
  @override
  String get description;
  @override
  double get rating;
  @override
  List<String> get goodPoints;
  @override
  @JsonKey(ignore: true)
  _$$ReviewEntityImplCopyWith<_$ReviewEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
