// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DriverLocation? location) onStarted,
    required TResult Function(DriverStatus status) onStatusChanged,
    required TResult Function(OrderRequestEntity request)
        onOrderRequestPageChanged,
    required TResult Function(
            DriverLocation location, DateTime? lastLocationUpdate)
        onLocationUpdated,
    required TResult Function(OrderRequestEntity request) onAcceptOrder,
    required TResult Function(
            String orderId, String? reasonId, String? reasonNote)
        onCancelOrder,
    required TResult Function(String orderId) onArrivedToPickupPoint,
    required TResult Function(String orderId) onStripStarted,
    required TResult Function(OrderEntity order, int destinationArrivedTo)
        onArrivedToDestination,
    required TResult Function(String orderId, double amount) paidInCash,
    required TResult Function(String orderId) onSummaryConfirmed,
    required TResult Function(String orderId, int? rating, String? review)
        reviewSubmitted,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function() onShowChat,
    required TResult Function() onHideChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DriverLocation? location)? onStarted,
    TResult? Function(DriverStatus status)? onStatusChanged,
    TResult? Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult? Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult? Function(OrderRequestEntity request)? onAcceptOrder,
    TResult? Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult? Function(String orderId)? onArrivedToPickupPoint,
    TResult? Function(String orderId)? onStripStarted,
    TResult? Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult? Function(String orderId, double amount)? paidInCash,
    TResult? Function(String orderId)? onSummaryConfirmed,
    TResult? Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function()? onShowChat,
    TResult? Function()? onHideChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DriverLocation? location)? onStarted,
    TResult Function(DriverStatus status)? onStatusChanged,
    TResult Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult Function(OrderRequestEntity request)? onAcceptOrder,
    TResult Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult Function(String orderId)? onArrivedToPickupPoint,
    TResult Function(String orderId)? onStripStarted,
    TResult Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult Function(String orderId, double amount)? paidInCash,
    TResult Function(String orderId)? onSummaryConfirmed,
    TResult Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function()? onShowChat,
    TResult Function()? onHideChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
    required TResult Function(_OnOrderRequestPageChanged value)
        onOrderRequestPageChanged,
    required TResult Function(_OnLocationUpdated value) onLocationUpdated,
    required TResult Function(_OnAcceptOrder value) onAcceptOrder,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnArrivedToPickupPoint value)
        onArrivedToPickupPoint,
    required TResult Function(_OnTripStarted value) onStripStarted,
    required TResult Function(_OnArrivedToDestination value)
        onArrivedToDestination,
    required TResult Function(_PaidInCash value) paidInCash,
    required TResult Function(_OnSummaryConfirmed value) onSummaryConfirmed,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_OnShowChat value) onShowChat,
    required TResult Function(_OnHideChat value) onHideChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
    TResult? Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult? Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult? Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult? Function(_OnCancelOrder value)? onCancelOrder,
    TResult? Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult? Function(_OnTripStarted value)? onStripStarted,
    TResult? Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult? Function(_PaidInCash value)? paidInCash,
    TResult? Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_OnShowChat value)? onShowChat,
    TResult? Function(_OnHideChat value)? onHideChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    TResult Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult Function(_OnTripStarted value)? onStripStarted,
    TResult Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult Function(_PaidInCash value)? paidInCash,
    TResult Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_OnShowChat value)? onShowChat,
    TResult Function(_OnHideChat value)? onHideChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnStartedImplCopyWith<$Res> {
  factory _$$OnStartedImplCopyWith(
          _$OnStartedImpl value, $Res Function(_$OnStartedImpl) then) =
      __$$OnStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverLocation? location});

  $DriverLocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$OnStartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnStartedImpl>
    implements _$$OnStartedImplCopyWith<$Res> {
  __$$OnStartedImplCopyWithImpl(
      _$OnStartedImpl _value, $Res Function(_$OnStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_$OnStartedImpl(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as DriverLocation?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $DriverLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc

class _$OnStartedImpl implements _OnStarted {
  const _$OnStartedImpl({required this.location});

  @override
  final DriverLocation? location;

  @override
  String toString() {
    return 'HomeEvent.onStarted(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnStartedImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnStartedImplCopyWith<_$OnStartedImpl> get copyWith =>
      __$$OnStartedImplCopyWithImpl<_$OnStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DriverLocation? location) onStarted,
    required TResult Function(DriverStatus status) onStatusChanged,
    required TResult Function(OrderRequestEntity request)
        onOrderRequestPageChanged,
    required TResult Function(
            DriverLocation location, DateTime? lastLocationUpdate)
        onLocationUpdated,
    required TResult Function(OrderRequestEntity request) onAcceptOrder,
    required TResult Function(
            String orderId, String? reasonId, String? reasonNote)
        onCancelOrder,
    required TResult Function(String orderId) onArrivedToPickupPoint,
    required TResult Function(String orderId) onStripStarted,
    required TResult Function(OrderEntity order, int destinationArrivedTo)
        onArrivedToDestination,
    required TResult Function(String orderId, double amount) paidInCash,
    required TResult Function(String orderId) onSummaryConfirmed,
    required TResult Function(String orderId, int? rating, String? review)
        reviewSubmitted,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function() onShowChat,
    required TResult Function() onHideChat,
  }) {
    return onStarted(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DriverLocation? location)? onStarted,
    TResult? Function(DriverStatus status)? onStatusChanged,
    TResult? Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult? Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult? Function(OrderRequestEntity request)? onAcceptOrder,
    TResult? Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult? Function(String orderId)? onArrivedToPickupPoint,
    TResult? Function(String orderId)? onStripStarted,
    TResult? Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult? Function(String orderId, double amount)? paidInCash,
    TResult? Function(String orderId)? onSummaryConfirmed,
    TResult? Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function()? onShowChat,
    TResult? Function()? onHideChat,
  }) {
    return onStarted?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DriverLocation? location)? onStarted,
    TResult Function(DriverStatus status)? onStatusChanged,
    TResult Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult Function(OrderRequestEntity request)? onAcceptOrder,
    TResult Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult Function(String orderId)? onArrivedToPickupPoint,
    TResult Function(String orderId)? onStripStarted,
    TResult Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult Function(String orderId, double amount)? paidInCash,
    TResult Function(String orderId)? onSummaryConfirmed,
    TResult Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function()? onShowChat,
    TResult Function()? onHideChat,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
    required TResult Function(_OnOrderRequestPageChanged value)
        onOrderRequestPageChanged,
    required TResult Function(_OnLocationUpdated value) onLocationUpdated,
    required TResult Function(_OnAcceptOrder value) onAcceptOrder,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnArrivedToPickupPoint value)
        onArrivedToPickupPoint,
    required TResult Function(_OnTripStarted value) onStripStarted,
    required TResult Function(_OnArrivedToDestination value)
        onArrivedToDestination,
    required TResult Function(_PaidInCash value) paidInCash,
    required TResult Function(_OnSummaryConfirmed value) onSummaryConfirmed,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_OnShowChat value) onShowChat,
    required TResult Function(_OnHideChat value) onHideChat,
  }) {
    return onStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
    TResult? Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult? Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult? Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult? Function(_OnCancelOrder value)? onCancelOrder,
    TResult? Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult? Function(_OnTripStarted value)? onStripStarted,
    TResult? Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult? Function(_PaidInCash value)? paidInCash,
    TResult? Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_OnShowChat value)? onShowChat,
    TResult? Function(_OnHideChat value)? onHideChat,
  }) {
    return onStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    TResult Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult Function(_OnTripStarted value)? onStripStarted,
    TResult Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult Function(_PaidInCash value)? paidInCash,
    TResult Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_OnShowChat value)? onShowChat,
    TResult Function(_OnHideChat value)? onHideChat,
    required TResult orElse(),
  }) {
    if (onStarted != null) {
      return onStarted(this);
    }
    return orElse();
  }
}

abstract class _OnStarted implements HomeEvent {
  const factory _OnStarted({required final DriverLocation? location}) =
      _$OnStartedImpl;

  DriverLocation? get location;
  @JsonKey(ignore: true)
  _$$OnStartedImplCopyWith<_$OnStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnStatusChangedImplCopyWith<$Res> {
  factory _$$OnStatusChangedImplCopyWith(_$OnStatusChangedImpl value,
          $Res Function(_$OnStatusChangedImpl) then) =
      __$$OnStatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverStatus status});

  $DriverStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$OnStatusChangedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnStatusChangedImpl>
    implements _$$OnStatusChangedImplCopyWith<$Res> {
  __$$OnStatusChangedImplCopyWithImpl(
      _$OnStatusChangedImpl _value, $Res Function(_$OnStatusChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$OnStatusChangedImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DriverStatus,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverStatusCopyWith<$Res> get status {
    return $DriverStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc

class _$OnStatusChangedImpl implements _OnStatusChanged {
  const _$OnStatusChangedImpl({required this.status});

  @override
  final DriverStatus status;

  @override
  String toString() {
    return 'HomeEvent.onStatusChanged(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnStatusChangedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnStatusChangedImplCopyWith<_$OnStatusChangedImpl> get copyWith =>
      __$$OnStatusChangedImplCopyWithImpl<_$OnStatusChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DriverLocation? location) onStarted,
    required TResult Function(DriverStatus status) onStatusChanged,
    required TResult Function(OrderRequestEntity request)
        onOrderRequestPageChanged,
    required TResult Function(
            DriverLocation location, DateTime? lastLocationUpdate)
        onLocationUpdated,
    required TResult Function(OrderRequestEntity request) onAcceptOrder,
    required TResult Function(
            String orderId, String? reasonId, String? reasonNote)
        onCancelOrder,
    required TResult Function(String orderId) onArrivedToPickupPoint,
    required TResult Function(String orderId) onStripStarted,
    required TResult Function(OrderEntity order, int destinationArrivedTo)
        onArrivedToDestination,
    required TResult Function(String orderId, double amount) paidInCash,
    required TResult Function(String orderId) onSummaryConfirmed,
    required TResult Function(String orderId, int? rating, String? review)
        reviewSubmitted,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function() onShowChat,
    required TResult Function() onHideChat,
  }) {
    return onStatusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DriverLocation? location)? onStarted,
    TResult? Function(DriverStatus status)? onStatusChanged,
    TResult? Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult? Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult? Function(OrderRequestEntity request)? onAcceptOrder,
    TResult? Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult? Function(String orderId)? onArrivedToPickupPoint,
    TResult? Function(String orderId)? onStripStarted,
    TResult? Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult? Function(String orderId, double amount)? paidInCash,
    TResult? Function(String orderId)? onSummaryConfirmed,
    TResult? Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function()? onShowChat,
    TResult? Function()? onHideChat,
  }) {
    return onStatusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DriverLocation? location)? onStarted,
    TResult Function(DriverStatus status)? onStatusChanged,
    TResult Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult Function(OrderRequestEntity request)? onAcceptOrder,
    TResult Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult Function(String orderId)? onArrivedToPickupPoint,
    TResult Function(String orderId)? onStripStarted,
    TResult Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult Function(String orderId, double amount)? paidInCash,
    TResult Function(String orderId)? onSummaryConfirmed,
    TResult Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function()? onShowChat,
    TResult Function()? onHideChat,
    required TResult orElse(),
  }) {
    if (onStatusChanged != null) {
      return onStatusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
    required TResult Function(_OnOrderRequestPageChanged value)
        onOrderRequestPageChanged,
    required TResult Function(_OnLocationUpdated value) onLocationUpdated,
    required TResult Function(_OnAcceptOrder value) onAcceptOrder,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnArrivedToPickupPoint value)
        onArrivedToPickupPoint,
    required TResult Function(_OnTripStarted value) onStripStarted,
    required TResult Function(_OnArrivedToDestination value)
        onArrivedToDestination,
    required TResult Function(_PaidInCash value) paidInCash,
    required TResult Function(_OnSummaryConfirmed value) onSummaryConfirmed,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_OnShowChat value) onShowChat,
    required TResult Function(_OnHideChat value) onHideChat,
  }) {
    return onStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
    TResult? Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult? Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult? Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult? Function(_OnCancelOrder value)? onCancelOrder,
    TResult? Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult? Function(_OnTripStarted value)? onStripStarted,
    TResult? Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult? Function(_PaidInCash value)? paidInCash,
    TResult? Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_OnShowChat value)? onShowChat,
    TResult? Function(_OnHideChat value)? onHideChat,
  }) {
    return onStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    TResult Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult Function(_OnTripStarted value)? onStripStarted,
    TResult Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult Function(_PaidInCash value)? paidInCash,
    TResult Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_OnShowChat value)? onShowChat,
    TResult Function(_OnHideChat value)? onHideChat,
    required TResult orElse(),
  }) {
    if (onStatusChanged != null) {
      return onStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _OnStatusChanged implements HomeEvent {
  const factory _OnStatusChanged({required final DriverStatus status}) =
      _$OnStatusChangedImpl;

  DriverStatus get status;
  @JsonKey(ignore: true)
  _$$OnStatusChangedImplCopyWith<_$OnStatusChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnOrderRequestPageChangedImplCopyWith<$Res> {
  factory _$$OnOrderRequestPageChangedImplCopyWith(
          _$OnOrderRequestPageChangedImpl value,
          $Res Function(_$OnOrderRequestPageChangedImpl) then) =
      __$$OnOrderRequestPageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderRequestEntity request});

  $OrderRequestEntityCopyWith<$Res> get request;
}

/// @nodoc
class __$$OnOrderRequestPageChangedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnOrderRequestPageChangedImpl>
    implements _$$OnOrderRequestPageChangedImplCopyWith<$Res> {
  __$$OnOrderRequestPageChangedImplCopyWithImpl(
      _$OnOrderRequestPageChangedImpl _value,
      $Res Function(_$OnOrderRequestPageChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$OnOrderRequestPageChangedImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as OrderRequestEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderRequestEntityCopyWith<$Res> get request {
    return $OrderRequestEntityCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$OnOrderRequestPageChangedImpl implements _OnOrderRequestPageChanged {
  const _$OnOrderRequestPageChangedImpl({required this.request});

  @override
  final OrderRequestEntity request;

  @override
  String toString() {
    return 'HomeEvent.onOrderRequestPageChanged(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnOrderRequestPageChangedImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnOrderRequestPageChangedImplCopyWith<_$OnOrderRequestPageChangedImpl>
      get copyWith => __$$OnOrderRequestPageChangedImplCopyWithImpl<
          _$OnOrderRequestPageChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DriverLocation? location) onStarted,
    required TResult Function(DriverStatus status) onStatusChanged,
    required TResult Function(OrderRequestEntity request)
        onOrderRequestPageChanged,
    required TResult Function(
            DriverLocation location, DateTime? lastLocationUpdate)
        onLocationUpdated,
    required TResult Function(OrderRequestEntity request) onAcceptOrder,
    required TResult Function(
            String orderId, String? reasonId, String? reasonNote)
        onCancelOrder,
    required TResult Function(String orderId) onArrivedToPickupPoint,
    required TResult Function(String orderId) onStripStarted,
    required TResult Function(OrderEntity order, int destinationArrivedTo)
        onArrivedToDestination,
    required TResult Function(String orderId, double amount) paidInCash,
    required TResult Function(String orderId) onSummaryConfirmed,
    required TResult Function(String orderId, int? rating, String? review)
        reviewSubmitted,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function() onShowChat,
    required TResult Function() onHideChat,
  }) {
    return onOrderRequestPageChanged(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DriverLocation? location)? onStarted,
    TResult? Function(DriverStatus status)? onStatusChanged,
    TResult? Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult? Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult? Function(OrderRequestEntity request)? onAcceptOrder,
    TResult? Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult? Function(String orderId)? onArrivedToPickupPoint,
    TResult? Function(String orderId)? onStripStarted,
    TResult? Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult? Function(String orderId, double amount)? paidInCash,
    TResult? Function(String orderId)? onSummaryConfirmed,
    TResult? Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function()? onShowChat,
    TResult? Function()? onHideChat,
  }) {
    return onOrderRequestPageChanged?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DriverLocation? location)? onStarted,
    TResult Function(DriverStatus status)? onStatusChanged,
    TResult Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult Function(OrderRequestEntity request)? onAcceptOrder,
    TResult Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult Function(String orderId)? onArrivedToPickupPoint,
    TResult Function(String orderId)? onStripStarted,
    TResult Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult Function(String orderId, double amount)? paidInCash,
    TResult Function(String orderId)? onSummaryConfirmed,
    TResult Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function()? onShowChat,
    TResult Function()? onHideChat,
    required TResult orElse(),
  }) {
    if (onOrderRequestPageChanged != null) {
      return onOrderRequestPageChanged(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
    required TResult Function(_OnOrderRequestPageChanged value)
        onOrderRequestPageChanged,
    required TResult Function(_OnLocationUpdated value) onLocationUpdated,
    required TResult Function(_OnAcceptOrder value) onAcceptOrder,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnArrivedToPickupPoint value)
        onArrivedToPickupPoint,
    required TResult Function(_OnTripStarted value) onStripStarted,
    required TResult Function(_OnArrivedToDestination value)
        onArrivedToDestination,
    required TResult Function(_PaidInCash value) paidInCash,
    required TResult Function(_OnSummaryConfirmed value) onSummaryConfirmed,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_OnShowChat value) onShowChat,
    required TResult Function(_OnHideChat value) onHideChat,
  }) {
    return onOrderRequestPageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
    TResult? Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult? Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult? Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult? Function(_OnCancelOrder value)? onCancelOrder,
    TResult? Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult? Function(_OnTripStarted value)? onStripStarted,
    TResult? Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult? Function(_PaidInCash value)? paidInCash,
    TResult? Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_OnShowChat value)? onShowChat,
    TResult? Function(_OnHideChat value)? onHideChat,
  }) {
    return onOrderRequestPageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    TResult Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult Function(_OnTripStarted value)? onStripStarted,
    TResult Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult Function(_PaidInCash value)? paidInCash,
    TResult Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_OnShowChat value)? onShowChat,
    TResult Function(_OnHideChat value)? onHideChat,
    required TResult orElse(),
  }) {
    if (onOrderRequestPageChanged != null) {
      return onOrderRequestPageChanged(this);
    }
    return orElse();
  }
}

