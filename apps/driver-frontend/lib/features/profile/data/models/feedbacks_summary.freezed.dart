// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedbacks_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedbacksSummary {
  double? get averageRating => throw _privateConstructorUsedError;
  List<String> get goodPoints => throw _privateConstructorUsedError;
  List<String> get badPoints => throw _privateConstructorUsedError;
  List<ReviewEntity> get goodReviews => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedbacksSummaryCopyWith<FeedbacksSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbacksSummaryCopyWith<$Res> {
  factory $FeedbacksSummaryCopyWith(
          FeedbacksSummary value, $Res Function(FeedbacksSummary) then) =
      _$FeedbacksSummaryCopyWithImpl<$Res, FeedbacksSummary>;
  @useResult
  $Res call(
      {double? averageRating,
      List<String> goodPoints,
      List<String> badPoints,
      List<ReviewEntity> goodReviews});
}

/// @nodoc
class _$FeedbacksSummaryCopyWithImpl<$Res, $Val extends FeedbacksSummary>
    implements $FeedbacksSummaryCopyWith<$Res> {
  _$FeedbacksSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageRating = freezed,
    Object? goodPoints = null,
    Object? badPoints = null,
    Object? goodReviews = null,
  }) {
    return _then(_value.copyWith(
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      goodPoints: null == goodPoints
          ? _value.goodPoints
          : goodPoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      badPoints: null == badPoints
          ? _value.badPoints
          : badPoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      goodReviews: null == goodReviews
          ? _value.goodReviews
          : goodReviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedbacksSummaryImplCopyWith<$Res>
    implements $FeedbacksSummaryCopyWith<$Res> {
  factory _$$FeedbacksSummaryImplCopyWith(_$FeedbacksSummaryImpl value,
          $Res Function(_$FeedbacksSummaryImpl) then) =
      __$$FeedbacksSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? averageRating,
      List<String> goodPoints,
      List<String> badPoints,
      List<ReviewEntity> goodReviews});
}

/// @nodoc
class __$$FeedbacksSummaryImplCopyWithImpl<$Res>
    extends _$FeedbacksSummaryCopyWithImpl<$Res, _$FeedbacksSummaryImpl>
    implements _$$FeedbacksSummaryImplCopyWith<$Res> {
  __$$FeedbacksSummaryImplCopyWithImpl(_$FeedbacksSummaryImpl _value,
      $Res Function(_$FeedbacksSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageRating = freezed,
    Object? goodPoints = null,
    Object? badPoints = null,
    Object? goodReviews = null,
  }) {
    return _then(_$FeedbacksSummaryImpl(
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      goodPoints: null == goodPoints
          ? _value._goodPoints
          : goodPoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      badPoints: null == badPoints
          ? _value._badPoints
          : badPoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      goodReviews: null == goodReviews
          ? _value._goodReviews
          : goodReviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewEntity>,
    ));
  }
}

/// @nodoc

class _$FeedbacksSummaryImpl implements _FeedbacksSummary {
  const _$FeedbacksSummaryImpl(
      {required this.averageRating,
      required final List<String> goodPoints,
      required final List<String> badPoints,
      required final List<ReviewEntity> goodReviews})
      : _goodPoints = goodPoints,
        _badPoints = badPoints,
        _goodReviews = goodReviews;

  @override
  final double? averageRating;
  final List<String> _goodPoints;
  @override
  List<String> get goodPoints {
    if (_goodPoints is EqualUnmodifiableListView) return _goodPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goodPoints);
  }

  final List<String> _badPoints;
  @override
  List<String> get badPoints {
    if (_badPoints is EqualUnmodifiableListView) return _badPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badPoints);
  }

  final List<ReviewEntity> _goodReviews;
  @override
  List<ReviewEntity> get goodReviews {
    if (_goodReviews is EqualUnmodifiableListView) return _goodReviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goodReviews);
  }

  @override
  String toString() {
    return 'FeedbacksSummary(averageRating: $averageRating, goodPoints: $goodPoints, badPoints: $badPoints, goodReviews: $goodReviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbacksSummaryImpl &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            const DeepCollectionEquality()
                .equals(other._goodPoints, _goodPoints) &&
            const DeepCollectionEquality()
                .equals(other._badPoints, _badPoints) &&
            const DeepCollectionEquality()
                .equals(other._goodReviews, _goodReviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      averageRating,
      const DeepCollectionEquality().hash(_goodPoints),
      const DeepCollectionEquality().hash(_badPoints),
      const DeepCollectionEquality().hash(_goodReviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbacksSummaryImplCopyWith<_$FeedbacksSummaryImpl> get copyWith =>
      __$$FeedbacksSummaryImplCopyWithImpl<_$FeedbacksSummaryImpl>(
          this, _$identity);
}

abstract class _FeedbacksSummary implements FeedbacksSummary {
  const factory _FeedbacksSummary(
      {required final double? averageRating,
      required final List<String> goodPoints,
      required final List<String> badPoints,
      required final List<ReviewEntity> goodReviews}) = _$FeedbacksSummaryImpl;

  @override
  double? get averageRating;
  @override
  List<String> get goodPoints;
  @override
  List<String> get badPoints;
  @override
  List<ReviewEntity> get goodReviews;
  @override
  @JsonKey(ignore: true)
  _$$FeedbacksSummaryImplCopyWith<_$FeedbacksSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
