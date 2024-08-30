// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_dataset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EarningsDataset {
  String get currency => throw _privateConstructorUsedError;
  List<EarningsDatapoint> get datapoints => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EarningsDatasetCopyWith<EarningsDataset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsDatasetCopyWith<$Res> {
  factory $EarningsDatasetCopyWith(
          EarningsDataset value, $Res Function(EarningsDataset) then) =
      _$EarningsDatasetCopyWithImpl<$Res, EarningsDataset>;
  @useResult
  $Res call({String currency, List<EarningsDatapoint> datapoints});
}

/// @nodoc
class _$EarningsDatasetCopyWithImpl<$Res, $Val extends EarningsDataset>
    implements $EarningsDatasetCopyWith<$Res> {
  _$EarningsDatasetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? datapoints = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      datapoints: null == datapoints
          ? _value.datapoints
          : datapoints // ignore: cast_nullable_to_non_nullable
              as List<EarningsDatapoint>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarningsDatasetImplCopyWith<$Res>
    implements $EarningsDatasetCopyWith<$Res> {
  factory _$$EarningsDatasetImplCopyWith(_$EarningsDatasetImpl value,
          $Res Function(_$EarningsDatasetImpl) then) =
      __$$EarningsDatasetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currency, List<EarningsDatapoint> datapoints});
}

/// @nodoc
class __$$EarningsDatasetImplCopyWithImpl<$Res>
    extends _$EarningsDatasetCopyWithImpl<$Res, _$EarningsDatasetImpl>
    implements _$$EarningsDatasetImplCopyWith<$Res> {
  __$$EarningsDatasetImplCopyWithImpl(
      _$EarningsDatasetImpl _value, $Res Function(_$EarningsDatasetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? datapoints = null,
  }) {
    return _then(_$EarningsDatasetImpl(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      datapoints: null == datapoints
          ? _value._datapoints
          : datapoints // ignore: cast_nullable_to_non_nullable
              as List<EarningsDatapoint>,
    ));
  }
}

/// @nodoc

class _$EarningsDatasetImpl extends _EarningsDataset {
  const _$EarningsDatasetImpl(
      {required this.currency,
      required final List<EarningsDatapoint> datapoints})
      : _datapoints = datapoints,
        super._();

