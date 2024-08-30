// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_aggregations_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileAggregationsInfo {
  int get totalRides => throw _privateConstructorUsedError;
  int get totalDistance => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileAggregationsInfoCopyWith<ProfileAggregationsInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileAggregationsInfoCopyWith<$Res> {
  factory $ProfileAggregationsInfoCopyWith(ProfileAggregationsInfo value,
          $Res Function(ProfileAggregationsInfo) then) =
      _$ProfileAggregationsInfoCopyWithImpl<$Res, ProfileAggregationsInfo>;
  @useResult
  $Res call({int totalRides, int totalDistance, int? rating});
}

/// @nodoc
class _$ProfileAggregationsInfoCopyWithImpl<$Res,
        $Val extends ProfileAggregationsInfo>
    implements $ProfileAggregationsInfoCopyWith<$Res> {
  _$ProfileAggregationsInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalRides = null,
    Object? totalDistance = null,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      totalRides: null == totalRides
          ? _value.totalRides
          : totalRides // ignore: cast_nullable_to_non_nullable
              as int,
      totalDistance: null == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as int,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileAggregationsInfoImplCopyWith<$Res>
    implements $ProfileAggregationsInfoCopyWith<$Res> {
  factory _$$ProfileAggregationsInfoImplCopyWith(
          _$ProfileAggregationsInfoImpl value,
          $Res Function(_$ProfileAggregationsInfoImpl) then) =
      __$$ProfileAggregationsInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalRides, int totalDistance, int? rating});
}

/// @nodoc
class __$$ProfileAggregationsInfoImplCopyWithImpl<$Res>
    extends _$ProfileAggregationsInfoCopyWithImpl<$Res,
        _$ProfileAggregationsInfoImpl>
    implements _$$ProfileAggregationsInfoImplCopyWith<$Res> {
  __$$ProfileAggregationsInfoImplCopyWithImpl(
      _$ProfileAggregationsInfoImpl _value,
      $Res Function(_$ProfileAggregationsInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalRides = null,
    Object? totalDistance = null,
    Object? rating = freezed,
  }) {
    return _then(_$ProfileAggregationsInfoImpl(
      totalRides: null == totalRides
          ? _value.totalRides
          : totalRides // ignore: cast_nullable_to_non_nullable
              as int,
      totalDistance: null == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as int,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ProfileAggregationsInfoImpl implements _ProfileAggregationsInfo {
  const _$ProfileAggregationsInfoImpl(
      {required this.totalRides,
      required this.totalDistance,
      required this.rating});

  @override
  final int totalRides;
  @override
  final int totalDistance;
  @override
  final int? rating;

  @override
  String toString() {
    return 'ProfileAggregationsInfo(totalRides: $totalRides, totalDistance: $totalDistance, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileAggregationsInfoImpl &&
            (identical(other.totalRides, totalRides) ||
                other.totalRides == totalRides) &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, totalRides, totalDistance, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileAggregationsInfoImplCopyWith<_$ProfileAggregationsInfoImpl>
      get copyWith => __$$ProfileAggregationsInfoImplCopyWithImpl<
          _$ProfileAggregationsInfoImpl>(this, _$identity);
}

abstract class _ProfileAggregationsInfo implements ProfileAggregationsInfo {
  const factory _ProfileAggregationsInfo(
      {required final int totalRides,
      required final int totalDistance,
      required final int? rating}) = _$ProfileAggregationsInfoImpl;

  @override
  int get totalRides;
  @override
  int get totalDistance;
  @override
  int? get rating;
  @override
  @JsonKey(ignore: true)
  _$$ProfileAggregationsInfoImplCopyWith<_$ProfileAggregationsInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