abstract class _OnOrderRequestPageChanged implements HomeEvent {
  const factory _OnOrderRequestPageChanged(
          {required final OrderRequestEntity request}) =
      _$OnOrderRequestPageChangedImpl;

  OrderRequestEntity get request;
  @JsonKey(ignore: true)
  _$$OnOrderRequestPageChangedImplCopyWith<_$OnOrderRequestPageChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLocationUpdatedImplCopyWith<$Res> {
  factory _$$OnLocationUpdatedImplCopyWith(_$OnLocationUpdatedImpl value,
          $Res Function(_$OnLocationUpdatedImpl) then) =
      __$$OnLocationUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DriverLocation location, DateTime? lastLocationUpdate});

  $DriverLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$OnLocationUpdatedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnLocationUpdatedImpl>
    implements _$$OnLocationUpdatedImplCopyWith<$Res> {
  __$$OnLocationUpdatedImplCopyWithImpl(_$OnLocationUpdatedImpl _value,
      $Res Function(_$OnLocationUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? lastLocationUpdate = freezed,
  }) {
    return _then(_$OnLocationUpdatedImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as DriverLocation,
      lastLocationUpdate: freezed == lastLocationUpdate
          ? _value.lastLocationUpdate
          : lastLocationUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverLocationCopyWith<$Res> get location {
    return $DriverLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc

class _$OnLocationUpdatedImpl implements _OnLocationUpdated {
  const _$OnLocationUpdatedImpl(
      {required this.location, this.lastLocationUpdate});

  @override
  final DriverLocation location;
  @override
  final DateTime? lastLocationUpdate;

  @override
  String toString() {
    return 'HomeEvent.onLocationUpdated(location: $location, lastLocationUpdate: $lastLocationUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnLocationUpdatedImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.lastLocationUpdate, lastLocationUpdate) ||
                other.lastLocationUpdate == lastLocationUpdate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location, lastLocationUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnLocationUpdatedImplCopyWith<_$OnLocationUpdatedImpl> get copyWith =>
      __$$OnLocationUpdatedImplCopyWithImpl<_$OnLocationUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DriverLocation? location) onStarted,
    required TResult Function(DriverStatus status) onStatusChanged,
    required TResult Function(OrderRequestEntity request)
        onOrderRequestPageChanged,
    required TResult Function(
            DriverLocation location, DateTime? lastLocationUpdate)
        onLocationUpdated,
    required TResult Function(OrderRequestEntity request) onAcceptOrder,
    required TResult Function(
            String orderId, String? reasonId, String? reasonNote)
        onCancelOrder,
    required TResult Function(String orderId) onArrivedToPickupPoint,
    required TResult Function(String orderId) onStripStarted,
    required TResult Function(OrderEntity order, int destinationArrivedTo)
        onArrivedToDestination,
    required TResult Function(String orderId, double amount) paidInCash,
    required TResult Function(String orderId) onSummaryConfirmed,
    required TResult Function(String orderId, int? rating, String? review)
        reviewSubmitted,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function() onShowChat,
    required TResult Function() onHideChat,
  }) {
    return onLocationUpdated(location, lastLocationUpdate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DriverLocation? location)? onStarted,
    TResult? Function(DriverStatus status)? onStatusChanged,
    TResult? Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult? Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult? Function(OrderRequestEntity request)? onAcceptOrder,
    TResult? Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult? Function(String orderId)? onArrivedToPickupPoint,
    TResult? Function(String orderId)? onStripStarted,
    TResult? Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult? Function(String orderId, double amount)? paidInCash,
    TResult? Function(String orderId)? onSummaryConfirmed,
    TResult? Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function()? onShowChat,
    TResult? Function()? onHideChat,
  }) {
    return onLocationUpdated?.call(location, lastLocationUpdate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DriverLocation? location)? onStarted,
    TResult Function(DriverStatus status)? onStatusChanged,
    TResult Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult Function(OrderRequestEntity request)? onAcceptOrder,
    TResult Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult Function(String orderId)? onArrivedToPickupPoint,
    TResult Function(String orderId)? onStripStarted,
    TResult Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult Function(String orderId, double amount)? paidInCash,
    TResult Function(String orderId)? onSummaryConfirmed,
    TResult Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function()? onShowChat,
    TResult Function()? onHideChat,
    required TResult orElse(),
  }) {
    if (onLocationUpdated != null) {
      return onLocationUpdated(location, lastLocationUpdate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
    required TResult Function(_OnOrderRequestPageChanged value)
        onOrderRequestPageChanged,
    required TResult Function(_OnLocationUpdated value) onLocationUpdated,
    required TResult Function(_OnAcceptOrder value) onAcceptOrder,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnArrivedToPickupPoint value)
        onArrivedToPickupPoint,
    required TResult Function(_OnTripStarted value) onStripStarted,
    required TResult Function(_OnArrivedToDestination value)
        onArrivedToDestination,
    required TResult Function(_PaidInCash value) paidInCash,
    required TResult Function(_OnSummaryConfirmed value) onSummaryConfirmed,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_OnShowChat value) onShowChat,
    required TResult Function(_OnHideChat value) onHideChat,
  }) {
    return onLocationUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
    TResult? Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult? Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult? Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult? Function(_OnCancelOrder value)? onCancelOrder,
    TResult? Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult? Function(_OnTripStarted value)? onStripStarted,
    TResult? Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult? Function(_PaidInCash value)? paidInCash,
    TResult? Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_OnShowChat value)? onShowChat,
    TResult? Function(_OnHideChat value)? onHideChat,
  }) {
    return onLocationUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    TResult Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult Function(_OnTripStarted value)? onStripStarted,
    TResult Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult Function(_PaidInCash value)? paidInCash,
    TResult Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_OnShowChat value)? onShowChat,
    TResult Function(_OnHideChat value)? onHideChat,
    required TResult orElse(),
  }) {
    if (onLocationUpdated != null) {
      return onLocationUpdated(this);
    }
    return orElse();
  }
}

abstract class _OnLocationUpdated implements HomeEvent {
  const factory _OnLocationUpdated(
      {required final DriverLocation location,
      final DateTime? lastLocationUpdate}) = _$OnLocationUpdatedImpl;

  DriverLocation get location;
  DateTime? get lastLocationUpdate;
  @JsonKey(ignore: true)
  _$$OnLocationUpdatedImplCopyWith<_$OnLocationUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnAcceptOrderImplCopyWith<$Res> {
  factory _$$OnAcceptOrderImplCopyWith(
          _$OnAcceptOrderImpl value, $Res Function(_$OnAcceptOrderImpl) then) =
      __$$OnAcceptOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderRequestEntity request});

  $OrderRequestEntityCopyWith<$Res> get request;
}

/// @nodoc
class __$$OnAcceptOrderImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnAcceptOrderImpl>
    implements _$$OnAcceptOrderImplCopyWith<$Res> {
  __$$OnAcceptOrderImplCopyWithImpl(
      _$OnAcceptOrderImpl _value, $Res Function(_$OnAcceptOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$OnAcceptOrderImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as OrderRequestEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderRequestEntityCopyWith<$Res> get request {
    return $OrderRequestEntityCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$OnAcceptOrderImpl implements _OnAcceptOrder {
  const _$OnAcceptOrderImpl({required this.request});

  @override
  final OrderRequestEntity request;

  @override
  String toString() {
    return 'HomeEvent.onAcceptOrder(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAcceptOrderImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAcceptOrderImplCopyWith<_$OnAcceptOrderImpl> get copyWith =>
      __$$OnAcceptOrderImplCopyWithImpl<_$OnAcceptOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DriverLocation? location) onStarted,
    required TResult Function(DriverStatus status) onStatusChanged,
    required TResult Function(OrderRequestEntity request)
        onOrderRequestPageChanged,
    required TResult Function(
            DriverLocation location, DateTime? lastLocationUpdate)
        onLocationUpdated,
    required TResult Function(OrderRequestEntity request) onAcceptOrder,
    required TResult Function(
            String orderId, String? reasonId, String? reasonNote)
        onCancelOrder,
    required TResult Function(String orderId) onArrivedToPickupPoint,
    required TResult Function(String orderId) onStripStarted,
    required TResult Function(OrderEntity order, int destinationArrivedTo)
        onArrivedToDestination,
    required TResult Function(String orderId, double amount) paidInCash,
    required TResult Function(String orderId) onSummaryConfirmed,
    required TResult Function(String orderId, int? rating, String? review)
        reviewSubmitted,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function() onShowChat,
    required TResult Function() onHideChat,
  }) {
    return onAcceptOrder(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DriverLocation? location)? onStarted,
    TResult? Function(DriverStatus status)? onStatusChanged,
    TResult? Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult? Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult? Function(OrderRequestEntity request)? onAcceptOrder,
    TResult? Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult? Function(String orderId)? onArrivedToPickupPoint,
    TResult? Function(String orderId)? onStripStarted,
    TResult? Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult? Function(String orderId, double amount)? paidInCash,
    TResult? Function(String orderId)? onSummaryConfirmed,
    TResult? Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function()? onShowChat,
    TResult? Function()? onHideChat,
  }) {
    return onAcceptOrder?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DriverLocation? location)? onStarted,
    TResult Function(DriverStatus status)? onStatusChanged,
    TResult Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult Function(OrderRequestEntity request)? onAcceptOrder,
    TResult Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult Function(String orderId)? onArrivedToPickupPoint,
    TResult Function(String orderId)? onStripStarted,
    TResult Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult Function(String orderId, double amount)? paidInCash,
    TResult Function(String orderId)? onSummaryConfirmed,
    TResult Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function()? onShowChat,
    TResult Function()? onHideChat,
    required TResult orElse(),
  }) {
    if (onAcceptOrder != null) {
      return onAcceptOrder(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
    required TResult Function(_OnOrderRequestPageChanged value)
        onOrderRequestPageChanged,
    required TResult Function(_OnLocationUpdated value) onLocationUpdated,
    required TResult Function(_OnAcceptOrder value) onAcceptOrder,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnArrivedToPickupPoint value)
        onArrivedToPickupPoint,
    required TResult Function(_OnTripStarted value) onStripStarted,
    required TResult Function(_OnArrivedToDestination value)
        onArrivedToDestination,
    required TResult Function(_PaidInCash value) paidInCash,
    required TResult Function(_OnSummaryConfirmed value) onSummaryConfirmed,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_OnShowChat value) onShowChat,
    required TResult Function(_OnHideChat value) onHideChat,
  }) {
    return onAcceptOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
    TResult? Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult? Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult? Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult? Function(_OnCancelOrder value)? onCancelOrder,
    TResult? Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult? Function(_OnTripStarted value)? onStripStarted,
    TResult? Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult? Function(_PaidInCash value)? paidInCash,
    TResult? Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_OnShowChat value)? onShowChat,
    TResult? Function(_OnHideChat value)? onHideChat,
  }) {
    return onAcceptOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    TResult Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult Function(_OnTripStarted value)? onStripStarted,
    TResult Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult Function(_PaidInCash value)? paidInCash,
    TResult Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_OnShowChat value)? onShowChat,
    TResult Function(_OnHideChat value)? onHideChat,
    required TResult orElse(),
  }) {
    if (onAcceptOrder != null) {
      return onAcceptOrder(this);
    }
    return orElse();
  }
}

abstract class _OnAcceptOrder implements HomeEvent {
  const factory _OnAcceptOrder({required final OrderRequestEntity request}) =
      _$OnAcceptOrderImpl;

  OrderRequestEntity get request;
  @JsonKey(ignore: true)
  _$$OnAcceptOrderImplCopyWith<_$OnAcceptOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnCancelOrderImplCopyWith<$Res> {
  factory _$$OnCancelOrderImplCopyWith(
          _$OnCancelOrderImpl value, $Res Function(_$OnCancelOrderImpl) then) =
      __$$OnCancelOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId, String? reasonId, String? reasonNote});
}

