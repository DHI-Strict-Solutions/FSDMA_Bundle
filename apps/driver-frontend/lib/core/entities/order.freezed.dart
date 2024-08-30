// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) {
  return _OrderEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderEntity {
  String get id => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get expextedAt => throw _privateConstructorUsedError;
  DateTime? get startAt => throw _privateConstructorUsedError;
  DateTime? get finishAt => throw _privateConstructorUsedError;
  DateTime? get etaPickupAt => throw _privateConstructorUsedError;
  DateTime get lastSeenMessagesAt => throw _privateConstructorUsedError;
  int? get destinationArrivedTo => throw _privateConstructorUsedError;
  double get providerShare => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  List<PlaceEntity> get waypoints => throw _privateConstructorUsedError;
  int get waitMinutes => throw _privateConstructorUsedError;
  double get waitCost => throw _privateConstructorUsedError;
  double get rideOptionsCost => throw _privateConstructorUsedError;
  double get taxCost => throw _privateConstructorUsedError;
  double get serviceCost => throw _privateConstructorUsedError;
  double get costBest => throw _privateConstructorUsedError;
  double get costAfterCoupon => throw _privateConstructorUsedError;
  PaymentMode get paymentMode => throw _privateConstructorUsedError;
  int get durationBest => throw _privateConstructorUsedError;
  int get distanceBest => throw _privateConstructorUsedError;
  List<LatLngEntity> get rideDirections => throw _privateConstructorUsedError;
  List<LatLngEntity> get driverDirections => throw _privateConstructorUsedError;
  List<RideOptionEntity> get rideOptions => throw _privateConstructorUsedError;
  String? get riderFirstName => throw _privateConstructorUsedError;
  String? get riderLastName => throw _privateConstructorUsedError;
  String get riderPhoneNumber => throw _privateConstructorUsedError;
  String? get riderPhotoUrl => throw _privateConstructorUsedError;
  int? get riderPresetPhotoId => throw _privateConstructorUsedError;
  String get serviceName => throw _privateConstructorUsedError;
  bool get cashPaymentAllowed => throw _privateConstructorUsedError;
  List<ChatMessageEntity> get chatMessages =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res, OrderEntity>;
  @useResult
  $Res call(
      {String id,
      OrderStatus status,
      DateTime createdAt,
      DateTime expextedAt,
      DateTime? startAt,
      DateTime? finishAt,
      DateTime? etaPickupAt,
      DateTime lastSeenMessagesAt,
      int? destinationArrivedTo,
      double providerShare,
      String currency,
      List<PlaceEntity> waypoints,
      int waitMinutes,
      double waitCost,
      double rideOptionsCost,
      double taxCost,
      double serviceCost,
      double costBest,
      double costAfterCoupon,
      PaymentMode paymentMode,
      int durationBest,
      int distanceBest,
      List<LatLngEntity> rideDirections,
      List<LatLngEntity> driverDirections,
      List<RideOptionEntity> rideOptions,
      String? riderFirstName,
      String? riderLastName,
      String riderPhoneNumber,
      String? riderPhotoUrl,
      int? riderPresetPhotoId,
      String serviceName,
      bool cashPaymentAllowed,
      List<ChatMessageEntity> chatMessages});
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res, $Val extends OrderEntity>
    implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? createdAt = null,
    Object? expextedAt = null,
    Object? startAt = freezed,
    Object? finishAt = freezed,
    Object? etaPickupAt = freezed,
    Object? lastSeenMessagesAt = null,
    Object? destinationArrivedTo = freezed,
    Object? providerShare = null,
    Object? currency = null,
    Object? waypoints = null,
    Object? waitMinutes = null,
    Object? waitCost = null,
    Object? rideOptionsCost = null,
    Object? taxCost = null,
    Object? serviceCost = null,
    Object? costBest = null,
    Object? costAfterCoupon = null,
    Object? paymentMode = null,
    Object? durationBest = null,
    Object? distanceBest = null,
    Object? rideDirections = null,
    Object? driverDirections = null,
    Object? rideOptions = null,
    Object? riderFirstName = freezed,
    Object? riderLastName = freezed,
    Object? riderPhoneNumber = null,
    Object? riderPhotoUrl = freezed,
    Object? riderPresetPhotoId = freezed,
    Object? serviceName = null,
    Object? cashPaymentAllowed = null,
    Object? chatMessages = null,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expextedAt: null == expextedAt
          ? _value.expextedAt
          : expextedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishAt: freezed == finishAt
          ? _value.finishAt
          : finishAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      etaPickupAt: freezed == etaPickupAt
          ? _value.etaPickupAt
          : etaPickupAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastSeenMessagesAt: null == lastSeenMessagesAt
          ? _value.lastSeenMessagesAt
          : lastSeenMessagesAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      destinationArrivedTo: freezed == destinationArrivedTo
          ? _value.destinationArrivedTo
          : destinationArrivedTo // ignore: cast_nullable_to_non_nullable
              as int?,
      providerShare: null == providerShare
          ? _value.providerShare
          : providerShare // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      waypoints: null == waypoints
          ? _value.waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<PlaceEntity>,
      waitMinutes: null == waitMinutes
          ? _value.waitMinutes
          : waitMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      waitCost: null == waitCost
          ? _value.waitCost
          : waitCost // ignore: cast_nullable_to_non_nullable
              as double,
      rideOptionsCost: null == rideOptionsCost
          ? _value.rideOptionsCost
          : rideOptionsCost // ignore: cast_nullable_to_non_nullable
              as double,
      taxCost: null == taxCost
          ? _value.taxCost
          : taxCost // ignore: cast_nullable_to_non_nullable
              as double,
      serviceCost: null == serviceCost
          ? _value.serviceCost
          : serviceCost // ignore: cast_nullable_to_non_nullable
              as double,
      costBest: null == costBest
          ? _value.costBest
          : costBest // ignore: cast_nullable_to_non_nullable
              as double,
      costAfterCoupon: null == costAfterCoupon
          ? _value.costAfterCoupon
          : costAfterCoupon // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as PaymentMode,
      durationBest: null == durationBest
          ? _value.durationBest
          : durationBest // ignore: cast_nullable_to_non_nullable
              as int,
      distanceBest: null == distanceBest
          ? _value.distanceBest
          : distanceBest // ignore: cast_nullable_to_non_nullable
              as int,
      rideDirections: null == rideDirections
          ? _value.rideDirections
          : rideDirections // ignore: cast_nullable_to_non_nullable
              as List<LatLngEntity>,
      driverDirections: null == driverDirections
          ? _value.driverDirections
          : driverDirections // ignore: cast_nullable_to_non_nullable
              as List<LatLngEntity>,
      rideOptions: null == rideOptions
          ? _value.rideOptions
          : rideOptions // ignore: cast_nullable_to_non_nullable
              as List<RideOptionEntity>,
      riderFirstName: freezed == riderFirstName
          ? _value.riderFirstName
          : riderFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      riderLastName: freezed == riderLastName
          ? _value.riderLastName
          : riderLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      riderPhoneNumber: null == riderPhoneNumber
          ? _value.riderPhoneNumber
          : riderPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      riderPhotoUrl: freezed == riderPhotoUrl
          ? _value.riderPhotoUrl
          : riderPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      riderPresetPhotoId: freezed == riderPresetPhotoId
          ? _value.riderPresetPhotoId
          : riderPresetPhotoId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      cashPaymentAllowed: null == cashPaymentAllowed
          ? _value.cashPaymentAllowed
          : cashPaymentAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      chatMessages: null == chatMessages
          ? _value.chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderEntityImplCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$$OrderEntityImplCopyWith(
          _$OrderEntityImpl value, $Res Function(_$OrderEntityImpl) then) =
      __$$OrderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      OrderStatus status,
      DateTime createdAt,
      DateTime expextedAt,
      DateTime? startAt,
      DateTime? finishAt,
      DateTime? etaPickupAt,
      DateTime lastSeenMessagesAt,
      int? destinationArrivedTo,
      double providerShare,
      String currency,
      List<PlaceEntity> waypoints,
      int waitMinutes,
      double waitCost,
      double rideOptionsCost,
      double taxCost,
      double serviceCost,
      double costBest,
      double costAfterCoupon,
      PaymentMode paymentMode,
      int durationBest,
      int distanceBest,
      List<LatLngEntity> rideDirections,
      List<LatLngEntity> driverDirections,
      List<RideOptionEntity> rideOptions,
      String? riderFirstName,
      String? riderLastName,
      String riderPhoneNumber,
      String? riderPhotoUrl,
      int? riderPresetPhotoId,
      String serviceName,
      bool cashPaymentAllowed,
      List<ChatMessageEntity> chatMessages});
}

