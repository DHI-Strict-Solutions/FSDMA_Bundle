// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderRequestEntity _$OrderRequestEntityFromJson(Map<String, dynamic> json) {
  return _OrderRequestEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderRequestEntity {
  String get id => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  PaymentMethodUnion get paymentMethod => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double get fee => throw _privateConstructorUsedError;
  double get providerShare => throw _privateConstructorUsedError;
  int get distance => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get serviceName => throw _privateConstructorUsedError;
  List<LatLngEntity> get route => throw _privateConstructorUsedError;
  List<PlaceEntity> get waypoints => throw _privateConstructorUsedError;
  List<RideOptionEntity> get rideOptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderRequestEntityCopyWith<OrderRequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderRequestEntityCopyWith<$Res> {
  factory $OrderRequestEntityCopyWith(
          OrderRequestEntity value, $Res Function(OrderRequestEntity) then) =
      _$OrderRequestEntityCopyWithImpl<$Res, OrderRequestEntity>;
  @useResult
  $Res call(
      {String id,
      OrderStatus status,
      PaymentMethodUnion paymentMethod,
      String currency,
      double fee,
      double providerShare,
      int distance,
      int duration,
      String serviceName,
      List<LatLngEntity> route,
      List<PlaceEntity> waypoints,
      List<RideOptionEntity> rideOptions});

  $PaymentMethodUnionCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class _$OrderRequestEntityCopyWithImpl<$Res, $Val extends OrderRequestEntity>
    implements $OrderRequestEntityCopyWith<$Res> {
  _$OrderRequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? paymentMethod = null,
    Object? currency = null,
    Object? fee = null,
    Object? providerShare = null,
    Object? distance = null,
    Object? duration = null,
    Object? serviceName = null,
    Object? route = null,
    Object? waypoints = null,
    Object? rideOptions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodUnion,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as double,
      providerShare: null == providerShare
          ? _value.providerShare
          : providerShare // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as List<LatLngEntity>,
      waypoints: null == waypoints
          ? _value.waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<PlaceEntity>,
      rideOptions: null == rideOptions
          ? _value.rideOptions
          : rideOptions // ignore: cast_nullable_to_non_nullable
              as List<RideOptionEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodUnionCopyWith<$Res> get paymentMethod {
    return $PaymentMethodUnionCopyWith<$Res>(_value.paymentMethod, (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderRequestEntityImplCopyWith<$Res>
    implements $OrderRequestEntityCopyWith<$Res> {
  factory _$$OrderRequestEntityImplCopyWith(_$OrderRequestEntityImpl value,
          $Res Function(_$OrderRequestEntityImpl) then) =
      __$$OrderRequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      OrderStatus status,
      PaymentMethodUnion paymentMethod,
      String currency,
      double fee,
      double providerShare,
      int distance,
      int duration,
      String serviceName,
      List<LatLngEntity> route,
      List<PlaceEntity> waypoints,
      List<RideOptionEntity> rideOptions});

  @override
  $PaymentMethodUnionCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class __$$OrderRequestEntityImplCopyWithImpl<$Res>
    extends _$OrderRequestEntityCopyWithImpl<$Res, _$OrderRequestEntityImpl>
    implements _$$OrderRequestEntityImplCopyWith<$Res> {
  __$$OrderRequestEntityImplCopyWithImpl(_$OrderRequestEntityImpl _value,
      $Res Function(_$OrderRequestEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? paymentMethod = null,
    Object? currency = null,
    Object? fee = null,
    Object? providerShare = null,
    Object? distance = null,
    Object? duration = null,
    Object? serviceName = null,
    Object? route = null,
    Object? waypoints = null,
    Object? rideOptions = null,
  }) {
    return _then(_$OrderRequestEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodUnion,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as double,
      providerShare: null == providerShare
          ? _value.providerShare
          : providerShare // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value._route
          : route // ignore: cast_nullable_to_non_nullable
              as List<LatLngEntity>,
      waypoints: null == waypoints
          ? _value._waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<PlaceEntity>,
      rideOptions: null == rideOptions
          ? _value._rideOptions
          : rideOptions // ignore: cast_nullable_to_non_nullable
              as List<RideOptionEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderRequestEntityImpl extends _OrderRequestEntity {
  const _$OrderRequestEntityImpl(
      {required this.id,
      required this.status,
      required this.paymentMethod,
      required this.currency,
      required this.fee,
      required this.providerShare,
      required this.distance,
      required this.duration,
      required this.serviceName,
      required final List<LatLngEntity> route,
      required final List<PlaceEntity> waypoints,
      required final List<RideOptionEntity> rideOptions})
      : _route = route,
        _waypoints = waypoints,
        _rideOptions = rideOptions,
        super._();

  factory _$OrderRequestEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderRequestEntityImplFromJson(json);

  @override
  final String id;
  @override
  final OrderStatus status;
  @override
  final PaymentMethodUnion paymentMethod;
  @override
  final String currency;
  @override
  final double fee;
  @override
  final double providerShare;
  @override
  final int distance;
  @override
  final int duration;
  @override
  final String serviceName;
  final List<LatLngEntity> _route;
  @override
  List<LatLngEntity> get route {
    if (_route is EqualUnmodifiableListView) return _route;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_route);
  }

  final List<PlaceEntity> _waypoints;
  @override
  List<PlaceEntity> get waypoints {
    if (_waypoints is EqualUnmodifiableListView) return _waypoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waypoints);
  }

  final List<RideOptionEntity> _rideOptions;
  @override
  List<RideOptionEntity> get rideOptions {
    if (_rideOptions is EqualUnmodifiableListView) return _rideOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rideOptions);
  }

  @override
  String toString() {
    return 'OrderRequestEntity(id: $id, status: $status, paymentMethod: $paymentMethod, currency: $currency, fee: $fee, providerShare: $providerShare, distance: $distance, duration: $duration, serviceName: $serviceName, route: $route, waypoints: $waypoints, rideOptions: $rideOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderRequestEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.providerShare, providerShare) ||
                other.providerShare == providerShare) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            const DeepCollectionEquality().equals(other._route, _route) &&
            const DeepCollectionEquality()
                .equals(other._waypoints, _waypoints) &&
            const DeepCollectionEquality()
                .equals(other._rideOptions, _rideOptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      paymentMethod,
      currency,
      fee,
      providerShare,
      distance,
      duration,
      serviceName,
      const DeepCollectionEquality().hash(_route),
      const DeepCollectionEquality().hash(_waypoints),
      const DeepCollectionEquality().hash(_rideOptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderRequestEntityImplCopyWith<_$OrderRequestEntityImpl> get copyWith =>
      __$$OrderRequestEntityImplCopyWithImpl<_$OrderRequestEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderRequestEntityImplToJson(
      this,
    );
  }
}

abstract class _OrderRequestEntity extends OrderRequestEntity {
  const factory _OrderRequestEntity(
          {required final String id,
          required final OrderStatus status,
          required final PaymentMethodUnion paymentMethod,
          required final String currency,
          required final double fee,
          required final double providerShare,
          required final int distance,
          required final int duration,
          required final String serviceName,
          required final List<LatLngEntity> route,
          required final List<PlaceEntity> waypoints,
          required final List<RideOptionEntity> rideOptions}) =
      _$OrderRequestEntityImpl;
  const _OrderRequestEntity._() : super._();

  factory _OrderRequestEntity.fromJson(Map<String, dynamic> json) =
      _$OrderRequestEntityImpl.fromJson;

  @override
  String get id;
  @override
  OrderStatus get status;
  @override
  PaymentMethodUnion get paymentMethod;
  @override
  String get currency;
  @override
  double get fee;
  @override
  double get providerShare;
  @override
  int get distance;
  @override
  int get duration;
  @override
  String get serviceName;
  @override
  List<LatLngEntity> get route;
  @override
  List<PlaceEntity> get waypoints;
  @override
  List<RideOptionEntity> get rideOptions;
  @override
  @JsonKey(ignore: true)
  _$$OrderRequestEntityImplCopyWith<_$OrderRequestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