/// @nodoc
class __$$OnCancelOrderImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnCancelOrderImpl>
    implements _$$OnCancelOrderImplCopyWith<$Res> {
  __$$OnCancelOrderImplCopyWithImpl(
      _$OnCancelOrderImpl _value, $Res Function(_$OnCancelOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? reasonId = freezed,
    Object? reasonNote = freezed,
  }) {
    return _then(_$OnCancelOrderImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      reasonId: freezed == reasonId
          ? _value.reasonId
          : reasonId // ignore: cast_nullable_to_non_nullable
              as String?,
      reasonNote: freezed == reasonNote
          ? _value.reasonNote
          : reasonNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OnCancelOrderImpl implements _OnCancelOrder {
  const _$OnCancelOrderImpl(
      {required this.orderId,
      required this.reasonId,
      required this.reasonNote});

  @override
  final String orderId;
  @override
  final String? reasonId;
  @override
  final String? reasonNote;

  @override
  String toString() {
    return 'HomeEvent.onCancelOrder(orderId: $orderId, reasonId: $reasonId, reasonNote: $reasonNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCancelOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.reasonId, reasonId) ||
                other.reasonId == reasonId) &&
            (identical(other.reasonNote, reasonNote) ||
                other.reasonNote == reasonNote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, reasonId, reasonNote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnCancelOrderImplCopyWith<_$OnCancelOrderImpl> get copyWith =>
      __$$OnCancelOrderImplCopyWithImpl<_$OnCancelOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DriverLocation? location) onStarted,
    required TResult Function(DriverStatus status) onStatusChanged,
    required TResult Function(OrderRequestEntity request)
        onOrderRequestPageChanged,
    required TResult Function(
            DriverLocation location, DateTime? lastLocationUpdate)
        onLocationUpdated,
    required TResult Function(OrderRequestEntity request) onAcceptOrder,
    required TResult Function(
            String orderId, String? reasonId, String? reasonNote)
        onCancelOrder,
    required TResult Function(String orderId) onArrivedToPickupPoint,
    required TResult Function(String orderId) onStripStarted,
    required TResult Function(OrderEntity order, int destinationArrivedTo)
        onArrivedToDestination,
    required TResult Function(String orderId, double amount) paidInCash,
    required TResult Function(String orderId) onSummaryConfirmed,
    required TResult Function(String orderId, int? rating, String? review)
        reviewSubmitted,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function() onShowChat,
    required TResult Function() onHideChat,
  }) {
    return onCancelOrder(orderId, reasonId, reasonNote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DriverLocation? location)? onStarted,
    TResult? Function(DriverStatus status)? onStatusChanged,
    TResult? Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult? Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult? Function(OrderRequestEntity request)? onAcceptOrder,
    TResult? Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult? Function(String orderId)? onArrivedToPickupPoint,
    TResult? Function(String orderId)? onStripStarted,
    TResult? Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult? Function(String orderId, double amount)? paidInCash,
    TResult? Function(String orderId)? onSummaryConfirmed,
    TResult? Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function()? onShowChat,
    TResult? Function()? onHideChat,
  }) {
    return onCancelOrder?.call(orderId, reasonId, reasonNote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DriverLocation? location)? onStarted,
    TResult Function(DriverStatus status)? onStatusChanged,
    TResult Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult Function(OrderRequestEntity request)? onAcceptOrder,
    TResult Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult Function(String orderId)? onArrivedToPickupPoint,
    TResult Function(String orderId)? onStripStarted,
    TResult Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult Function(String orderId, double amount)? paidInCash,
    TResult Function(String orderId)? onSummaryConfirmed,
    TResult Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function()? onShowChat,
    TResult Function()? onHideChat,
    required TResult orElse(),
  }) {
    if (onCancelOrder != null) {
      return onCancelOrder(orderId, reasonId, reasonNote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
    required TResult Function(_OnOrderRequestPageChanged value)
        onOrderRequestPageChanged,
    required TResult Function(_OnLocationUpdated value) onLocationUpdated,
    required TResult Function(_OnAcceptOrder value) onAcceptOrder,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnArrivedToPickupPoint value)
        onArrivedToPickupPoint,
    required TResult Function(_OnTripStarted value) onStripStarted,
    required TResult Function(_OnArrivedToDestination value)
        onArrivedToDestination,
    required TResult Function(_PaidInCash value) paidInCash,
    required TResult Function(_OnSummaryConfirmed value) onSummaryConfirmed,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_OnShowChat value) onShowChat,
    required TResult Function(_OnHideChat value) onHideChat,
  }) {
    return onCancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
    TResult? Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult? Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult? Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult? Function(_OnCancelOrder value)? onCancelOrder,
    TResult? Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult? Function(_OnTripStarted value)? onStripStarted,
    TResult? Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult? Function(_PaidInCash value)? paidInCash,
    TResult? Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_OnShowChat value)? onShowChat,
    TResult? Function(_OnHideChat value)? onHideChat,
  }) {
    return onCancelOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    TResult Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult Function(_OnTripStarted value)? onStripStarted,
    TResult Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult Function(_PaidInCash value)? paidInCash,
    TResult Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_OnShowChat value)? onShowChat,
    TResult Function(_OnHideChat value)? onHideChat,
    required TResult orElse(),
  }) {
    if (onCancelOrder != null) {
      return onCancelOrder(this);
    }
    return orElse();
  }
}

abstract class _OnCancelOrder implements HomeEvent {
  const factory _OnCancelOrder(
      {required final String orderId,
      required final String? reasonId,
      required final String? reasonNote}) = _$OnCancelOrderImpl;

  String get orderId;
  String? get reasonId;
  String? get reasonNote;
  @JsonKey(ignore: true)
  _$$OnCancelOrderImplCopyWith<_$OnCancelOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnArrivedToPickupPointImplCopyWith<$Res> {
  factory _$$OnArrivedToPickupPointImplCopyWith(
          _$OnArrivedToPickupPointImpl value,
          $Res Function(_$OnArrivedToPickupPointImpl) then) =
      __$$OnArrivedToPickupPointImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$OnArrivedToPickupPointImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnArrivedToPickupPointImpl>
    implements _$$OnArrivedToPickupPointImplCopyWith<$Res> {
  __$$OnArrivedToPickupPointImplCopyWithImpl(
      _$OnArrivedToPickupPointImpl _value,
      $Res Function(_$OnArrivedToPickupPointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$OnArrivedToPickupPointImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnArrivedToPickupPointImpl implements _OnArrivedToPickupPoint {
  const _$OnArrivedToPickupPointImpl({required this.orderId});

  @override
  final String orderId;

  @override
  String toString() {
    return 'HomeEvent.onArrivedToPickupPoint(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnArrivedToPickupPointImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnArrivedToPickupPointImplCopyWith<_$OnArrivedToPickupPointImpl>
      get copyWith => __$$OnArrivedToPickupPointImplCopyWithImpl<
          _$OnArrivedToPickupPointImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DriverLocation? location) onStarted,
    required TResult Function(DriverStatus status) onStatusChanged,
    required TResult Function(OrderRequestEntity request)
        onOrderRequestPageChanged,
    required TResult Function(
            DriverLocation location, DateTime? lastLocationUpdate)
        onLocationUpdated,
    required TResult Function(OrderRequestEntity request) onAcceptOrder,
    required TResult Function(
            String orderId, String? reasonId, String? reasonNote)
        onCancelOrder,
    required TResult Function(String orderId) onArrivedToPickupPoint,
    required TResult Function(String orderId) onStripStarted,
    required TResult Function(OrderEntity order, int destinationArrivedTo)
        onArrivedToDestination,
    required TResult Function(String orderId, double amount) paidInCash,
    required TResult Function(String orderId) onSummaryConfirmed,
    required TResult Function(String orderId, int? rating, String? review)
        reviewSubmitted,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function() onShowChat,
    required TResult Function() onHideChat,
  }) {
    return onArrivedToPickupPoint(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DriverLocation? location)? onStarted,
    TResult? Function(DriverStatus status)? onStatusChanged,
    TResult? Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult? Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult? Function(OrderRequestEntity request)? onAcceptOrder,
    TResult? Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult? Function(String orderId)? onArrivedToPickupPoint,
    TResult? Function(String orderId)? onStripStarted,
    TResult? Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult? Function(String orderId, double amount)? paidInCash,
    TResult? Function(String orderId)? onSummaryConfirmed,
    TResult? Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function()? onShowChat,
    TResult? Function()? onHideChat,
  }) {
    return onArrivedToPickupPoint?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DriverLocation? location)? onStarted,
    TResult Function(DriverStatus status)? onStatusChanged,
    TResult Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult Function(OrderRequestEntity request)? onAcceptOrder,
    TResult Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult Function(String orderId)? onArrivedToPickupPoint,
    TResult Function(String orderId)? onStripStarted,
    TResult Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult Function(String orderId, double amount)? paidInCash,
    TResult Function(String orderId)? onSummaryConfirmed,
    TResult Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function()? onShowChat,
    TResult Function()? onHideChat,
    required TResult orElse(),
  }) {
    if (onArrivedToPickupPoint != null) {
      return onArrivedToPickupPoint(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
    required TResult Function(_OnOrderRequestPageChanged value)
        onOrderRequestPageChanged,
    required TResult Function(_OnLocationUpdated value) onLocationUpdated,
    required TResult Function(_OnAcceptOrder value) onAcceptOrder,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnArrivedToPickupPoint value)
        onArrivedToPickupPoint,
    required TResult Function(_OnTripStarted value) onStripStarted,
    required TResult Function(_OnArrivedToDestination value)
        onArrivedToDestination,
    required TResult Function(_PaidInCash value) paidInCash,
    required TResult Function(_OnSummaryConfirmed value) onSummaryConfirmed,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_OnShowChat value) onShowChat,
    required TResult Function(_OnHideChat value) onHideChat,
  }) {
    return onArrivedToPickupPoint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
    TResult? Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult? Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult? Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult? Function(_OnCancelOrder value)? onCancelOrder,
    TResult? Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult? Function(_OnTripStarted value)? onStripStarted,
    TResult? Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult? Function(_PaidInCash value)? paidInCash,
    TResult? Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_OnShowChat value)? onShowChat,
    TResult? Function(_OnHideChat value)? onHideChat,
  }) {
    return onArrivedToPickupPoint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    TResult Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult Function(_OnTripStarted value)? onStripStarted,
    TResult Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult Function(_PaidInCash value)? paidInCash,
    TResult Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_OnShowChat value)? onShowChat,
    TResult Function(_OnHideChat value)? onHideChat,
    required TResult orElse(),
  }) {
    if (onArrivedToPickupPoint != null) {
      return onArrivedToPickupPoint(this);
    }
    return orElse();
  }
}

abstract class _OnArrivedToPickupPoint implements HomeEvent {
  const factory _OnArrivedToPickupPoint({required final String orderId}) =
      _$OnArrivedToPickupPointImpl;

  String get orderId;
  @JsonKey(ignore: true)
  _$$OnArrivedToPickupPointImplCopyWith<_$OnArrivedToPickupPointImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnTripStartedImplCopyWith<$Res> {
  factory _$$OnTripStartedImplCopyWith(
          _$OnTripStartedImpl value, $Res Function(_$OnTripStartedImpl) then) =
      __$$OnTripStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$OnTripStartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnTripStartedImpl>
    implements _$$OnTripStartedImplCopyWith<$Res> {
  __$$OnTripStartedImplCopyWithImpl(
      _$OnTripStartedImpl _value, $Res Function(_$OnTripStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$OnTripStartedImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnTripStartedImpl implements _OnTripStarted {
  const _$OnTripStartedImpl({required this.orderId});

  @override
  final String orderId;

  @override
  String toString() {
    return 'HomeEvent.onStripStarted(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTripStartedImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTripStartedImplCopyWith<_$OnTripStartedImpl> get copyWith =>
      __$$OnTripStartedImplCopyWithImpl<_$OnTripStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DriverLocation? location) onStarted,
    required TResult Function(DriverStatus status) onStatusChanged,
    required TResult Function(OrderRequestEntity request)
        onOrderRequestPageChanged,
    required TResult Function(
            DriverLocation location, DateTime? lastLocationUpdate)
        onLocationUpdated,
    required TResult Function(OrderRequestEntity request) onAcceptOrder,
    required TResult Function(
            String orderId, String? reasonId, String? reasonNote)
        onCancelOrder,
    required TResult Function(String orderId) onArrivedToPickupPoint,
    required TResult Function(String orderId) onStripStarted,
    required TResult Function(OrderEntity order, int destinationArrivedTo)
        onArrivedToDestination,
    required TResult Function(String orderId, double amount) paidInCash,
    required TResult Function(String orderId) onSummaryConfirmed,
    required TResult Function(String orderId, int? rating, String? review)
        reviewSubmitted,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function() onShowChat,
    required TResult Function() onHideChat,
  }) {
    return onStripStarted(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DriverLocation? location)? onStarted,
    TResult? Function(DriverStatus status)? onStatusChanged,
    TResult? Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult? Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult? Function(OrderRequestEntity request)? onAcceptOrder,
    TResult? Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult? Function(String orderId)? onArrivedToPickupPoint,
    TResult? Function(String orderId)? onStripStarted,
    TResult? Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult? Function(String orderId, double amount)? paidInCash,
    TResult? Function(String orderId)? onSummaryConfirmed,
    TResult? Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function()? onShowChat,
    TResult? Function()? onHideChat,
  }) {
    return onStripStarted?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DriverLocation? location)? onStarted,
    TResult Function(DriverStatus status)? onStatusChanged,
    TResult Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult Function(OrderRequestEntity request)? onAcceptOrder,
    TResult Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult Function(String orderId)? onArrivedToPickupPoint,
    TResult Function(String orderId)? onStripStarted,
    TResult Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult Function(String orderId, double amount)? paidInCash,
    TResult Function(String orderId)? onSummaryConfirmed,
    TResult Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function()? onShowChat,
    TResult Function()? onHideChat,
    required TResult orElse(),
  }) {
    if (onStripStarted != null) {
      return onStripStarted(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
    required TResult Function(_OnOrderRequestPageChanged value)
        onOrderRequestPageChanged,
    required TResult Function(_OnLocationUpdated value) onLocationUpdated,
    required TResult Function(_OnAcceptOrder value) onAcceptOrder,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnArrivedToPickupPoint value)
        onArrivedToPickupPoint,
    required TResult Function(_OnTripStarted value) onStripStarted,
    required TResult Function(_OnArrivedToDestination value)
        onArrivedToDestination,
    required TResult Function(_PaidInCash value) paidInCash,
    required TResult Function(_OnSummaryConfirmed value) onSummaryConfirmed,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_OnShowChat value) onShowChat,
    required TResult Function(_OnHideChat value) onHideChat,
  }) {
    return onStripStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
    TResult? Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult? Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult? Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult? Function(_OnCancelOrder value)? onCancelOrder,
    TResult? Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult? Function(_OnTripStarted value)? onStripStarted,
    TResult? Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult? Function(_PaidInCash value)? paidInCash,
    TResult? Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_OnShowChat value)? onShowChat,
    TResult? Function(_OnHideChat value)? onHideChat,
  }) {
    return onStripStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    TResult Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult Function(_OnTripStarted value)? onStripStarted,
    TResult Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult Function(_PaidInCash value)? paidInCash,
    TResult Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_OnShowChat value)? onShowChat,
    TResult Function(_OnHideChat value)? onHideChat,
    required TResult orElse(),
  }) {
    if (onStripStarted != null) {
      return onStripStarted(this);
    }
    return orElse();
  }
}