/// @nodoc
class __$$OrderEntityImplCopyWithImpl<$Res>
    extends _$OrderEntityCopyWithImpl<$Res, _$OrderEntityImpl>
    implements _$$OrderEntityImplCopyWith<$Res> {
  __$$OrderEntityImplCopyWithImpl(
      _$OrderEntityImpl _value, $Res Function(_$OrderEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? createdAt = null,
    Object? expextedAt = null,
    Object? startAt = freezed,
    Object? finishAt = freezed,
    Object? etaPickupAt = freezed,
    Object? lastSeenMessagesAt = null,
    Object? destinationArrivedTo = freezed,
    Object? providerShare = null,
    Object? currency = null,
    Object? waypoints = null,
    Object? waitMinutes = null,
    Object? waitCost = null,
    Object? rideOptionsCost = null,
    Object? taxCost = null,
    Object? serviceCost = null,
    Object? costBest = null,
    Object? costAfterCoupon = null,
    Object? paymentMode = null,
    Object? durationBest = null,
    Object? distanceBest = null,
    Object? rideDirections = null,
    Object? driverDirections = null,
    Object? rideOptions = null,
    Object? riderFirstName = freezed,
    Object? riderLastName = freezed,
    Object? riderPhoneNumber = null,
    Object? riderPhotoUrl = freezed,
    Object? riderPresetPhotoId = freezed,
    Object? serviceName = null,
    Object? cashPaymentAllowed = null,
    Object? chatMessages = null,
  }) {
    return _then(_$OrderEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expextedAt: null == expextedAt
          ? _value.expextedAt
          : expextedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishAt: freezed == finishAt
          ? _value.finishAt
          : finishAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      etaPickupAt: freezed == etaPickupAt
          ? _value.etaPickupAt
          : etaPickupAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastSeenMessagesAt: null == lastSeenMessagesAt
          ? _value.lastSeenMessagesAt
          : lastSeenMessagesAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      destinationArrivedTo: freezed == destinationArrivedTo
          ? _value.destinationArrivedTo
          : destinationArrivedTo // ignore: cast_nullable_to_non_nullable
              as int?,
      providerShare: null == providerShare
          ? _value.providerShare
          : providerShare // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      waypoints: null == waypoints
          ? _value._waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<PlaceEntity>,
      waitMinutes: null == waitMinutes
          ? _value.waitMinutes
          : waitMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      waitCost: null == waitCost
          ? _value.waitCost
          : waitCost // ignore: cast_nullable_to_non_nullable
              as double,
      rideOptionsCost: null == rideOptionsCost
          ? _value.rideOptionsCost
          : rideOptionsCost // ignore: cast_nullable_to_non_nullable
              as double,
      taxCost: null == taxCost
          ? _value.taxCost
          : taxCost // ignore: cast_nullable_to_non_nullable
              as double,
      serviceCost: null == serviceCost
          ? _value.serviceCost
          : serviceCost // ignore: cast_nullable_to_non_nullable
              as double,
      costBest: null == costBest
          ? _value.costBest
          : costBest // ignore: cast_nullable_to_non_nullable
              as double,
      costAfterCoupon: null == costAfterCoupon
          ? _value.costAfterCoupon
          : costAfterCoupon // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMode: null == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as PaymentMode,
      durationBest: null == durationBest
          ? _value.durationBest
          : durationBest // ignore: cast_nullable_to_non_nullable
              as int,
      distanceBest: null == distanceBest
          ? _value.distanceBest
          : distanceBest // ignore: cast_nullable_to_non_nullable
              as int,
      rideDirections: null == rideDirections
          ? _value._rideDirections
          : rideDirections // ignore: cast_nullable_to_non_nullable
              as List<LatLngEntity>,
      driverDirections: null == driverDirections
          ? _value._driverDirections
          : driverDirections // ignore: cast_nullable_to_non_nullable
              as List<LatLngEntity>,
      rideOptions: null == rideOptions
          ? _value._rideOptions
          : rideOptions // ignore: cast_nullable_to_non_nullable
              as List<RideOptionEntity>,
      riderFirstName: freezed == riderFirstName
          ? _value.riderFirstName
          : riderFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      riderLastName: freezed == riderLastName
          ? _value.riderLastName
          : riderLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      riderPhoneNumber: null == riderPhoneNumber
          ? _value.riderPhoneNumber
          : riderPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      riderPhotoUrl: freezed == riderPhotoUrl
          ? _value.riderPhotoUrl
          : riderPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      riderPresetPhotoId: freezed == riderPresetPhotoId
          ? _value.riderPresetPhotoId
          : riderPresetPhotoId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceName: null == serviceName
          ? _value.serviceName
          : serviceName // ignore: cast_nullable_to_non_nullable
              as String,
      cashPaymentAllowed: null == cashPaymentAllowed
          ? _value.cashPaymentAllowed
          : cashPaymentAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      chatMessages: null == chatMessages
          ? _value._chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderEntityImpl extends _OrderEntity {
  const _$OrderEntityImpl(
      {required this.id,
      required this.status,
      required this.createdAt,
      required this.expextedAt,
      required this.startAt,
      required this.finishAt,
      required this.etaPickupAt,
      required this.lastSeenMessagesAt,
      required this.destinationArrivedTo,
      required this.providerShare,
      required this.currency,
      required final List<PlaceEntity> waypoints,
      required this.waitMinutes,
      required this.waitCost,
      required this.rideOptionsCost,
      required this.taxCost,
      required this.serviceCost,
      required this.costBest,
      required this.costAfterCoupon,
      required this.paymentMode,
      required this.durationBest,
      required this.distanceBest,
      required final List<LatLngEntity> rideDirections,
      required final List<LatLngEntity> driverDirections,
      required final List<RideOptionEntity> rideOptions,
      required this.riderFirstName,
      required this.riderLastName,
      required this.riderPhoneNumber,
      required this.riderPhotoUrl,
      required this.riderPresetPhotoId,
      required this.serviceName,
      required this.cashPaymentAllowed,
      required final List<ChatMessageEntity> chatMessages})
      : _waypoints = waypoints,
        _rideDirections = rideDirections,
        _driverDirections = driverDirections,
        _rideOptions = rideOptions,
        _chatMessages = chatMessages,
        super._();

  factory _$OrderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderEntityImplFromJson(json);

  @override
  final String id;
  @override
  final OrderStatus status;
  @override
  final DateTime createdAt;
  @override
  final DateTime expextedAt;
  @override
  final DateTime? startAt;
  @override
  final DateTime? finishAt;
  @override
  final DateTime? etaPickupAt;
  @override
  final DateTime lastSeenMessagesAt;
  @override
  final int? destinationArrivedTo;
  @override
  final double providerShare;
  @override
  final String currency;
  final List<PlaceEntity> _waypoints;
  @override
  List<PlaceEntity> get waypoints {
    if (_waypoints is EqualUnmodifiableListView) return _waypoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waypoints);
  }

  @override
  final int waitMinutes;
  @override
  final double waitCost;
  @override
  final double rideOptionsCost;
  @override
  final double taxCost;
  @override
  final double serviceCost;
  @override
  final double costBest;
  @override
  final double costAfterCoupon;
  @override
  final PaymentMode paymentMode;
  @override
  final int durationBest;
  @override
  final int distanceBest;
  final List<LatLngEntity> _rideDirections;
  @override
  List<LatLngEntity> get rideDirections {
    if (_rideDirections is EqualUnmodifiableListView) return _rideDirections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rideDirections);
  }

  final List<LatLngEntity> _driverDirections;
  @override
  List<LatLngEntity> get driverDirections {
    if (_driverDirections is EqualUnmodifiableListView)
      return _driverDirections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_driverDirections);
  }

  final List<RideOptionEntity> _rideOptions;
  @override
  List<RideOptionEntity> get rideOptions {
    if (_rideOptions is EqualUnmodifiableListView) return _rideOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rideOptions);
  }

  @override
  final String? riderFirstName;
  @override
  final String? riderLastName;
  @override
  final String riderPhoneNumber;
  @override
  final String? riderPhotoUrl;
  @override
  final int? riderPresetPhotoId;
  @override
  final String serviceName;
  @override
  final bool cashPaymentAllowed;
  final List<ChatMessageEntity> _chatMessages;
  @override
  List<ChatMessageEntity> get chatMessages {
    if (_chatMessages is EqualUnmodifiableListView) return _chatMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatMessages);
  }

  @override
  String toString() {
    return 'OrderEntity(id: $id, status: $status, createdAt: $createdAt, expextedAt: $expextedAt, startAt: $startAt, finishAt: $finishAt, etaPickupAt: $etaPickupAt, lastSeenMessagesAt: $lastSeenMessagesAt, destinationArrivedTo: $destinationArrivedTo, providerShare: $providerShare, currency: $currency, waypoints: $waypoints, waitMinutes: $waitMinutes, waitCost: $waitCost, rideOptionsCost: $rideOptionsCost, taxCost: $taxCost, serviceCost: $serviceCost, costBest: $costBest, costAfterCoupon: $costAfterCoupon, paymentMode: $paymentMode, durationBest: $durationBest, distanceBest: $distanceBest, rideDirections: $rideDirections, driverDirections: $driverDirections, rideOptions: $rideOptions, riderFirstName: $riderFirstName, riderLastName: $riderLastName, riderPhoneNumber: $riderPhoneNumber, riderPhotoUrl: $riderPhotoUrl, riderPresetPhotoId: $riderPresetPhotoId, serviceName: $serviceName, cashPaymentAllowed: $cashPaymentAllowed, chatMessages: $chatMessages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expextedAt, expextedAt) ||
                other.expextedAt == expextedAt) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.finishAt, finishAt) ||
                other.finishAt == finishAt) &&
            (identical(other.etaPickupAt, etaPickupAt) ||
                other.etaPickupAt == etaPickupAt) &&
            (identical(other.lastSeenMessagesAt, lastSeenMessagesAt) ||
                other.lastSeenMessagesAt == lastSeenMessagesAt) &&
            (identical(other.destinationArrivedTo, destinationArrivedTo) ||
                other.destinationArrivedTo == destinationArrivedTo) &&
            (identical(other.providerShare, providerShare) ||
                other.providerShare == providerShare) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality()
                .equals(other._waypoints, _waypoints) &&
            (identical(other.waitMinutes, waitMinutes) ||
                other.waitMinutes == waitMinutes) &&
            (identical(other.waitCost, waitCost) ||
                other.waitCost == waitCost) &&
            (identical(other.rideOptionsCost, rideOptionsCost) ||
                other.rideOptionsCost == rideOptionsCost) &&
            (identical(other.taxCost, taxCost) || other.taxCost == taxCost) &&
            (identical(other.serviceCost, serviceCost) ||
                other.serviceCost == serviceCost) &&
            (identical(other.costBest, costBest) ||
                other.costBest == costBest) &&
            (identical(other.costAfterCoupon, costAfterCoupon) ||
                other.costAfterCoupon == costAfterCoupon) &&
            (identical(other.paymentMode, paymentMode) ||
                other.paymentMode == paymentMode) &&
            (identical(other.durationBest, durationBest) ||
                other.durationBest == durationBest) &&
            (identical(other.distanceBest, distanceBest) ||
                other.distanceBest == distanceBest) &&
            const DeepCollectionEquality()
                .equals(other._rideDirections, _rideDirections) &&
            const DeepCollectionEquality()
                .equals(other._driverDirections, _driverDirections) &&
            const DeepCollectionEquality()
                .equals(other._rideOptions, _rideOptions) &&
            (identical(other.riderFirstName, riderFirstName) ||
                other.riderFirstName == riderFirstName) &&
            (identical(other.riderLastName, riderLastName) ||
                other.riderLastName == riderLastName) &&
            (identical(other.riderPhoneNumber, riderPhoneNumber) ||
                other.riderPhoneNumber == riderPhoneNumber) &&
            (identical(other.riderPhotoUrl, riderPhotoUrl) ||
                other.riderPhotoUrl == riderPhotoUrl) &&
            (identical(other.riderPresetPhotoId, riderPresetPhotoId) ||
                other.riderPresetPhotoId == riderPresetPhotoId) &&
            (identical(other.serviceName, serviceName) ||
                other.serviceName == serviceName) &&
            (identical(other.cashPaymentAllowed, cashPaymentAllowed) ||
                other.cashPaymentAllowed == cashPaymentAllowed) &&
            const DeepCollectionEquality()
                .equals(other._chatMessages, _chatMessages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        status,
        createdAt,
        expextedAt,
        startAt,
        finishAt,
        etaPickupAt,
        lastSeenMessagesAt,
        destinationArrivedTo,
        providerShare,
        currency,
        const DeepCollectionEquality().hash(_waypoints),
        waitMinutes,
        waitCost,
        rideOptionsCost,
        taxCost,
        serviceCost,
        costBest,
        costAfterCoupon,
        paymentMode,
        durationBest,
        distanceBest,
        const DeepCollectionEquality().hash(_rideDirections),
        const DeepCollectionEquality().hash(_driverDirections),
        const DeepCollectionEquality().hash(_rideOptions),
        riderFirstName,
        riderLastName,
        riderPhoneNumber,
        riderPhotoUrl,
        riderPresetPhotoId,
        serviceName,
        cashPaymentAllowed,
        const DeepCollectionEquality().hash(_chatMessages)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      __$$OrderEntityImplCopyWithImpl<_$OrderEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderEntityImplToJson(
      this,
    );
  }
}