  @override
  final String currency;
  final List<EarningsDatapoint> _datapoints;
  @override
  List<EarningsDatapoint> get datapoints {
    if (_datapoints is EqualUnmodifiableListView) return _datapoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_datapoints);
  }

  @override
  String toString() {
    return 'EarningsDataset(currency: $currency, datapoints: $datapoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningsDatasetImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality()
                .equals(other._datapoints, _datapoints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currency, const DeepCollectionEquality().hash(_datapoints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningsDatasetImplCopyWith<_$EarningsDatasetImpl> get copyWith =>
      __$$EarningsDatasetImplCopyWithImpl<_$EarningsDatasetImpl>(
          this, _$identity);
}

abstract class _EarningsDataset extends EarningsDataset {
  const factory _EarningsDataset(
          {required final String currency,
          required final List<EarningsDatapoint> datapoints}) =
      _$EarningsDatasetImpl;
  const _EarningsDataset._() : super._();

  @override
  String get currency;
  @override
  List<EarningsDatapoint> get datapoints;
  @override
  @JsonKey(ignore: true)
  _$$EarningsDatasetImplCopyWith<_$EarningsDatasetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EarningsDatapoint {
  String get title => throw _privateConstructorUsedError;
  double get earnings => throw _privateConstructorUsedError;
  int get rides => throw _privateConstructorUsedError;
  int get timeSpent => throw _privateConstructorUsedError;
  int get distanceTraveled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EarningsDatapointCopyWith<EarningsDatapoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsDatapointCopyWith<$Res> {
  factory $EarningsDatapointCopyWith(
          EarningsDatapoint value, $Res Function(EarningsDatapoint) then) =
      _$EarningsDatapointCopyWithImpl<$Res, EarningsDatapoint>;
  @useResult
  $Res call(
      {String title,
      double earnings,
      int rides,
      int timeSpent,
      int distanceTraveled});
}

/// @nodoc
class _$EarningsDatapointCopyWithImpl<$Res, $Val extends EarningsDatapoint>
    implements $EarningsDatapointCopyWith<$Res> {
  _$EarningsDatapointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? earnings = null,
    Object? rides = null,
    Object? timeSpent = null,
    Object? distanceTraveled = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      earnings: null == earnings
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as double,
      rides: null == rides
          ? _value.rides
          : rides // ignore: cast_nullable_to_non_nullable
              as int,
      timeSpent: null == timeSpent
          ? _value.timeSpent
          : timeSpent // ignore: cast_nullable_to_non_nullable
              as int,
      distanceTraveled: null == distanceTraveled
          ? _value.distanceTraveled
          : distanceTraveled // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarningsDatapointImplCopyWith<$Res>
    implements $EarningsDatapointCopyWith<$Res> {
  factory _$$EarningsDatapointImplCopyWith(_$EarningsDatapointImpl value,
          $Res Function(_$EarningsDatapointImpl) then) =
      __$$EarningsDatapointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      double earnings,
      int rides,
      int timeSpent,
      int distanceTraveled});
}

/// @nodoc
class __$$EarningsDatapointImplCopyWithImpl<$Res>
    extends _$EarningsDatapointCopyWithImpl<$Res, _$EarningsDatapointImpl>
    implements _$$EarningsDatapointImplCopyWith<$Res> {
  __$$EarningsDatapointImplCopyWithImpl(_$EarningsDatapointImpl _value,
      $Res Function(_$EarningsDatapointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? earnings = null,
    Object? rides = null,
    Object? timeSpent = null,
    Object? distanceTraveled = null,
  }) {
    return _then(_$EarningsDatapointImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      earnings: null == earnings
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as double,
      rides: null == rides
          ? _value.rides
          : rides // ignore: cast_nullable_to_non_nullable
              as int,
      timeSpent: null == timeSpent
          ? _value.timeSpent
          : timeSpent // ignore: cast_nullable_to_non_nullable
              as int,
      distanceTraveled: null == distanceTraveled
          ? _value.distanceTraveled
          : distanceTraveled // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EarningsDatapointImpl implements _EarningsDatapoint {
  const _$EarningsDatapointImpl(
      {required this.title,
      required this.earnings,
      required this.rides,
      required this.timeSpent,
      required this.distanceTraveled});

  @override
  final String title;
  @override
  final double earnings;
  @override
  final int rides;
  @override
  final int timeSpent;
  @override
  final int distanceTraveled;

  @override
  String toString() {
    return 'EarningsDatapoint(title: $title, earnings: $earnings, rides: $rides, timeSpent: $timeSpent, distanceTraveled: $distanceTraveled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningsDatapointImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.earnings, earnings) ||
                other.earnings == earnings) &&
            (identical(other.rides, rides) || other.rides == rides) &&
            (identical(other.timeSpent, timeSpent) ||
                other.timeSpent == timeSpent) &&
            (identical(other.distanceTraveled, distanceTraveled) ||
                other.distanceTraveled == distanceTraveled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, earnings, rides, timeSpent, distanceTraveled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningsDatapointImplCopyWith<_$EarningsDatapointImpl> get copyWith =>
      __$$EarningsDatapointImplCopyWithImpl<_$EarningsDatapointImpl>(
          this, _$identity);
}

abstract class _EarningsDatapoint implements EarningsDatapoint {
  const factory _EarningsDatapoint(
      {required final String title,
      required final double earnings,
      required final int rides,
      required final int timeSpent,
      required final int distanceTraveled}) = _$EarningsDatapointImpl;

  @override
  String get title;
  @override
  double get earnings;
  @override
  int get rides;
  @override
  int get timeSpent;
  @override
  int get distanceTraveled;
  @override
  @JsonKey(ignore: true)
  _$$EarningsDatapointImplCopyWith<_$EarningsDatapointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