abstract class _OnTripStarted implements HomeEvent {
  const factory _OnTripStarted({required final String orderId}) =
      _$OnTripStartedImpl;

  String get orderId;
  @JsonKey(ignore: true)
  _$$OnTripStartedImplCopyWith<_$OnTripStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnArrivedToDestinationImplCopyWith<$Res> {
  factory _$$OnArrivedToDestinationImplCopyWith(
          _$OnArrivedToDestinationImpl value,
          $Res Function(_$OnArrivedToDestinationImpl) then) =
      __$$OnArrivedToDestinationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderEntity order, int destinationArrivedTo});

  $OrderEntityCopyWith<$Res> get order;
}

/// @nodoc
class __$$OnArrivedToDestinationImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnArrivedToDestinationImpl>
    implements _$$OnArrivedToDestinationImplCopyWith<$Res> {
  __$$OnArrivedToDestinationImplCopyWithImpl(
      _$OnArrivedToDestinationImpl _value,
      $Res Function(_$OnArrivedToDestinationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? destinationArrivedTo = null,
  }) {
    return _then(_$OnArrivedToDestinationImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderEntity,
      destinationArrivedTo: null == destinationArrivedTo
          ? _value.destinationArrivedTo
          : destinationArrivedTo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderEntityCopyWith<$Res> get order {
    return $OrderEntityCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc

class _$OnArrivedToDestinationImpl implements _OnArrivedToDestination {
  const _$OnArrivedToDestinationImpl(
      {required this.order, required this.destinationArrivedTo});

  @override
  final OrderEntity order;
  @override
  final int destinationArrivedTo;

  @override
  String toString() {
    return 'HomeEvent.onArrivedToDestination(order: $order, destinationArrivedTo: $destinationArrivedTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnArrivedToDestinationImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.destinationArrivedTo, destinationArrivedTo) ||
                other.destinationArrivedTo == destinationArrivedTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, destinationArrivedTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnArrivedToDestinationImplCopyWith<_$OnArrivedToDestinationImpl>
      get copyWith => __$$OnArrivedToDestinationImplCopyWithImpl<
          _$OnArrivedToDestinationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DriverLocation? location) onStarted,
    required TResult Function(DriverStatus status) onStatusChanged,
    required TResult Function(OrderRequestEntity request)
        onOrderRequestPageChanged,
    required TResult Function(
            DriverLocation location, DateTime? lastLocationUpdate)
        onLocationUpdated,
    required TResult Function(OrderRequestEntity request) onAcceptOrder,
    required TResult Function(
            String orderId, String? reasonId, String? reasonNote)
        onCancelOrder,
    required TResult Function(String orderId) onArrivedToPickupPoint,
    required TResult Function(String orderId) onStripStarted,
    required TResult Function(OrderEntity order, int destinationArrivedTo)
        onArrivedToDestination,
    required TResult Function(String orderId, double amount) paidInCash,
    required TResult Function(String orderId) onSummaryConfirmed,
    required TResult Function(String orderId, int? rating, String? review)
        reviewSubmitted,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function() onShowChat,
    required TResult Function() onHideChat,
  }) {
    return onArrivedToDestination(order, destinationArrivedTo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DriverLocation? location)? onStarted,
    TResult? Function(DriverStatus status)? onStatusChanged,
    TResult? Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult? Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult? Function(OrderRequestEntity request)? onAcceptOrder,
    TResult? Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult? Function(String orderId)? onArrivedToPickupPoint,
    TResult? Function(String orderId)? onStripStarted,
    TResult? Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult? Function(String orderId, double amount)? paidInCash,
    TResult? Function(String orderId)? onSummaryConfirmed,
    TResult? Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function()? onShowChat,
    TResult? Function()? onHideChat,
  }) {
    return onArrivedToDestination?.call(order, destinationArrivedTo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DriverLocation? location)? onStarted,
    TResult Function(DriverStatus status)? onStatusChanged,
    TResult Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult Function(OrderRequestEntity request)? onAcceptOrder,
    TResult Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult Function(String orderId)? onArrivedToPickupPoint,
    TResult Function(String orderId)? onStripStarted,
    TResult Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult Function(String orderId, double amount)? paidInCash,
    TResult Function(String orderId)? onSummaryConfirmed,
    TResult Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function()? onShowChat,
    TResult Function()? onHideChat,
    required TResult orElse(),
  }) {
    if (onArrivedToDestination != null) {
      return onArrivedToDestination(order, destinationArrivedTo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
    required TResult Function(_OnOrderRequestPageChanged value)
        onOrderRequestPageChanged,
    required TResult Function(_OnLocationUpdated value) onLocationUpdated,
    required TResult Function(_OnAcceptOrder value) onAcceptOrder,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnArrivedToPickupPoint value)
        onArrivedToPickupPoint,
    required TResult Function(_OnTripStarted value) onStripStarted,
    required TResult Function(_OnArrivedToDestination value)
        onArrivedToDestination,
    required TResult Function(_PaidInCash value) paidInCash,
    required TResult Function(_OnSummaryConfirmed value) onSummaryConfirmed,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_OnShowChat value) onShowChat,
    required TResult Function(_OnHideChat value) onHideChat,
  }) {
    return onArrivedToDestination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
    TResult? Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult? Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult? Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult? Function(_OnCancelOrder value)? onCancelOrder,
    TResult? Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult? Function(_OnTripStarted value)? onStripStarted,
    TResult? Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult? Function(_PaidInCash value)? paidInCash,
    TResult? Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_OnShowChat value)? onShowChat,
    TResult? Function(_OnHideChat value)? onHideChat,
  }) {
    return onArrivedToDestination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    TResult Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult Function(_OnTripStarted value)? onStripStarted,
    TResult Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult Function(_PaidInCash value)? paidInCash,
    TResult Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_OnShowChat value)? onShowChat,
    TResult Function(_OnHideChat value)? onHideChat,
    required TResult orElse(),
  }) {
    if (onArrivedToDestination != null) {
      return onArrivedToDestination(this);
    }
    return orElse();
  }
}

abstract class _OnArrivedToDestination implements HomeEvent {
  const factory _OnArrivedToDestination(
      {required final OrderEntity order,
      required final int destinationArrivedTo}) = _$OnArrivedToDestinationImpl;

  OrderEntity get order;
  int get destinationArrivedTo;
  @JsonKey(ignore: true)
  _$$OnArrivedToDestinationImplCopyWith<_$OnArrivedToDestinationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaidInCashImplCopyWith<$Res> {
  factory _$$PaidInCashImplCopyWith(
          _$PaidInCashImpl value, $Res Function(_$PaidInCashImpl) then) =
      __$$PaidInCashImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId, double amount});
}

/// @nodoc
class __$$PaidInCashImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$PaidInCashImpl>
    implements _$$PaidInCashImplCopyWith<$Res> {
  __$$PaidInCashImplCopyWithImpl(
      _$PaidInCashImpl _value, $Res Function(_$PaidInCashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? amount = null,
  }) {
    return _then(_$PaidInCashImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PaidInCashImpl implements _PaidInCash {
  const _$PaidInCashImpl({required this.orderId, required this.amount});

  @override
  final String orderId;
  @override
  final double amount;

  @override
  String toString() {
    return 'HomeEvent.paidInCash(orderId: $orderId, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaidInCashImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaidInCashImplCopyWith<_$PaidInCashImpl> get copyWith =>
      __$$PaidInCashImplCopyWithImpl<_$PaidInCashImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DriverLocation? location) onStarted,
    required TResult Function(DriverStatus status) onStatusChanged,
    required TResult Function(OrderRequestEntity request)
        onOrderRequestPageChanged,
    required TResult Function(
            DriverLocation location, DateTime? lastLocationUpdate)
        onLocationUpdated,
    required TResult Function(OrderRequestEntity request) onAcceptOrder,
    required TResult Function(
            String orderId, String? reasonId, String? reasonNote)
        onCancelOrder,
    required TResult Function(String orderId) onArrivedToPickupPoint,
    required TResult Function(String orderId) onStripStarted,
    required TResult Function(OrderEntity order, int destinationArrivedTo)
        onArrivedToDestination,
    required TResult Function(String orderId, double amount) paidInCash,
    required TResult Function(String orderId) onSummaryConfirmed,
    required TResult Function(String orderId, int? rating, String? review)
        reviewSubmitted,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function() onShowChat,
    required TResult Function() onHideChat,
  }) {
    return paidInCash(orderId, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DriverLocation? location)? onStarted,
    TResult? Function(DriverStatus status)? onStatusChanged,
    TResult? Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult? Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult? Function(OrderRequestEntity request)? onAcceptOrder,
    TResult? Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult? Function(String orderId)? onArrivedToPickupPoint,
    TResult? Function(String orderId)? onStripStarted,
    TResult? Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult? Function(String orderId, double amount)? paidInCash,
    TResult? Function(String orderId)? onSummaryConfirmed,
    TResult? Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function()? onShowChat,
    TResult? Function()? onHideChat,
  }) {
    return paidInCash?.call(orderId, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DriverLocation? location)? onStarted,
    TResult Function(DriverStatus status)? onStatusChanged,
    TResult Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult Function(OrderRequestEntity request)? onAcceptOrder,
    TResult Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult Function(String orderId)? onArrivedToPickupPoint,
    TResult Function(String orderId)? onStripStarted,
    TResult Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult Function(String orderId, double amount)? paidInCash,
    TResult Function(String orderId)? onSummaryConfirmed,
    TResult Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function()? onShowChat,
    TResult Function()? onHideChat,
    required TResult orElse(),
  }) {
    if (paidInCash != null) {
      return paidInCash(orderId, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
    required TResult Function(_OnOrderRequestPageChanged value)
        onOrderRequestPageChanged,
    required TResult Function(_OnLocationUpdated value) onLocationUpdated,
    required TResult Function(_OnAcceptOrder value) onAcceptOrder,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnArrivedToPickupPoint value)
        onArrivedToPickupPoint,
    required TResult Function(_OnTripStarted value) onStripStarted,
    required TResult Function(_OnArrivedToDestination value)
        onArrivedToDestination,
    required TResult Function(_PaidInCash value) paidInCash,
    required TResult Function(_OnSummaryConfirmed value) onSummaryConfirmed,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_OnShowChat value) onShowChat,
    required TResult Function(_OnHideChat value) onHideChat,
  }) {
    return paidInCash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
    TResult? Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult? Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult? Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult? Function(_OnCancelOrder value)? onCancelOrder,
    TResult? Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult? Function(_OnTripStarted value)? onStripStarted,
    TResult? Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult? Function(_PaidInCash value)? paidInCash,
    TResult? Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_OnShowChat value)? onShowChat,
    TResult? Function(_OnHideChat value)? onHideChat,
  }) {
    return paidInCash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    TResult Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult Function(_OnTripStarted value)? onStripStarted,
    TResult Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult Function(_PaidInCash value)? paidInCash,
    TResult Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_OnShowChat value)? onShowChat,
    TResult Function(_OnHideChat value)? onHideChat,
    required TResult orElse(),
  }) {
    if (paidInCash != null) {
      return paidInCash(this);
    }
    return orElse();
  }
}

abstract class _PaidInCash implements HomeEvent {
  const factory _PaidInCash(
      {required final String orderId,
      required final double amount}) = _$PaidInCashImpl;

  String get orderId;
  double get amount;
  @JsonKey(ignore: true)
  _$$PaidInCashImplCopyWith<_$PaidInCashImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnSummaryConfirmedImplCopyWith<$Res> {
  factory _$$OnSummaryConfirmedImplCopyWith(_$OnSummaryConfirmedImpl value,
          $Res Function(_$OnSummaryConfirmedImpl) then) =
      __$$OnSummaryConfirmedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$OnSummaryConfirmedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnSummaryConfirmedImpl>
    implements _$$OnSummaryConfirmedImplCopyWith<$Res> {
  __$$OnSummaryConfirmedImplCopyWithImpl(_$OnSummaryConfirmedImpl _value,
      $Res Function(_$OnSummaryConfirmedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$OnSummaryConfirmedImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSummaryConfirmedImpl implements _OnSummaryConfirmed {
  const _$OnSummaryConfirmedImpl({required this.orderId});

  @override
  final String orderId;

  @override
  String toString() {
    return 'HomeEvent.onSummaryConfirmed(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSummaryConfirmedImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnSummaryConfirmedImplCopyWith<_$OnSummaryConfirmedImpl> get copyWith =>
      __$$OnSummaryConfirmedImplCopyWithImpl<_$OnSummaryConfirmedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DriverLocation? location) onStarted,
    required TResult Function(DriverStatus status) onStatusChanged,
    required TResult Function(OrderRequestEntity request)
        onOrderRequestPageChanged,
    required TResult Function(
            DriverLocation location, DateTime? lastLocationUpdate)
        onLocationUpdated,
    required TResult Function(OrderRequestEntity request) onAcceptOrder,
    required TResult Function(
            String orderId, String? reasonId, String? reasonNote)
        onCancelOrder,
    required TResult Function(String orderId) onArrivedToPickupPoint,
    required TResult Function(String orderId) onStripStarted,
    required TResult Function(OrderEntity order, int destinationArrivedTo)
        onArrivedToDestination,
    required TResult Function(String orderId, double amount) paidInCash,
    required TResult Function(String orderId) onSummaryConfirmed,
    required TResult Function(String orderId, int? rating, String? review)
        reviewSubmitted,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function() onShowChat,
    required TResult Function() onHideChat,
  }) {
    return onSummaryConfirmed(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DriverLocation? location)? onStarted,
    TResult? Function(DriverStatus status)? onStatusChanged,
    TResult? Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult? Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult? Function(OrderRequestEntity request)? onAcceptOrder,
    TResult? Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult? Function(String orderId)? onArrivedToPickupPoint,
    TResult? Function(String orderId)? onStripStarted,
    TResult? Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult? Function(String orderId, double amount)? paidInCash,
    TResult? Function(String orderId)? onSummaryConfirmed,
    TResult? Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function()? onShowChat,
    TResult? Function()? onHideChat,
  }) {
    return onSummaryConfirmed?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DriverLocation? location)? onStarted,
    TResult Function(DriverStatus status)? onStatusChanged,
    TResult Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult Function(OrderRequestEntity request)? onAcceptOrder,
    TResult Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult Function(String orderId)? onArrivedToPickupPoint,
    TResult Function(String orderId)? onStripStarted,
    TResult Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult Function(String orderId, double amount)? paidInCash,
    TResult Function(String orderId)? onSummaryConfirmed,
    TResult Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function()? onShowChat,
    TResult Function()? onHideChat,
    required TResult orElse(),
  }) {
    if (onSummaryConfirmed != null) {
      return onSummaryConfirmed(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
    required TResult Function(_OnOrderRequestPageChanged value)
        onOrderRequestPageChanged,
    required TResult Function(_OnLocationUpdated value) onLocationUpdated,
    required TResult Function(_OnAcceptOrder value) onAcceptOrder,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnArrivedToPickupPoint value)
        onArrivedToPickupPoint,
    required TResult Function(_OnTripStarted value) onStripStarted,
    required TResult Function(_OnArrivedToDestination value)
        onArrivedToDestination,
    required TResult Function(_PaidInCash value) paidInCash,
    required TResult Function(_OnSummaryConfirmed value) onSummaryConfirmed,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_OnShowChat value) onShowChat,
    required TResult Function(_OnHideChat value) onHideChat,
  }) {
    return onSummaryConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
    TResult? Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult? Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult? Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult? Function(_OnCancelOrder value)? onCancelOrder,
    TResult? Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult? Function(_OnTripStarted value)? onStripStarted,
    TResult? Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult? Function(_PaidInCash value)? paidInCash,
    TResult? Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_OnShowChat value)? onShowChat,
    TResult? Function(_OnHideChat value)? onHideChat,
  }) {
    return onSummaryConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    TResult Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult Function(_OnTripStarted value)? onStripStarted,
    TResult Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult Function(_PaidInCash value)? paidInCash,
    TResult Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_OnShowChat value)? onShowChat,
    TResult Function(_OnHideChat value)? onHideChat,
    required TResult orElse(),
  }) {
    if (onSummaryConfirmed != null) {
      return onSummaryConfirmed(this);
    }
    return orElse();
  }
}