abstract class _OrderEntity extends OrderEntity {
  const factory _OrderEntity(
      {required final String id,
      required final OrderStatus status,
      required final DateTime createdAt,
      required final DateTime expextedAt,
      required final DateTime? startAt,
      required final DateTime? finishAt,
      required final DateTime? etaPickupAt,
      required final DateTime lastSeenMessagesAt,
      required final int? destinationArrivedTo,
      required final double providerShare,
      required final String currency,
      required final List<PlaceEntity> waypoints,
      required final int waitMinutes,
      required final double waitCost,
      required final double rideOptionsCost,
      required final double taxCost,
      required final double serviceCost,
      required final double costBest,
      required final double costAfterCoupon,
      required final PaymentMode paymentMode,
      required final int durationBest,
      required final int distanceBest,
      required final List<LatLngEntity> rideDirections,
      required final List<LatLngEntity> driverDirections,
      required final List<RideOptionEntity> rideOptions,
      required final String? riderFirstName,
      required final String? riderLastName,
      required final String riderPhoneNumber,
      required final String? riderPhotoUrl,
      required final int? riderPresetPhotoId,
      required final String serviceName,
      required final bool cashPaymentAllowed,
      required final List<ChatMessageEntity> chatMessages}) = _$OrderEntityImpl;
  const _OrderEntity._() : super._();

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$OrderEntityImpl.fromJson;