abstract class _OnSummaryConfirmed implements HomeEvent {
  const factory _OnSummaryConfirmed({required final String orderId}) =
      _$OnSummaryConfirmedImpl;

  String get orderId;
  @JsonKey(ignore: true)
  _$$OnSummaryConfirmedImplCopyWith<_$OnSummaryConfirmedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewSubmittedImplCopyWith<$Res> {
  factory _$$ReviewSubmittedImplCopyWith(_$ReviewSubmittedImpl value,
          $Res Function(_$ReviewSubmittedImpl) then) =
      __$$ReviewSubmittedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId, int? rating, String? review});
}

/// @nodoc
class __$$ReviewSubmittedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ReviewSubmittedImpl>
    implements _$$ReviewSubmittedImplCopyWith<$Res> {
  __$$ReviewSubmittedImplCopyWithImpl(
      _$ReviewSubmittedImpl _value, $Res Function(_$ReviewSubmittedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? rating = freezed,
    Object? review = freezed,
  }) {
    return _then(_$ReviewSubmittedImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ReviewSubmittedImpl implements _ReviewSubmitted {
  const _$ReviewSubmittedImpl(
      {required this.orderId, required this.rating, required this.review});

  @override
  final String orderId;
  @override
  final int? rating;
  @override
  final String? review;

  @override
  String toString() {
    return 'HomeEvent.reviewSubmitted(orderId: $orderId, rating: $rating, review: $review)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewSubmittedImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.review, review) || other.review == review));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, rating, review);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewSubmittedImplCopyWith<_$ReviewSubmittedImpl> get copyWith =>
      __$$ReviewSubmittedImplCopyWithImpl<_$ReviewSubmittedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DriverLocation? location) onStarted,
    required TResult Function(DriverStatus status) onStatusChanged,
    required TResult Function(OrderRequestEntity request)
        onOrderRequestPageChanged,
    required TResult Function(
            DriverLocation location, DateTime? lastLocationUpdate)
        onLocationUpdated,
    required TResult Function(OrderRequestEntity request) onAcceptOrder,
    required TResult Function(
            String orderId, String? reasonId, String? reasonNote)
        onCancelOrder,
    required TResult Function(String orderId) onArrivedToPickupPoint,
    required TResult Function(String orderId) onStripStarted,
    required TResult Function(OrderEntity order, int destinationArrivedTo)
        onArrivedToDestination,
    required TResult Function(String orderId, double amount) paidInCash,
    required TResult Function(String orderId) onSummaryConfirmed,
    required TResult Function(String orderId, int? rating, String? review)
        reviewSubmitted,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function() onShowChat,
    required TResult Function() onHideChat,
  }) {
    return reviewSubmitted(orderId, rating, review);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DriverLocation? location)? onStarted,
    TResult? Function(DriverStatus status)? onStatusChanged,
    TResult? Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult? Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult? Function(OrderRequestEntity request)? onAcceptOrder,
    TResult? Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult? Function(String orderId)? onArrivedToPickupPoint,
    TResult? Function(String orderId)? onStripStarted,
    TResult? Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult? Function(String orderId, double amount)? paidInCash,
    TResult? Function(String orderId)? onSummaryConfirmed,
    TResult? Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function()? onShowChat,
    TResult? Function()? onHideChat,
  }) {
    return reviewSubmitted?.call(orderId, rating, review);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DriverLocation? location)? onStarted,
    TResult Function(DriverStatus status)? onStatusChanged,
    TResult Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult Function(OrderRequestEntity request)? onAcceptOrder,
    TResult Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult Function(String orderId)? onArrivedToPickupPoint,
    TResult Function(String orderId)? onStripStarted,
    TResult Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult Function(String orderId, double amount)? paidInCash,
    TResult Function(String orderId)? onSummaryConfirmed,
    TResult Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function()? onShowChat,
    TResult Function()? onHideChat,
    required TResult orElse(),
  }) {
    if (reviewSubmitted != null) {
      return reviewSubmitted(orderId, rating, review);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
    required TResult Function(_OnOrderRequestPageChanged value)
        onOrderRequestPageChanged,
    required TResult Function(_OnLocationUpdated value) onLocationUpdated,
    required TResult Function(_OnAcceptOrder value) onAcceptOrder,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnArrivedToPickupPoint value)
        onArrivedToPickupPoint,
    required TResult Function(_OnTripStarted value) onStripStarted,
    required TResult Function(_OnArrivedToDestination value)
        onArrivedToDestination,
    required TResult Function(_PaidInCash value) paidInCash,
    required TResult Function(_OnSummaryConfirmed value) onSummaryConfirmed,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_OnShowChat value) onShowChat,
    required TResult Function(_OnHideChat value) onHideChat,
  }) {
    return reviewSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
    TResult? Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult? Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult? Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult? Function(_OnCancelOrder value)? onCancelOrder,
    TResult? Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult? Function(_OnTripStarted value)? onStripStarted,
    TResult? Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult? Function(_PaidInCash value)? paidInCash,
    TResult? Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_OnShowChat value)? onShowChat,
    TResult? Function(_OnHideChat value)? onHideChat,
  }) {
    return reviewSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    TResult Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult Function(_OnTripStarted value)? onStripStarted,
    TResult Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult Function(_PaidInCash value)? paidInCash,
    TResult Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_OnShowChat value)? onShowChat,
    TResult Function(_OnHideChat value)? onHideChat,
    required TResult orElse(),
  }) {
    if (reviewSubmitted != null) {
      return reviewSubmitted(this);
    }
    return orElse();
  }
}

abstract class _ReviewSubmitted implements HomeEvent {
  const factory _ReviewSubmitted(
      {required final String orderId,
      required final int? rating,
      required final String? review}) = _$ReviewSubmittedImpl;

  String get orderId;
  int? get rating;
  String? get review;
  @JsonKey(ignore: true)
  _$$ReviewSubmittedImplCopyWith<_$ReviewSubmittedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageSentImplCopyWith<$Res> {
  factory _$$MessageSentImplCopyWith(
          _$MessageSentImpl value, $Res Function(_$MessageSentImpl) then) =
      __$$MessageSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatMessageEntity message});

  $ChatMessageEntityCopyWith<$Res> get message;
}

/// @nodoc
class __$$MessageSentImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$MessageSentImpl>
    implements _$$MessageSentImplCopyWith<$Res> {
  __$$MessageSentImplCopyWithImpl(
      _$MessageSentImpl _value, $Res Function(_$MessageSentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MessageSentImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessageEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatMessageEntityCopyWith<$Res> get message {
    return $ChatMessageEntityCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$MessageSentImpl implements _MessageSent {
  const _$MessageSentImpl({required this.message});

  @override
  final ChatMessageEntity message;

  @override
  String toString() {
    return 'HomeEvent.messageSent(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageSentImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageSentImplCopyWith<_$MessageSentImpl> get copyWith =>
      __$$MessageSentImplCopyWithImpl<_$MessageSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DriverLocation? location) onStarted,
    required TResult Function(DriverStatus status) onStatusChanged,
    required TResult Function(OrderRequestEntity request)
        onOrderRequestPageChanged,
    required TResult Function(
            DriverLocation location, DateTime? lastLocationUpdate)
        onLocationUpdated,
    required TResult Function(OrderRequestEntity request) onAcceptOrder,
    required TResult Function(
            String orderId, String? reasonId, String? reasonNote)
        onCancelOrder,
    required TResult Function(String orderId) onArrivedToPickupPoint,
    required TResult Function(String orderId) onStripStarted,
    required TResult Function(OrderEntity order, int destinationArrivedTo)
        onArrivedToDestination,
    required TResult Function(String orderId, double amount) paidInCash,
    required TResult Function(String orderId) onSummaryConfirmed,
    required TResult Function(String orderId, int? rating, String? review)
        reviewSubmitted,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function() onShowChat,
    required TResult Function() onHideChat,
  }) {
    return messageSent(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DriverLocation? location)? onStarted,
    TResult? Function(DriverStatus status)? onStatusChanged,
    TResult? Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult? Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult? Function(OrderRequestEntity request)? onAcceptOrder,
    TResult? Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult? Function(String orderId)? onArrivedToPickupPoint,
    TResult? Function(String orderId)? onStripStarted,
    TResult? Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult? Function(String orderId, double amount)? paidInCash,
    TResult? Function(String orderId)? onSummaryConfirmed,
    TResult? Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function()? onShowChat,
    TResult? Function()? onHideChat,
  }) {
    return messageSent?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DriverLocation? location)? onStarted,
    TResult Function(DriverStatus status)? onStatusChanged,
    TResult Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult Function(OrderRequestEntity request)? onAcceptOrder,
    TResult Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult Function(String orderId)? onArrivedToPickupPoint,
    TResult Function(String orderId)? onStripStarted,
    TResult Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult Function(String orderId, double amount)? paidInCash,
    TResult Function(String orderId)? onSummaryConfirmed,
    TResult Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function()? onShowChat,
    TResult Function()? onHideChat,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
    required TResult Function(_OnOrderRequestPageChanged value)
        onOrderRequestPageChanged,
    required TResult Function(_OnLocationUpdated value) onLocationUpdated,
    required TResult Function(_OnAcceptOrder value) onAcceptOrder,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnArrivedToPickupPoint value)
        onArrivedToPickupPoint,
    required TResult Function(_OnTripStarted value) onStripStarted,
    required TResult Function(_OnArrivedToDestination value)
        onArrivedToDestination,
    required TResult Function(_PaidInCash value) paidInCash,
    required TResult Function(_OnSummaryConfirmed value) onSummaryConfirmed,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_OnShowChat value) onShowChat,
    required TResult Function(_OnHideChat value) onHideChat,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
    TResult? Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult? Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult? Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult? Function(_OnCancelOrder value)? onCancelOrder,
    TResult? Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult? Function(_OnTripStarted value)? onStripStarted,
    TResult? Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult? Function(_PaidInCash value)? paidInCash,
    TResult? Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_OnShowChat value)? onShowChat,
    TResult? Function(_OnHideChat value)? onHideChat,
  }) {
    return messageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    TResult Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult Function(_OnTripStarted value)? onStripStarted,
    TResult Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult Function(_PaidInCash value)? paidInCash,
    TResult Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_OnShowChat value)? onShowChat,
    TResult Function(_OnHideChat value)? onHideChat,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class _MessageSent implements HomeEvent {
  const factory _MessageSent({required final ChatMessageEntity message}) =
      _$MessageSentImpl;

  ChatMessageEntity get message;
  @JsonKey(ignore: true)
  _$$MessageSentImplCopyWith<_$MessageSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnShowChatImplCopyWith<$Res> {
  factory _$$OnShowChatImplCopyWith(
          _$OnShowChatImpl value, $Res Function(_$OnShowChatImpl) then) =
      __$$OnShowChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnShowChatImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnShowChatImpl>
    implements _$$OnShowChatImplCopyWith<$Res> {
  __$$OnShowChatImplCopyWithImpl(
      _$OnShowChatImpl _value, $Res Function(_$OnShowChatImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnShowChatImpl implements _OnShowChat {
  const _$OnShowChatImpl();

  @override
  String toString() {
    return 'HomeEvent.onShowChat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnShowChatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DriverLocation? location) onStarted,
    required TResult Function(DriverStatus status) onStatusChanged,
    required TResult Function(OrderRequestEntity request)
        onOrderRequestPageChanged,
    required TResult Function(
            DriverLocation location, DateTime? lastLocationUpdate)
        onLocationUpdated,
    required TResult Function(OrderRequestEntity request) onAcceptOrder,
    required TResult Function(
            String orderId, String? reasonId, String? reasonNote)
        onCancelOrder,
    required TResult Function(String orderId) onArrivedToPickupPoint,
    required TResult Function(String orderId) onStripStarted,
    required TResult Function(OrderEntity order, int destinationArrivedTo)
        onArrivedToDestination,
    required TResult Function(String orderId, double amount) paidInCash,
    required TResult Function(String orderId) onSummaryConfirmed,
    required TResult Function(String orderId, int? rating, String? review)
        reviewSubmitted,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function() onShowChat,
    required TResult Function() onHideChat,
  }) {
    return onShowChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DriverLocation? location)? onStarted,
    TResult? Function(DriverStatus status)? onStatusChanged,
    TResult? Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult? Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult? Function(OrderRequestEntity request)? onAcceptOrder,
    TResult? Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult? Function(String orderId)? onArrivedToPickupPoint,
    TResult? Function(String orderId)? onStripStarted,
    TResult? Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult? Function(String orderId, double amount)? paidInCash,
    TResult? Function(String orderId)? onSummaryConfirmed,
    TResult? Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function()? onShowChat,
    TResult? Function()? onHideChat,
  }) {
    return onShowChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DriverLocation? location)? onStarted,
    TResult Function(DriverStatus status)? onStatusChanged,
    TResult Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult Function(OrderRequestEntity request)? onAcceptOrder,
    TResult Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult Function(String orderId)? onArrivedToPickupPoint,
    TResult Function(String orderId)? onStripStarted,
    TResult Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult Function(String orderId, double amount)? paidInCash,
    TResult Function(String orderId)? onSummaryConfirmed,
    TResult Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function()? onShowChat,
    TResult Function()? onHideChat,
    required TResult orElse(),
  }) {
    if (onShowChat != null) {
      return onShowChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
    required TResult Function(_OnOrderRequestPageChanged value)
        onOrderRequestPageChanged,
    required TResult Function(_OnLocationUpdated value) onLocationUpdated,
    required TResult Function(_OnAcceptOrder value) onAcceptOrder,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnArrivedToPickupPoint value)
        onArrivedToPickupPoint,
    required TResult Function(_OnTripStarted value) onStripStarted,
    required TResult Function(_OnArrivedToDestination value)
        onArrivedToDestination,
    required TResult Function(_PaidInCash value) paidInCash,
    required TResult Function(_OnSummaryConfirmed value) onSummaryConfirmed,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_OnShowChat value) onShowChat,
    required TResult Function(_OnHideChat value) onHideChat,
  }) {
    return onShowChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
    TResult? Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult? Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult? Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult? Function(_OnCancelOrder value)? onCancelOrder,
    TResult? Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult? Function(_OnTripStarted value)? onStripStarted,
    TResult? Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult? Function(_PaidInCash value)? paidInCash,
    TResult? Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_OnShowChat value)? onShowChat,
    TResult? Function(_OnHideChat value)? onHideChat,
  }) {
    return onShowChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    TResult Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult Function(_OnTripStarted value)? onStripStarted,
    TResult Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult Function(_PaidInCash value)? paidInCash,
    TResult Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_OnShowChat value)? onShowChat,
    TResult Function(_OnHideChat value)? onHideChat,
    required TResult orElse(),
  }) {
    if (onShowChat != null) {
      return onShowChat(this);
    }
    return orElse();
  }
}

abstract class _OnShowChat implements HomeEvent {
  const factory _OnShowChat() = _$OnShowChatImpl;
}

/// @nodoc
abstract class _$$OnHideChatImplCopyWith<$Res> {
  factory _$$OnHideChatImplCopyWith(
          _$OnHideChatImpl value, $Res Function(_$OnHideChatImpl) then) =
      __$$OnHideChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnHideChatImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnHideChatImpl>
    implements _$$OnHideChatImplCopyWith<$Res> {
  __$$OnHideChatImplCopyWithImpl(
      _$OnHideChatImpl _value, $Res Function(_$OnHideChatImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnHideChatImpl implements _OnHideChat {
  const _$OnHideChatImpl();

  @override
  String toString() {
    return 'HomeEvent.onHideChat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnHideChatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DriverLocation? location) onStarted,
    required TResult Function(DriverStatus status) onStatusChanged,
    required TResult Function(OrderRequestEntity request)
        onOrderRequestPageChanged,
    required TResult Function(
            DriverLocation location, DateTime? lastLocationUpdate)
        onLocationUpdated,
    required TResult Function(OrderRequestEntity request) onAcceptOrder,
    required TResult Function(
            String orderId, String? reasonId, String? reasonNote)
        onCancelOrder,
    required TResult Function(String orderId) onArrivedToPickupPoint,
    required TResult Function(String orderId) onStripStarted,
    required TResult Function(OrderEntity order, int destinationArrivedTo)
        onArrivedToDestination,
    required TResult Function(String orderId, double amount) paidInCash,
    required TResult Function(String orderId) onSummaryConfirmed,
    required TResult Function(String orderId, int? rating, String? review)
        reviewSubmitted,
    required TResult Function(ChatMessageEntity message) messageSent,
    required TResult Function() onShowChat,
    required TResult Function() onHideChat,
  }) {
    return onHideChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DriverLocation? location)? onStarted,
    TResult? Function(DriverStatus status)? onStatusChanged,
    TResult? Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult? Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult? Function(OrderRequestEntity request)? onAcceptOrder,
    TResult? Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult? Function(String orderId)? onArrivedToPickupPoint,
    TResult? Function(String orderId)? onStripStarted,
    TResult? Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult? Function(String orderId, double amount)? paidInCash,
    TResult? Function(String orderId)? onSummaryConfirmed,
    TResult? Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult? Function(ChatMessageEntity message)? messageSent,
    TResult? Function()? onShowChat,
    TResult? Function()? onHideChat,
  }) {
    return onHideChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DriverLocation? location)? onStarted,
    TResult Function(DriverStatus status)? onStatusChanged,
    TResult Function(OrderRequestEntity request)? onOrderRequestPageChanged,
    TResult Function(DriverLocation location, DateTime? lastLocationUpdate)?
        onLocationUpdated,
    TResult Function(OrderRequestEntity request)? onAcceptOrder,
    TResult Function(String orderId, String? reasonId, String? reasonNote)?
        onCancelOrder,
    TResult Function(String orderId)? onArrivedToPickupPoint,
    TResult Function(String orderId)? onStripStarted,
    TResult Function(OrderEntity order, int destinationArrivedTo)?
        onArrivedToDestination,
    TResult Function(String orderId, double amount)? paidInCash,
    TResult Function(String orderId)? onSummaryConfirmed,
    TResult Function(String orderId, int? rating, String? review)?
        reviewSubmitted,
    TResult Function(ChatMessageEntity message)? messageSent,
    TResult Function()? onShowChat,
    TResult Function()? onHideChat,
    required TResult orElse(),
  }) {
    if (onHideChat != null) {
      return onHideChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnStarted value) onStarted,
    required TResult Function(_OnStatusChanged value) onStatusChanged,
    required TResult Function(_OnOrderRequestPageChanged value)
        onOrderRequestPageChanged,
    required TResult Function(_OnLocationUpdated value) onLocationUpdated,
    required TResult Function(_OnAcceptOrder value) onAcceptOrder,
    required TResult Function(_OnCancelOrder value) onCancelOrder,
    required TResult Function(_OnArrivedToPickupPoint value)
        onArrivedToPickupPoint,
    required TResult Function(_OnTripStarted value) onStripStarted,
    required TResult Function(_OnArrivedToDestination value)
        onArrivedToDestination,
    required TResult Function(_PaidInCash value) paidInCash,
    required TResult Function(_OnSummaryConfirmed value) onSummaryConfirmed,
    required TResult Function(_ReviewSubmitted value) reviewSubmitted,
    required TResult Function(_MessageSent value) messageSent,
    required TResult Function(_OnShowChat value) onShowChat,
    required TResult Function(_OnHideChat value) onHideChat,
  }) {
    return onHideChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnStarted value)? onStarted,
    TResult? Function(_OnStatusChanged value)? onStatusChanged,
    TResult? Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult? Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult? Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult? Function(_OnCancelOrder value)? onCancelOrder,
    TResult? Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult? Function(_OnTripStarted value)? onStripStarted,
    TResult? Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult? Function(_PaidInCash value)? paidInCash,
    TResult? Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult? Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult? Function(_MessageSent value)? messageSent,
    TResult? Function(_OnShowChat value)? onShowChat,
    TResult? Function(_OnHideChat value)? onHideChat,
  }) {
    return onHideChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnStarted value)? onStarted,
    TResult Function(_OnStatusChanged value)? onStatusChanged,
    TResult Function(_OnOrderRequestPageChanged value)?
        onOrderRequestPageChanged,
    TResult Function(_OnLocationUpdated value)? onLocationUpdated,
    TResult Function(_OnAcceptOrder value)? onAcceptOrder,
    TResult Function(_OnCancelOrder value)? onCancelOrder,
    TResult Function(_OnArrivedToPickupPoint value)? onArrivedToPickupPoint,
    TResult Function(_OnTripStarted value)? onStripStarted,
    TResult Function(_OnArrivedToDestination value)? onArrivedToDestination,
    TResult Function(_PaidInCash value)? paidInCash,
    TResult Function(_OnSummaryConfirmed value)? onSummaryConfirmed,
    TResult Function(_ReviewSubmitted value)? reviewSubmitted,
    TResult Function(_MessageSent value)? messageSent,
    TResult Function(_OnShowChat value)? onShowChat,
    TResult Function(_OnHideChat value)? onHideChat,
    required TResult orElse(),
  }) {
    if (onHideChat != null) {
      return onHideChat(this);
    }
    return orElse();
  }
}

abstract class _OnHideChat implements HomeEvent {
  const factory _OnHideChat() = _$OnHideChatImpl;
}

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  return _HomeState.fromJson(json);
}

/// @nodoc
mixin _$HomeState {
  DriverLocation? get driverLocation => throw _privateConstructorUsedError;
  DateTime? get lastLocationUpdate => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;
  HomeStateDriverStatus get driverStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {DriverLocation? driverLocation,
      DateTime? lastLocationUpdate,
      Failure? error,
      HomeStateDriverStatus driverStatus});

  $DriverLocationCopyWith<$Res>? get driverLocation;
  $FailureCopyWith<$Res>? get error;
  $HomeStateDriverStatusCopyWith<$Res> get driverStatus;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverLocation = freezed,
    Object? lastLocationUpdate = freezed,
    Object? error = freezed,
    Object? driverStatus = null,
  }) {
    return _then(_value.copyWith(
      driverLocation: freezed == driverLocation
          ? _value.driverLocation
          : driverLocation // ignore: cast_nullable_to_non_nullable
              as DriverLocation?,
      lastLocationUpdate: freezed == lastLocationUpdate
          ? _value.lastLocationUpdate
          : lastLocationUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      driverStatus: null == driverStatus
          ? _value.driverStatus
          : driverStatus // ignore: cast_nullable_to_non_nullable
              as HomeStateDriverStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverLocationCopyWith<$Res>? get driverLocation {
    if (_value.driverLocation == null) {
      return null;
    }

    return $DriverLocationCopyWith<$Res>(_value.driverLocation!, (value) {
      return _then(_value.copyWith(driverLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeStateDriverStatusCopyWith<$Res> get driverStatus {
    return $HomeStateDriverStatusCopyWith<$Res>(_value.driverStatus, (value) {
      return _then(_value.copyWith(driverStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DriverLocation? driverLocation,
      DateTime? lastLocationUpdate,
      Failure? error,
      HomeStateDriverStatus driverStatus});

  @override
  $DriverLocationCopyWith<$Res>? get driverLocation;
  @override
  $FailureCopyWith<$Res>? get error;
  @override
  $HomeStateDriverStatusCopyWith<$Res> get driverStatus;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverLocation = freezed,
    Object? lastLocationUpdate = freezed,
    Object? error = freezed,
    Object? driverStatus = null,
  }) {
    return _then(_$HomeStateImpl(
      driverLocation: freezed == driverLocation
          ? _value.driverLocation
          : driverLocation // ignore: cast_nullable_to_non_nullable
              as DriverLocation?,
      lastLocationUpdate: freezed == lastLocationUpdate
          ? _value.lastLocationUpdate
          : lastLocationUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
      driverStatus: null == driverStatus
          ? _value.driverStatus
          : driverStatus // ignore: cast_nullable_to_non_nullable
              as HomeStateDriverStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {this.driverLocation,
      this.lastLocationUpdate,
      this.error,
      this.driverStatus = const HomeStateDriverStatus.initial()})
      : super._();

  factory _$HomeStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStateImplFromJson(json);

  @override
  final DriverLocation? driverLocation;
  @override
  final DateTime? lastLocationUpdate;
  @override
  final Failure? error;
  @override
  @JsonKey()
  final HomeStateDriverStatus driverStatus;

  @override
  String toString() {
    return 'HomeState(driverLocation: $driverLocation, lastLocationUpdate: $lastLocationUpdate, error: $error, driverStatus: $driverStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.driverLocation, driverLocation) ||
                other.driverLocation == driverLocation) &&
            (identical(other.lastLocationUpdate, lastLocationUpdate) ||
                other.lastLocationUpdate == lastLocationUpdate) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.driverStatus, driverStatus) ||
                other.driverStatus == driverStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, driverLocation, lastLocationUpdate, error, driverStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeStateImplToJson(
      this,
    );
  }
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final DriverLocation? driverLocation,
      final DateTime? lastLocationUpdate,
      final Failure? error,
      final HomeStateDriverStatus driverStatus}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  factory _HomeState.fromJson(Map<String, dynamic> json) =
      _$HomeStateImpl.fromJson;

  @override
  DriverLocation? get driverLocation;
  @override
  DateTime? get lastLocationUpdate;
  @override
  Failure? get error;
  @override
  HomeStateDriverStatus get driverStatus;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OnTripPage _$OnTripPageFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'overview':
      return _Overview.fromJson(json);
    case 'chat':
      return _Chat.fromJson(json);
    case 'payment':
      return _Payment.fromJson(json);
    case 'rate':
      return _Rate.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'OnTripPage',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$OnTripPage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() overview,
    required TResult Function() chat,
    required TResult Function() payment,
    required TResult Function() rate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? overview,
    TResult? Function()? chat,
    TResult? Function()? payment,
    TResult? Function()? rate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? overview,
    TResult Function()? chat,
    TResult Function()? payment,
    TResult Function()? rate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Overview value) overview,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Payment value) payment,
    required TResult Function(_Rate value) rate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Overview value)? overview,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Payment value)? payment,
    TResult? Function(_Rate value)? rate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Overview value)? overview,
    TResult Function(_Chat value)? chat,
    TResult Function(_Payment value)? payment,
    TResult Function(_Rate value)? rate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnTripPageCopyWith<$Res> {
  factory $OnTripPageCopyWith(
          OnTripPage value, $Res Function(OnTripPage) then) =
      _$OnTripPageCopyWithImpl<$Res, OnTripPage>;
}

/// @nodoc
class _$OnTripPageCopyWithImpl<$Res, $Val extends OnTripPage>
    implements $OnTripPageCopyWith<$Res> {
  _$OnTripPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OverviewImplCopyWith<$Res> {
  factory _$$OverviewImplCopyWith(
          _$OverviewImpl value, $Res Function(_$OverviewImpl) then) =
      __$$OverviewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OverviewImplCopyWithImpl<$Res>
    extends _$OnTripPageCopyWithImpl<$Res, _$OverviewImpl>
    implements _$$OverviewImplCopyWith<$Res> {
  __$$OverviewImplCopyWithImpl(
      _$OverviewImpl _value, $Res Function(_$OverviewImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OverviewImpl implements _Overview {
  const _$OverviewImpl({final String? $type}) : $type = $type ?? 'overview';

  factory _$OverviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$OverviewImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnTripPage.overview()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OverviewImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() overview,
    required TResult Function() chat,
    required TResult Function() payment,
    required TResult Function() rate,
  }) {
    return overview();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? overview,
    TResult? Function()? chat,
    TResult? Function()? payment,
    TResult? Function()? rate,
  }) {
    return overview?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? overview,
    TResult Function()? chat,
    TResult Function()? payment,
    TResult Function()? rate,
    required TResult orElse(),
  }) {
    if (overview != null) {
      return overview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Overview value) overview,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Payment value) payment,
    required TResult Function(_Rate value) rate,
  }) {
    return overview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Overview value)? overview,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Payment value)? payment,
    TResult? Function(_Rate value)? rate,
  }) {
    return overview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Overview value)? overview,
    TResult Function(_Chat value)? chat,
    TResult Function(_Payment value)? payment,
    TResult Function(_Rate value)? rate,
    required TResult orElse(),
  }) {
    if (overview != null) {
      return overview(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OverviewImplToJson(
      this,
    );
  }
}

abstract class _Overview implements OnTripPage {
  const factory _Overview() = _$OverviewImpl;

  factory _Overview.fromJson(Map<String, dynamic> json) =
      _$OverviewImpl.fromJson;
}

/// @nodoc
abstract class _$$ChatImplCopyWith<$Res> {
  factory _$$ChatImplCopyWith(
          _$ChatImpl value, $Res Function(_$ChatImpl) then) =
      __$$ChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatImplCopyWithImpl<$Res>
    extends _$OnTripPageCopyWithImpl<$Res, _$ChatImpl>
    implements _$$ChatImplCopyWith<$Res> {
  __$$ChatImplCopyWithImpl(_$ChatImpl _value, $Res Function(_$ChatImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ChatImpl implements _Chat {
  const _$ChatImpl({final String? $type}) : $type = $type ?? 'chat';

  factory _$ChatImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnTripPage.chat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() overview,
    required TResult Function() chat,
    required TResult Function() payment,
    required TResult Function() rate,
  }) {
    return chat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? overview,
    TResult? Function()? chat,
    TResult? Function()? payment,
    TResult? Function()? rate,
  }) {
    return chat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? overview,
    TResult Function()? chat,
    TResult Function()? payment,
    TResult Function()? rate,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Overview value) overview,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Payment value) payment,
    required TResult Function(_Rate value) rate,
  }) {
    return chat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Overview value)? overview,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Payment value)? payment,
    TResult? Function(_Rate value)? rate,
  }) {
    return chat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Overview value)? overview,
    TResult Function(_Chat value)? chat,
    TResult Function(_Payment value)? payment,
    TResult Function(_Rate value)? rate,
    required TResult orElse(),
  }) {
    if (chat != null) {
      return chat(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatImplToJson(
      this,
    );
  }
}

abstract class _Chat implements OnTripPage {
  const factory _Chat() = _$ChatImpl;

  factory _Chat.fromJson(Map<String, dynamic> json) = _$ChatImpl.fromJson;
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
          _$PaymentImpl value, $Res Function(_$PaymentImpl) then) =
      __$$PaymentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$OnTripPageCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
      _$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PaymentImpl implements _Payment {
  const _$PaymentImpl({final String? $type}) : $type = $type ?? 'payment';

  factory _$PaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnTripPage.payment()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() overview,
    required TResult Function() chat,
    required TResult Function() payment,
    required TResult Function() rate,
  }) {
    return payment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? overview,
    TResult? Function()? chat,
    TResult? Function()? payment,
    TResult? Function()? rate,
  }) {
    return payment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? overview,
    TResult Function()? chat,
    TResult Function()? payment,
    TResult Function()? rate,
    required TResult orElse(),
  }) {
    if (payment != null) {
      return payment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Overview value) overview,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Payment value) payment,
    required TResult Function(_Rate value) rate,
  }) {
    return payment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Overview value)? overview,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Payment value)? payment,
    TResult? Function(_Rate value)? rate,
  }) {
    return payment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Overview value)? overview,
    TResult Function(_Chat value)? chat,
    TResult Function(_Payment value)? payment,
    TResult Function(_Rate value)? rate,
    required TResult orElse(),
  }) {
    if (payment != null) {
      return payment(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentImplToJson(
      this,
    );
  }
}

abstract class _Payment implements OnTripPage {
  const factory _Payment() = _$PaymentImpl;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$PaymentImpl.fromJson;
}

/// @nodoc
abstract class _$$RateImplCopyWith<$Res> {
  factory _$$RateImplCopyWith(
          _$RateImpl value, $Res Function(_$RateImpl) then) =
      __$$RateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RateImplCopyWithImpl<$Res>
    extends _$OnTripPageCopyWithImpl<$Res, _$RateImpl>
    implements _$$RateImplCopyWith<$Res> {
  __$$RateImplCopyWithImpl(_$RateImpl _value, $Res Function(_$RateImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$RateImpl implements _Rate {
  const _$RateImpl({final String? $type}) : $type = $type ?? 'rate';

  factory _$RateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnTripPage.rate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RateImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() overview,
    required TResult Function() chat,
    required TResult Function() payment,
    required TResult Function() rate,
  }) {
    return rate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? overview,
    TResult? Function()? chat,
    TResult? Function()? payment,
    TResult? Function()? rate,
  }) {
    return rate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? overview,
    TResult Function()? chat,
    TResult Function()? payment,
    TResult Function()? rate,
    required TResult orElse(),
  }) {
    if (rate != null) {
      return rate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Overview value) overview,
    required TResult Function(_Chat value) chat,
    required TResult Function(_Payment value) payment,
    required TResult Function(_Rate value) rate,
  }) {
    return rate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Overview value)? overview,
    TResult? Function(_Chat value)? chat,
    TResult? Function(_Payment value)? payment,
    TResult? Function(_Rate value)? rate,
  }) {
    return rate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Overview value)? overview,
    TResult Function(_Chat value)? chat,
    TResult Function(_Payment value)? payment,
    TResult Function(_Rate value)? rate,
    required TResult orElse(),
  }) {
    if (rate != null) {
      return rate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RateImplToJson(
      this,
    );
  }
}