  @override
  String get id;
  @override
  OrderStatus get status;
  @override
  DateTime get createdAt;
  @override
  DateTime get expextedAt;
  @override
  DateTime? get startAt;
  @override
  DateTime? get finishAt;
  @override
  DateTime? get etaPickupAt;
  @override
  DateTime get lastSeenMessagesAt;
  @override
  int? get destinationArrivedTo;
  @override
  double get providerShare;
  @override
  String get currency;
  @override
  List<PlaceEntity> get waypoints;
  @override
  int get waitMinutes;
  @override
  double get waitCost;
  @override
  double get rideOptionsCost;
  @override
  double get taxCost;
  @override
  double get serviceCost;
  @override
  double get costBest;
  @override
  double get costAfterCoupon;
  @override
  PaymentMode get paymentMode;
  @override
  int get durationBest;
  @override
  int get distanceBest;
  @override
  List<LatLngEntity> get rideDirections;
  @override
  List<LatLngEntity> get driverDirections;
  @override
  List<RideOptionEntity> get rideOptions;
  @override
  String? get riderFirstName;
  @override
  String? get riderLastName;
  @override
  String get riderPhoneNumber;
  @override
  String? get riderPhotoUrl;
  @override
  int? get riderPresetPhotoId;
  @override
  String get serviceName;
  @override
  bool get cashPaymentAllowed;
  @override
  List<ChatMessageEntity> get chatMessages;
  @override
  @JsonKey(ignore: true)
  _$$OrderEntityImplCopyWith<_$OrderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