abstract class _Rate implements OnTripPage {
  const factory _Rate() = _$RateImpl;

  factory _Rate.fromJson(Map<String, dynamic> json) = _$RateImpl.fromJson;
}

HomeStateDriverStatus _$HomeStateDriverStatusFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return InitialDriverStatus.fromJson(json);
    case 'loading':
      return LoadingDriverStatus.fromJson(json);
    case 'online':
      return OnlineDriverStatus.fromJson(json);
    case 'offline':
      return OfflineDriverStatus.fromJson(json);
    case 'onTrip':
      return OnTripDriverStatus.fromJson(json);
    case 'accessDenied':
      return AccessDeniedDriverStatus.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'HomeStateDriverStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$HomeStateDriverStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)
        online,
    required TResult Function() offline,
    required TResult Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)
        onTrip,
    required TResult Function() accessDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)?
        online,
    TResult? Function()? offline,
    TResult? Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)?
        onTrip,
    TResult? Function()? accessDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)?
        online,
    TResult Function()? offline,
    TResult Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)?
        onTrip,
    TResult Function()? accessDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDriverStatus value) initial,
    required TResult Function(LoadingDriverStatus value) loading,
    required TResult Function(OnlineDriverStatus value) online,
    required TResult Function(OfflineDriverStatus value) offline,
    required TResult Function(OnTripDriverStatus value) onTrip,
    required TResult Function(AccessDeniedDriverStatus value) accessDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDriverStatus value)? initial,
    TResult? Function(LoadingDriverStatus value)? loading,
    TResult? Function(OnlineDriverStatus value)? online,
    TResult? Function(OfflineDriverStatus value)? offline,
    TResult? Function(OnTripDriverStatus value)? onTrip,
    TResult? Function(AccessDeniedDriverStatus value)? accessDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDriverStatus value)? initial,
    TResult Function(LoadingDriverStatus value)? loading,
    TResult Function(OnlineDriverStatus value)? online,
    TResult Function(OfflineDriverStatus value)? offline,
    TResult Function(OnTripDriverStatus value)? onTrip,
    TResult Function(AccessDeniedDriverStatus value)? accessDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateDriverStatusCopyWith<$Res> {
  factory $HomeStateDriverStatusCopyWith(HomeStateDriverStatus value,
          $Res Function(HomeStateDriverStatus) then) =
      _$HomeStateDriverStatusCopyWithImpl<$Res, HomeStateDriverStatus>;
}

/// @nodoc
class _$HomeStateDriverStatusCopyWithImpl<$Res,
        $Val extends HomeStateDriverStatus>
    implements $HomeStateDriverStatusCopyWith<$Res> {
  _$HomeStateDriverStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialDriverStatusImplCopyWith<$Res> {
  factory _$$InitialDriverStatusImplCopyWith(_$InitialDriverStatusImpl value,
          $Res Function(_$InitialDriverStatusImpl) then) =
      __$$InitialDriverStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialDriverStatusImplCopyWithImpl<$Res>
    extends _$HomeStateDriverStatusCopyWithImpl<$Res, _$InitialDriverStatusImpl>
    implements _$$InitialDriverStatusImplCopyWith<$Res> {
  __$$InitialDriverStatusImplCopyWithImpl(_$InitialDriverStatusImpl _value,
      $Res Function(_$InitialDriverStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$InitialDriverStatusImpl implements InitialDriverStatus {
  const _$InitialDriverStatusImpl({final String? $type})
      : $type = $type ?? 'initial';

  factory _$InitialDriverStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialDriverStatusImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeStateDriverStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialDriverStatusImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)
        online,
    required TResult Function() offline,
    required TResult Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)
        onTrip,
    required TResult Function() accessDenied,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)?
        online,
    TResult? Function()? offline,
    TResult? Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)?
        onTrip,
    TResult? Function()? accessDenied,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)?
        online,
    TResult Function()? offline,
    TResult Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)?
        onTrip,
    TResult Function()? accessDenied,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDriverStatus value) initial,
    required TResult Function(LoadingDriverStatus value) loading,
    required TResult Function(OnlineDriverStatus value) online,
    required TResult Function(OfflineDriverStatus value) offline,
    required TResult Function(OnTripDriverStatus value) onTrip,
    required TResult Function(AccessDeniedDriverStatus value) accessDenied,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDriverStatus value)? initial,
    TResult? Function(LoadingDriverStatus value)? loading,
    TResult? Function(OnlineDriverStatus value)? online,
    TResult? Function(OfflineDriverStatus value)? offline,
    TResult? Function(OnTripDriverStatus value)? onTrip,
    TResult? Function(AccessDeniedDriverStatus value)? accessDenied,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDriverStatus value)? initial,
    TResult Function(LoadingDriverStatus value)? loading,
    TResult Function(OnlineDriverStatus value)? online,
    TResult Function(OfflineDriverStatus value)? offline,
    TResult Function(OnTripDriverStatus value)? onTrip,
    TResult Function(AccessDeniedDriverStatus value)? accessDenied,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialDriverStatusImplToJson(
      this,
    );
  }
}

abstract class InitialDriverStatus implements HomeStateDriverStatus {
  const factory InitialDriverStatus() = _$InitialDriverStatusImpl;

  factory InitialDriverStatus.fromJson(Map<String, dynamic> json) =
      _$InitialDriverStatusImpl.fromJson;
}

/// @nodoc
abstract class _$$LoadingDriverStatusImplCopyWith<$Res> {
  factory _$$LoadingDriverStatusImplCopyWith(_$LoadingDriverStatusImpl value,
          $Res Function(_$LoadingDriverStatusImpl) then) =
      __$$LoadingDriverStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingDriverStatusImplCopyWithImpl<$Res>
    extends _$HomeStateDriverStatusCopyWithImpl<$Res, _$LoadingDriverStatusImpl>
    implements _$$LoadingDriverStatusImplCopyWith<$Res> {
  __$$LoadingDriverStatusImplCopyWithImpl(_$LoadingDriverStatusImpl _value,
      $Res Function(_$LoadingDriverStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LoadingDriverStatusImpl implements LoadingDriverStatus {
  const _$LoadingDriverStatusImpl({final String? $type})
      : $type = $type ?? 'loading';

  factory _$LoadingDriverStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoadingDriverStatusImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeStateDriverStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingDriverStatusImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)
        online,
    required TResult Function() offline,
    required TResult Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)
        onTrip,
    required TResult Function() accessDenied,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)?
        online,
    TResult? Function()? offline,
    TResult? Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)?
        onTrip,
    TResult? Function()? accessDenied,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)?
        online,
    TResult Function()? offline,
    TResult Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)?
        onTrip,
    TResult Function()? accessDenied,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDriverStatus value) initial,
    required TResult Function(LoadingDriverStatus value) loading,
    required TResult Function(OnlineDriverStatus value) online,
    required TResult Function(OfflineDriverStatus value) offline,
    required TResult Function(OnTripDriverStatus value) onTrip,
    required TResult Function(AccessDeniedDriverStatus value) accessDenied,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDriverStatus value)? initial,
    TResult? Function(LoadingDriverStatus value)? loading,
    TResult? Function(OnlineDriverStatus value)? online,
    TResult? Function(OfflineDriverStatus value)? offline,
    TResult? Function(OnTripDriverStatus value)? onTrip,
    TResult? Function(AccessDeniedDriverStatus value)? accessDenied,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDriverStatus value)? initial,
    TResult Function(LoadingDriverStatus value)? loading,
    TResult Function(OnlineDriverStatus value)? online,
    TResult Function(OfflineDriverStatus value)? offline,
    TResult Function(OnTripDriverStatus value)? onTrip,
    TResult Function(AccessDeniedDriverStatus value)? accessDenied,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingDriverStatusImplToJson(
      this,
    );
  }
}

abstract class LoadingDriverStatus implements HomeStateDriverStatus {
  const factory LoadingDriverStatus() = _$LoadingDriverStatusImpl;

  factory LoadingDriverStatus.fromJson(Map<String, dynamic> json) =
      _$LoadingDriverStatusImpl.fromJson;
}

/// @nodoc
abstract class _$$OnlineDriverStatusImplCopyWith<$Res> {
  factory _$$OnlineDriverStatusImplCopyWith(_$OnlineDriverStatusImpl value,
          $Res Function(_$OnlineDriverStatusImpl) then) =
      __$$OnlineDriverStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<OrderRequestEntity> orderRequests,
      OrderRequestEntity? currentOrderRequest});

  $OrderRequestEntityCopyWith<$Res>? get currentOrderRequest;
}

/// @nodoc
class __$$OnlineDriverStatusImplCopyWithImpl<$Res>
    extends _$HomeStateDriverStatusCopyWithImpl<$Res, _$OnlineDriverStatusImpl>
    implements _$$OnlineDriverStatusImplCopyWith<$Res> {
  __$$OnlineDriverStatusImplCopyWithImpl(_$OnlineDriverStatusImpl _value,
      $Res Function(_$OnlineDriverStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderRequests = null,
    Object? currentOrderRequest = freezed,
  }) {
    return _then(_$OnlineDriverStatusImpl(
      orderRequests: null == orderRequests
          ? _value._orderRequests
          : orderRequests // ignore: cast_nullable_to_non_nullable
              as List<OrderRequestEntity>,
      currentOrderRequest: freezed == currentOrderRequest
          ? _value.currentOrderRequest
          : currentOrderRequest // ignore: cast_nullable_to_non_nullable
              as OrderRequestEntity?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderRequestEntityCopyWith<$Res>? get currentOrderRequest {
    if (_value.currentOrderRequest == null) {
      return null;
    }

    return $OrderRequestEntityCopyWith<$Res>(_value.currentOrderRequest!,
        (value) {
      return _then(_value.copyWith(currentOrderRequest: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$OnlineDriverStatusImpl implements OnlineDriverStatus {
  const _$OnlineDriverStatusImpl(
      {required final List<OrderRequestEntity> orderRequests,
      this.currentOrderRequest,
      final String? $type})
      : _orderRequests = orderRequests,
        $type = $type ?? 'online';

  factory _$OnlineDriverStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnlineDriverStatusImplFromJson(json);

  final List<OrderRequestEntity> _orderRequests;
  @override
  List<OrderRequestEntity> get orderRequests {
    if (_orderRequests is EqualUnmodifiableListView) return _orderRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderRequests);
  }

  @override
  final OrderRequestEntity? currentOrderRequest;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeStateDriverStatus.online(orderRequests: $orderRequests, currentOrderRequest: $currentOrderRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineDriverStatusImpl &&
            const DeepCollectionEquality()
                .equals(other._orderRequests, _orderRequests) &&
            (identical(other.currentOrderRequest, currentOrderRequest) ||
                other.currentOrderRequest == currentOrderRequest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_orderRequests), currentOrderRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineDriverStatusImplCopyWith<_$OnlineDriverStatusImpl> get copyWith =>
      __$$OnlineDriverStatusImplCopyWithImpl<_$OnlineDriverStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)
        online,
    required TResult Function() offline,
    required TResult Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)
        onTrip,
    required TResult Function() accessDenied,
  }) {
    return online(orderRequests, currentOrderRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)?
        online,
    TResult? Function()? offline,
    TResult? Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)?
        onTrip,
    TResult? Function()? accessDenied,
  }) {
    return online?.call(orderRequests, currentOrderRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)?
        online,
    TResult Function()? offline,
    TResult Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)?
        onTrip,
    TResult Function()? accessDenied,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online(orderRequests, currentOrderRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDriverStatus value) initial,
    required TResult Function(LoadingDriverStatus value) loading,
    required TResult Function(OnlineDriverStatus value) online,
    required TResult Function(OfflineDriverStatus value) offline,
    required TResult Function(OnTripDriverStatus value) onTrip,
    required TResult Function(AccessDeniedDriverStatus value) accessDenied,
  }) {
    return online(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDriverStatus value)? initial,
    TResult? Function(LoadingDriverStatus value)? loading,
    TResult? Function(OnlineDriverStatus value)? online,
    TResult? Function(OfflineDriverStatus value)? offline,
    TResult? Function(OnTripDriverStatus value)? onTrip,
    TResult? Function(AccessDeniedDriverStatus value)? accessDenied,
  }) {
    return online?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDriverStatus value)? initial,
    TResult Function(LoadingDriverStatus value)? loading,
    TResult Function(OnlineDriverStatus value)? online,
    TResult Function(OfflineDriverStatus value)? offline,
    TResult Function(OnTripDriverStatus value)? onTrip,
    TResult Function(AccessDeniedDriverStatus value)? accessDenied,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnlineDriverStatusImplToJson(
      this,
    );
  }
}

abstract class OnlineDriverStatus implements HomeStateDriverStatus {
  const factory OnlineDriverStatus(
          {required final List<OrderRequestEntity> orderRequests,
          final OrderRequestEntity? currentOrderRequest}) =
      _$OnlineDriverStatusImpl;

  factory OnlineDriverStatus.fromJson(Map<String, dynamic> json) =
      _$OnlineDriverStatusImpl.fromJson;

  List<OrderRequestEntity> get orderRequests;
  OrderRequestEntity? get currentOrderRequest;
  @JsonKey(ignore: true)
  _$$OnlineDriverStatusImplCopyWith<_$OnlineDriverStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfflineDriverStatusImplCopyWith<$Res> {
  factory _$$OfflineDriverStatusImplCopyWith(_$OfflineDriverStatusImpl value,
          $Res Function(_$OfflineDriverStatusImpl) then) =
      __$$OfflineDriverStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OfflineDriverStatusImplCopyWithImpl<$Res>
    extends _$HomeStateDriverStatusCopyWithImpl<$Res, _$OfflineDriverStatusImpl>
    implements _$$OfflineDriverStatusImplCopyWith<$Res> {
  __$$OfflineDriverStatusImplCopyWithImpl(_$OfflineDriverStatusImpl _value,
      $Res Function(_$OfflineDriverStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OfflineDriverStatusImpl implements OfflineDriverStatus {
  const _$OfflineDriverStatusImpl({final String? $type})
      : $type = $type ?? 'offline';

  factory _$OfflineDriverStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfflineDriverStatusImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeStateDriverStatus.offline()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineDriverStatusImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)
        online,
    required TResult Function() offline,
    required TResult Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)
        onTrip,
    required TResult Function() accessDenied,
  }) {
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)?
        online,
    TResult? Function()? offline,
    TResult? Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)?
        onTrip,
    TResult? Function()? accessDenied,
  }) {
    return offline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)?
        online,
    TResult Function()? offline,
    TResult Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)?
        onTrip,
    TResult Function()? accessDenied,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDriverStatus value) initial,
    required TResult Function(LoadingDriverStatus value) loading,
    required TResult Function(OnlineDriverStatus value) online,
    required TResult Function(OfflineDriverStatus value) offline,
    required TResult Function(OnTripDriverStatus value) onTrip,
    required TResult Function(AccessDeniedDriverStatus value) accessDenied,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDriverStatus value)? initial,
    TResult? Function(LoadingDriverStatus value)? loading,
    TResult? Function(OnlineDriverStatus value)? online,
    TResult? Function(OfflineDriverStatus value)? offline,
    TResult? Function(OnTripDriverStatus value)? onTrip,
    TResult? Function(AccessDeniedDriverStatus value)? accessDenied,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDriverStatus value)? initial,
    TResult Function(LoadingDriverStatus value)? loading,
    TResult Function(OnlineDriverStatus value)? online,
    TResult Function(OfflineDriverStatus value)? offline,
    TResult Function(OnTripDriverStatus value)? onTrip,
    TResult Function(AccessDeniedDriverStatus value)? accessDenied,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OfflineDriverStatusImplToJson(
      this,
    );
  }
}

abstract class OfflineDriverStatus implements HomeStateDriverStatus {
  const factory OfflineDriverStatus() = _$OfflineDriverStatusImpl;

  factory OfflineDriverStatus.fromJson(Map<String, dynamic> json) =
      _$OfflineDriverStatusImpl.fromJson;
}

/// @nodoc
abstract class _$$OnTripDriverStatusImplCopyWith<$Res> {
  factory _$$OnTripDriverStatusImplCopyWith(_$OnTripDriverStatusImpl value,
          $Res Function(_$OnTripDriverStatusImpl) then) =
      __$$OnTripDriverStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {OrderEntity order,
      OnTripPage page,
      DriverLocation? driverLocation,
      Failure? error});

  $OrderEntityCopyWith<$Res> get order;
  $OnTripPageCopyWith<$Res> get page;
  $DriverLocationCopyWith<$Res>? get driverLocation;
  $FailureCopyWith<$Res>? get error;
}

/// @nodoc
class __$$OnTripDriverStatusImplCopyWithImpl<$Res>
    extends _$HomeStateDriverStatusCopyWithImpl<$Res, _$OnTripDriverStatusImpl>
    implements _$$OnTripDriverStatusImplCopyWith<$Res> {
  __$$OnTripDriverStatusImplCopyWithImpl(_$OnTripDriverStatusImpl _value,
      $Res Function(_$OnTripDriverStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? page = null,
    Object? driverLocation = freezed,
    Object? error = freezed,
  }) {
    return _then(_$OnTripDriverStatusImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderEntity,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as OnTripPage,
      driverLocation: freezed == driverLocation
          ? _value.driverLocation
          : driverLocation // ignore: cast_nullable_to_non_nullable
              as DriverLocation?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderEntityCopyWith<$Res> get order {
    return $OrderEntityCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OnTripPageCopyWith<$Res> get page {
    return $OnTripPageCopyWith<$Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverLocationCopyWith<$Res>? get driverLocation {
    if (_value.driverLocation == null) {
      return null;
    }

    return $DriverLocationCopyWith<$Res>(_value.driverLocation!, (value) {
      return _then(_value.copyWith(driverLocation: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$OnTripDriverStatusImpl implements OnTripDriverStatus {
  const _$OnTripDriverStatusImpl(
      {required this.order,
      this.page = const OnTripPage.overview(),
      this.driverLocation,
      this.error,
      final String? $type})
      : $type = $type ?? 'onTrip';

  factory _$OnTripDriverStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnTripDriverStatusImplFromJson(json);

  @override
  final OrderEntity order;
  @override
  @JsonKey()
  final OnTripPage page;
  @override
  final DriverLocation? driverLocation;
  @override
  final Failure? error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeStateDriverStatus.onTrip(order: $order, page: $page, driverLocation: $driverLocation, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnTripDriverStatusImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.driverLocation, driverLocation) ||
                other.driverLocation == driverLocation) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, order, page, driverLocation, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnTripDriverStatusImplCopyWith<_$OnTripDriverStatusImpl> get copyWith =>
      __$$OnTripDriverStatusImplCopyWithImpl<_$OnTripDriverStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)
        online,
    required TResult Function() offline,
    required TResult Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)
        onTrip,
    required TResult Function() accessDenied,
  }) {
    return onTrip(order, page, driverLocation, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)?
        online,
    TResult? Function()? offline,
    TResult? Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)?
        onTrip,
    TResult? Function()? accessDenied,
  }) {
    return onTrip?.call(order, page, driverLocation, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)?
        online,
    TResult Function()? offline,
    TResult Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)?
        onTrip,
    TResult Function()? accessDenied,
    required TResult orElse(),
  }) {
    if (onTrip != null) {
      return onTrip(order, page, driverLocation, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDriverStatus value) initial,
    required TResult Function(LoadingDriverStatus value) loading,
    required TResult Function(OnlineDriverStatus value) online,
    required TResult Function(OfflineDriverStatus value) offline,
    required TResult Function(OnTripDriverStatus value) onTrip,
    required TResult Function(AccessDeniedDriverStatus value) accessDenied,
  }) {
    return onTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDriverStatus value)? initial,
    TResult? Function(LoadingDriverStatus value)? loading,
    TResult? Function(OnlineDriverStatus value)? online,
    TResult? Function(OfflineDriverStatus value)? offline,
    TResult? Function(OnTripDriverStatus value)? onTrip,
    TResult? Function(AccessDeniedDriverStatus value)? accessDenied,
  }) {
    return onTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDriverStatus value)? initial,
    TResult Function(LoadingDriverStatus value)? loading,
    TResult Function(OnlineDriverStatus value)? online,
    TResult Function(OfflineDriverStatus value)? offline,
    TResult Function(OnTripDriverStatus value)? onTrip,
    TResult Function(AccessDeniedDriverStatus value)? accessDenied,
    required TResult orElse(),
  }) {
    if (onTrip != null) {
      return onTrip(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnTripDriverStatusImplToJson(
      this,
    );
  }
}

abstract class OnTripDriverStatus implements HomeStateDriverStatus {
  const factory OnTripDriverStatus(
      {required final OrderEntity order,
      final OnTripPage page,
      final DriverLocation? driverLocation,
      final Failure? error}) = _$OnTripDriverStatusImpl;

  factory OnTripDriverStatus.fromJson(Map<String, dynamic> json) =
      _$OnTripDriverStatusImpl.fromJson;

  OrderEntity get order;
  OnTripPage get page;
  DriverLocation? get driverLocation;
  Failure? get error;
  @JsonKey(ignore: true)
  _$$OnTripDriverStatusImplCopyWith<_$OnTripDriverStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccessDeniedDriverStatusImplCopyWith<$Res> {
  factory _$$AccessDeniedDriverStatusImplCopyWith(
          _$AccessDeniedDriverStatusImpl value,
          $Res Function(_$AccessDeniedDriverStatusImpl) then) =
      __$$AccessDeniedDriverStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccessDeniedDriverStatusImplCopyWithImpl<$Res>
    extends _$HomeStateDriverStatusCopyWithImpl<$Res,
        _$AccessDeniedDriverStatusImpl>
    implements _$$AccessDeniedDriverStatusImplCopyWith<$Res> {
  __$$AccessDeniedDriverStatusImplCopyWithImpl(
      _$AccessDeniedDriverStatusImpl _value,
      $Res Function(_$AccessDeniedDriverStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$AccessDeniedDriverStatusImpl implements AccessDeniedDriverStatus {
  const _$AccessDeniedDriverStatusImpl({final String? $type})
      : $type = $type ?? 'accessDenied';

  factory _$AccessDeniedDriverStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccessDeniedDriverStatusImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeStateDriverStatus.accessDenied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessDeniedDriverStatusImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)
        online,
    required TResult Function() offline,
    required TResult Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)
        onTrip,
    required TResult Function() accessDenied,
  }) {
    return accessDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)?
        online,
    TResult? Function()? offline,
    TResult? Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)?
        onTrip,
    TResult? Function()? accessDenied,
  }) {
    return accessDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderRequestEntity> orderRequests,
            OrderRequestEntity? currentOrderRequest)?
        online,
    TResult Function()? offline,
    TResult Function(OrderEntity order, OnTripPage page,
            DriverLocation? driverLocation, Failure? error)?
        onTrip,
    TResult Function()? accessDenied,
    required TResult orElse(),
  }) {
    if (accessDenied != null) {
      return accessDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDriverStatus value) initial,
    required TResult Function(LoadingDriverStatus value) loading,
    required TResult Function(OnlineDriverStatus value) online,
    required TResult Function(OfflineDriverStatus value) offline,
    required TResult Function(OnTripDriverStatus value) onTrip,
    required TResult Function(AccessDeniedDriverStatus value) accessDenied,
  }) {
    return accessDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDriverStatus value)? initial,
    TResult? Function(LoadingDriverStatus value)? loading,
    TResult? Function(OnlineDriverStatus value)? online,
    TResult? Function(OfflineDriverStatus value)? offline,
    TResult? Function(OnTripDriverStatus value)? onTrip,
    TResult? Function(AccessDeniedDriverStatus value)? accessDenied,
  }) {
    return accessDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDriverStatus value)? initial,
    TResult Function(LoadingDriverStatus value)? loading,
    TResult Function(OnlineDriverStatus value)? online,
    TResult Function(OfflineDriverStatus value)? offline,
    TResult Function(OnTripDriverStatus value)? onTrip,
    TResult Function(AccessDeniedDriverStatus value)? accessDenied,
    required TResult orElse(),
  }) {
    if (accessDenied != null) {
      return accessDenied(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AccessDeniedDriverStatusImplToJson(
      this,
    );
  }
}

abstract class AccessDeniedDriverStatus implements HomeStateDriverStatus {
  const factory AccessDeniedDriverStatus() = _$AccessDeniedDriverStatusImpl;

  factory AccessDeniedDriverStatus.fromJson(Map<String, dynamic> json) =
      _$AccessDeniedDriverStatusImpl.fromJson;
}
