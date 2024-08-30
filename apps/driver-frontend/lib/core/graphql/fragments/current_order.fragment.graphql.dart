import '../schema.gql.dart';
import 'chat_message.fragment.graphql.dart';
import 'media.fragment.graphql.dart';
import 'package:flutter_common/core/graphql/scalars/timestamp.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'payment_gateway.fragment.graphql.dart';
import 'point.fragment.graphql.dart';
import 'ride_option.fragment.graphql.dart';
import 'saved_payment_method.fragment.graphql.dart';

class Fragment$CurrentOrder {
  Fragment$CurrentOrder({
    required this.id,
    required this.createdOn,
    required this.expectedTimestamp,
    this.startTimestamp,
    this.finishTimestamp,
    required this.distanceBest,
    required this.durationBest,
    required this.status,
    required this.destinationArrivedTo,
    this.etaPickup,
    required this.paidAmount,
    required this.costAfterCoupon,
    required this.providerShare,
    required this.costBest,
    required this.currency,
    required this.addresses,
    required this.waitMinutes,
    required this.waitCost,
    required this.rideOptionsCost,
    required this.serviceCost,
    required this.taxCost,
    this.paymentMode,
    required this.driverLastSeenMessagesAt,
    this.rider,
    this.paymentGateway,
    this.savedPaymentMethod,
    required this.points,
    this.directions,
    this.driverDirections,
    this.service,
    required this.options,
    required this.conversations,
    this.$__typename = 'Order',
  });

  factory Fragment$CurrentOrder.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$createdOn = json['createdOn'];
    final l$expectedTimestamp = json['expectedTimestamp'];
    final l$startTimestamp = json['startTimestamp'];
    final l$finishTimestamp = json['finishTimestamp'];
    final l$distanceBest = json['distanceBest'];
    final l$durationBest = json['durationBest'];
    final l$status = json['status'];
    final l$destinationArrivedTo = json['destinationArrivedTo'];
    final l$etaPickup = json['etaPickup'];
    final l$paidAmount = json['paidAmount'];
    final l$costAfterCoupon = json['costAfterCoupon'];
    final l$providerShare = json['providerShare'];
    final l$costBest = json['costBest'];
    final l$currency = json['currency'];
    final l$addresses = json['addresses'];
    final l$waitMinutes = json['waitMinutes'];
    final l$waitCost = json['waitCost'];
    final l$rideOptionsCost = json['rideOptionsCost'];
    final l$serviceCost = json['serviceCost'];
    final l$taxCost = json['taxCost'];
    final l$paymentMode = json['paymentMode'];
    final l$driverLastSeenMessagesAt = json['driverLastSeenMessagesAt'];
    final l$rider = json['rider'];
    final l$paymentGateway = json['paymentGateway'];
    final l$savedPaymentMethod = json['savedPaymentMethod'];
    final l$points = json['points'];
    final l$directions = json['directions'];
    final l$driverDirections = json['driverDirections'];
    final l$service = json['service'];
    final l$options = json['options'];
    final l$conversations = json['conversations'];
    final l$$__typename = json['__typename'];
    return Fragment$CurrentOrder(
      id: (l$id as String),
      createdOn: fromGraphQLTimestampToDartDateTime(l$createdOn),
      expectedTimestamp:
          fromGraphQLTimestampToDartDateTime(l$expectedTimestamp),
      startTimestamp: l$startTimestamp == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$startTimestamp),
      finishTimestamp: l$finishTimestamp == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$finishTimestamp),
      distanceBest: (l$distanceBest as int),
      durationBest: (l$durationBest as int),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      destinationArrivedTo: (l$destinationArrivedTo as int),
      etaPickup: l$etaPickup == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$etaPickup),
      paidAmount: (l$paidAmount as num).toDouble(),
      costAfterCoupon: (l$costAfterCoupon as num).toDouble(),
      providerShare: (l$providerShare as num).toDouble(),
      costBest: (l$costBest as num).toDouble(),
      currency: (l$currency as String),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      waitMinutes: (l$waitMinutes as num).toDouble(),
      waitCost: (l$waitCost as num).toDouble(),
      rideOptionsCost: (l$rideOptionsCost as num).toDouble(),
      serviceCost: (l$serviceCost as num).toDouble(),
      taxCost: (l$taxCost as num).toDouble(),
      paymentMode: l$paymentMode == null
          ? null
          : fromJson$Enum$PaymentMode((l$paymentMode as String)),
      driverLastSeenMessagesAt:
          fromGraphQLTimestampToDartDateTime(l$driverLastSeenMessagesAt),
      rider: l$rider == null
          ? null
          : Fragment$CurrentOrder$rider.fromJson(
              (l$rider as Map<String, dynamic>)),
      paymentGateway: l$paymentGateway == null
          ? null
          : Fragment$PaymentGatewayFragment.fromJson(
              (l$paymentGateway as Map<String, dynamic>)),
      savedPaymentMethod: l$savedPaymentMethod == null
          ? null
          : Fragment$SavedPaymentMethodFragment.fromJson(
              (l$savedPaymentMethod as Map<String, dynamic>)),
      points: (l$points as List<dynamic>)
          .map((e) => Fragment$Point.fromJson((e as Map<String, dynamic>)))
          .toList(),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) => Fragment$CurrentOrder$directions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      driverDirections: (l$driverDirections as List<dynamic>?)
          ?.map((e) => Fragment$Point.fromJson((e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Fragment$CurrentOrder$service.fromJson(
              (l$service as Map<String, dynamic>)),
      options: (l$options as List<dynamic>)
          .map((e) => Fragment$RideOption.fromJson((e as Map<String, dynamic>)))
          .toList(),
      conversations: (l$conversations as List<dynamic>)
          .map(
              (e) => Fragment$ChatMessage.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime createdOn;

  final DateTime expectedTimestamp;

  final DateTime? startTimestamp;

  final DateTime? finishTimestamp;

  final int distanceBest;

  final int durationBest;

  final Enum$OrderStatus status;

  final int destinationArrivedTo;

  final DateTime? etaPickup;

  final double paidAmount;

  final double costAfterCoupon;

  final double providerShare;

  final double costBest;

  final String currency;

  final List<String> addresses;

  final double waitMinutes;

  final double waitCost;

  final double rideOptionsCost;

  final double serviceCost;

  final double taxCost;

  final Enum$PaymentMode? paymentMode;

  final DateTime driverLastSeenMessagesAt;

  final Fragment$CurrentOrder$rider? rider;

  final Fragment$PaymentGatewayFragment? paymentGateway;

  final Fragment$SavedPaymentMethodFragment? savedPaymentMethod;

  final List<Fragment$Point> points;

  final List<Fragment$CurrentOrder$directions>? directions;

  final List<Fragment$Point>? driverDirections;

  final Fragment$CurrentOrder$service? service;

  final List<Fragment$RideOption> options;

  final List<Fragment$ChatMessage> conversations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$createdOn = createdOn;
    _resultData['createdOn'] = fromDartDateTimeToGraphQLTimestamp(l$createdOn);
    final l$expectedTimestamp = expectedTimestamp;
    _resultData['expectedTimestamp'] =
        fromDartDateTimeToGraphQLTimestamp(l$expectedTimestamp);
    final l$startTimestamp = startTimestamp;
    _resultData['startTimestamp'] = l$startTimestamp == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$startTimestamp);
    final l$finishTimestamp = finishTimestamp;
    _resultData['finishTimestamp'] = l$finishTimestamp == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$finishTimestamp);
    final l$distanceBest = distanceBest;
    _resultData['distanceBest'] = l$distanceBest;
    final l$durationBest = durationBest;
    _resultData['durationBest'] = l$durationBest;
    final l$status = status;
    _resultData['status'] = toJson$Enum$OrderStatus(l$status);
    final l$destinationArrivedTo = destinationArrivedTo;
    _resultData['destinationArrivedTo'] = l$destinationArrivedTo;
    final l$etaPickup = etaPickup;
    _resultData['etaPickup'] = l$etaPickup == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$etaPickup);
    final l$paidAmount = paidAmount;
    _resultData['paidAmount'] = l$paidAmount;
    final l$costAfterCoupon = costAfterCoupon;
    _resultData['costAfterCoupon'] = l$costAfterCoupon;
    final l$providerShare = providerShare;
    _resultData['providerShare'] = l$providerShare;
    final l$costBest = costBest;
    _resultData['costBest'] = l$costBest;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$waitMinutes = waitMinutes;
    _resultData['waitMinutes'] = l$waitMinutes;
    final l$waitCost = waitCost;
    _resultData['waitCost'] = l$waitCost;
    final l$rideOptionsCost = rideOptionsCost;
    _resultData['rideOptionsCost'] = l$rideOptionsCost;
    final l$serviceCost = serviceCost;
    _resultData['serviceCost'] = l$serviceCost;
    final l$taxCost = taxCost;
    _resultData['taxCost'] = l$taxCost;
    final l$paymentMode = paymentMode;
    _resultData['paymentMode'] =
        l$paymentMode == null ? null : toJson$Enum$PaymentMode(l$paymentMode);
    final l$driverLastSeenMessagesAt = driverLastSeenMessagesAt;
    _resultData['driverLastSeenMessagesAt'] =
        fromDartDateTimeToGraphQLTimestamp(l$driverLastSeenMessagesAt);
    final l$rider = rider;
    _resultData['rider'] = l$rider?.toJson();
    final l$paymentGateway = paymentGateway;
    _resultData['paymentGateway'] = l$paymentGateway?.toJson();
    final l$savedPaymentMethod = savedPaymentMethod;
    _resultData['savedPaymentMethod'] = l$savedPaymentMethod?.toJson();
    final l$points = points;
    _resultData['points'] = l$points.map((e) => e.toJson()).toList();
    final l$directions = directions;
    _resultData['directions'] = l$directions?.map((e) => e.toJson()).toList();
    final l$driverDirections = driverDirections;
    _resultData['driverDirections'] =
        l$driverDirections?.map((e) => e.toJson()).toList();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$options = options;
    _resultData['options'] = l$options.map((e) => e.toJson()).toList();
    final l$conversations = conversations;
    _resultData['conversations'] =
        l$conversations.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$createdOn = createdOn;
    final l$expectedTimestamp = expectedTimestamp;
    final l$startTimestamp = startTimestamp;
    final l$finishTimestamp = finishTimestamp;
    final l$distanceBest = distanceBest;
    final l$durationBest = durationBest;
    final l$status = status;
    final l$destinationArrivedTo = destinationArrivedTo;
    final l$etaPickup = etaPickup;
    final l$paidAmount = paidAmount;
    final l$costAfterCoupon = costAfterCoupon;
    final l$providerShare = providerShare;
    final l$costBest = costBest;
    final l$currency = currency;
    final l$addresses = addresses;
    final l$waitMinutes = waitMinutes;
    final l$waitCost = waitCost;
    final l$rideOptionsCost = rideOptionsCost;
    final l$serviceCost = serviceCost;
    final l$taxCost = taxCost;
    final l$paymentMode = paymentMode;
    final l$driverLastSeenMessagesAt = driverLastSeenMessagesAt;
    final l$rider = rider;
    final l$paymentGateway = paymentGateway;
    final l$savedPaymentMethod = savedPaymentMethod;
    final l$points = points;
    final l$directions = directions;
    final l$driverDirections = driverDirections;
    final l$service = service;
    final l$options = options;
    final l$conversations = conversations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$createdOn,
      l$expectedTimestamp,
      l$startTimestamp,
      l$finishTimestamp,
      l$distanceBest,
      l$durationBest,
      l$status,
      l$destinationArrivedTo,
      l$etaPickup,
      l$paidAmount,
      l$costAfterCoupon,
      l$providerShare,
      l$costBest,
      l$currency,
      Object.hashAll(l$addresses.map((v) => v)),
      l$waitMinutes,
      l$waitCost,
      l$rideOptionsCost,
      l$serviceCost,
      l$taxCost,
      l$paymentMode,
      l$driverLastSeenMessagesAt,
      l$rider,
      l$paymentGateway,
      l$savedPaymentMethod,
      Object.hashAll(l$points.map((v) => v)),
      l$directions == null ? null : Object.hashAll(l$directions.map((v) => v)),
      l$driverDirections == null
          ? null
          : Object.hashAll(l$driverDirections.map((v) => v)),
      l$service,
      Object.hashAll(l$options.map((v) => v)),
      Object.hashAll(l$conversations.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CurrentOrder) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$expectedTimestamp = expectedTimestamp;
    final lOther$expectedTimestamp = other.expectedTimestamp;
    if (l$expectedTimestamp != lOther$expectedTimestamp) {
      return false;
    }
    final l$startTimestamp = startTimestamp;
    final lOther$startTimestamp = other.startTimestamp;
    if (l$startTimestamp != lOther$startTimestamp) {
      return false;
    }
    final l$finishTimestamp = finishTimestamp;
    final lOther$finishTimestamp = other.finishTimestamp;
    if (l$finishTimestamp != lOther$finishTimestamp) {
      return false;
    }
    final l$distanceBest = distanceBest;
    final lOther$distanceBest = other.distanceBest;
    if (l$distanceBest != lOther$distanceBest) {
      return false;
    }
    final l$durationBest = durationBest;
    final lOther$durationBest = other.durationBest;
    if (l$durationBest != lOther$durationBest) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$destinationArrivedTo = destinationArrivedTo;
    final lOther$destinationArrivedTo = other.destinationArrivedTo;
    if (l$destinationArrivedTo != lOther$destinationArrivedTo) {
      return false;
    }
    final l$etaPickup = etaPickup;
    final lOther$etaPickup = other.etaPickup;
    if (l$etaPickup != lOther$etaPickup) {
      return false;
    }
    final l$paidAmount = paidAmount;
    final lOther$paidAmount = other.paidAmount;
    if (l$paidAmount != lOther$paidAmount) {
      return false;
    }
    final l$costAfterCoupon = costAfterCoupon;
    final lOther$costAfterCoupon = other.costAfterCoupon;
    if (l$costAfterCoupon != lOther$costAfterCoupon) {
      return false;
    }
    final l$providerShare = providerShare;
    final lOther$providerShare = other.providerShare;
    if (l$providerShare != lOther$providerShare) {
      return false;
    }
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (l$costBest != lOther$costBest) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (l$addresses.length != lOther$addresses.length) {
      return false;
    }
    for (int i = 0; i < l$addresses.length; i++) {
      final l$addresses$entry = l$addresses[i];
      final lOther$addresses$entry = lOther$addresses[i];
      if (l$addresses$entry != lOther$addresses$entry) {
        return false;
      }
    }
    final l$waitMinutes = waitMinutes;
    final lOther$waitMinutes = other.waitMinutes;
    if (l$waitMinutes != lOther$waitMinutes) {
      return false;
    }
    final l$waitCost = waitCost;
    final lOther$waitCost = other.waitCost;
    if (l$waitCost != lOther$waitCost) {
      return false;
    }
    final l$rideOptionsCost = rideOptionsCost;
    final lOther$rideOptionsCost = other.rideOptionsCost;
    if (l$rideOptionsCost != lOther$rideOptionsCost) {
      return false;
    }
    final l$serviceCost = serviceCost;
    final lOther$serviceCost = other.serviceCost;
    if (l$serviceCost != lOther$serviceCost) {
      return false;
    }
    final l$taxCost = taxCost;
    final lOther$taxCost = other.taxCost;
    if (l$taxCost != lOther$taxCost) {
      return false;
    }
    final l$paymentMode = paymentMode;
    final lOther$paymentMode = other.paymentMode;
    if (l$paymentMode != lOther$paymentMode) {
      return false;
    }
    final l$driverLastSeenMessagesAt = driverLastSeenMessagesAt;
    final lOther$driverLastSeenMessagesAt = other.driverLastSeenMessagesAt;
    if (l$driverLastSeenMessagesAt != lOther$driverLastSeenMessagesAt) {
      return false;
    }
    final l$rider = rider;
    final lOther$rider = other.rider;
    if (l$rider != lOther$rider) {
      return false;
    }
    final l$paymentGateway = paymentGateway;
    final lOther$paymentGateway = other.paymentGateway;
    if (l$paymentGateway != lOther$paymentGateway) {
      return false;
    }
    final l$savedPaymentMethod = savedPaymentMethod;
    final lOther$savedPaymentMethod = other.savedPaymentMethod;
    if (l$savedPaymentMethod != lOther$savedPaymentMethod) {
      return false;
    }
    final l$points = points;
    final lOther$points = other.points;
    if (l$points.length != lOther$points.length) {
      return false;
    }
    for (int i = 0; i < l$points.length; i++) {
      final l$points$entry = l$points[i];
      final lOther$points$entry = lOther$points[i];
      if (l$points$entry != lOther$points$entry) {
        return false;
      }
    }
    final l$directions = directions;
    final lOther$directions = other.directions;
    if (l$directions != null && lOther$directions != null) {
      if (l$directions.length != lOther$directions.length) {
        return false;
      }
      for (int i = 0; i < l$directions.length; i++) {
        final l$directions$entry = l$directions[i];
        final lOther$directions$entry = lOther$directions[i];
        if (l$directions$entry != lOther$directions$entry) {
          return false;
        }
      }
    } else if (l$directions != lOther$directions) {
      return false;
    }
    final l$driverDirections = driverDirections;
    final lOther$driverDirections = other.driverDirections;
    if (l$driverDirections != null && lOther$driverDirections != null) {
      if (l$driverDirections.length != lOther$driverDirections.length) {
        return false;
      }
      for (int i = 0; i < l$driverDirections.length; i++) {
        final l$driverDirections$entry = l$driverDirections[i];
        final lOther$driverDirections$entry = lOther$driverDirections[i];
        if (l$driverDirections$entry != lOther$driverDirections$entry) {
          return false;
        }
      }
    } else if (l$driverDirections != lOther$driverDirections) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (l$options.length != lOther$options.length) {
      return false;
    }
    for (int i = 0; i < l$options.length; i++) {
      final l$options$entry = l$options[i];
      final lOther$options$entry = lOther$options[i];
      if (l$options$entry != lOther$options$entry) {
        return false;
      }
    }
    final l$conversations = conversations;
    final lOther$conversations = other.conversations;
    if (l$conversations.length != lOther$conversations.length) {
      return false;
    }
    for (int i = 0; i < l$conversations.length; i++) {
      final l$conversations$entry = l$conversations[i];
      final lOther$conversations$entry = lOther$conversations[i];
      if (l$conversations$entry != lOther$conversations$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder on Fragment$CurrentOrder {
  CopyWith$Fragment$CurrentOrder<Fragment$CurrentOrder> get copyWith =>
      CopyWith$Fragment$CurrentOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CurrentOrder<TRes> {
  factory CopyWith$Fragment$CurrentOrder(
    Fragment$CurrentOrder instance,
    TRes Function(Fragment$CurrentOrder) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder;

  factory CopyWith$Fragment$CurrentOrder.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder;

  TRes call({
    String? id,
    DateTime? createdOn,
    DateTime? expectedTimestamp,
    DateTime? startTimestamp,
    DateTime? finishTimestamp,
    int? distanceBest,
    int? durationBest,
    Enum$OrderStatus? status,
    int? destinationArrivedTo,
    DateTime? etaPickup,
    double? paidAmount,
    double? costAfterCoupon,
    double? providerShare,
    double? costBest,
    String? currency,
    List<String>? addresses,
    double? waitMinutes,
    double? waitCost,
    double? rideOptionsCost,
    double? serviceCost,
    double? taxCost,
    Enum$PaymentMode? paymentMode,
    DateTime? driverLastSeenMessagesAt,
    Fragment$CurrentOrder$rider? rider,
    Fragment$PaymentGatewayFragment? paymentGateway,
    Fragment$SavedPaymentMethodFragment? savedPaymentMethod,
    List<Fragment$Point>? points,
    List<Fragment$CurrentOrder$directions>? directions,
    List<Fragment$Point>? driverDirections,
    Fragment$CurrentOrder$service? service,
    List<Fragment$RideOption>? options,
    List<Fragment$ChatMessage>? conversations,
    String? $__typename,
  });
  CopyWith$Fragment$CurrentOrder$rider<TRes> get rider;
  CopyWith$Fragment$PaymentGatewayFragment<TRes> get paymentGateway;
  CopyWith$Fragment$SavedPaymentMethodFragment<TRes> get savedPaymentMethod;
  TRes points(
      Iterable<Fragment$Point> Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
          _fn);
  TRes directions(
      Iterable<Fragment$CurrentOrder$directions>? Function(
              Iterable<
                  CopyWith$Fragment$CurrentOrder$directions<
                      Fragment$CurrentOrder$directions>>?)
          _fn);
  TRes driverDirections(
      Iterable<Fragment$Point>? Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>?)
          _fn);
  CopyWith$Fragment$CurrentOrder$service<TRes> get service;
  TRes options(
      Iterable<Fragment$RideOption> Function(
              Iterable<CopyWith$Fragment$RideOption<Fragment$RideOption>>)
          _fn);
  TRes conversations(
      Iterable<Fragment$ChatMessage> Function(
              Iterable<CopyWith$Fragment$ChatMessage<Fragment$ChatMessage>>)
          _fn);
}

class _CopyWithImpl$Fragment$CurrentOrder<TRes>
    implements CopyWith$Fragment$CurrentOrder<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder _instance;

  final TRes Function(Fragment$CurrentOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? createdOn = _undefined,
    Object? expectedTimestamp = _undefined,
    Object? startTimestamp = _undefined,
    Object? finishTimestamp = _undefined,
    Object? distanceBest = _undefined,
    Object? durationBest = _undefined,
    Object? status = _undefined,
    Object? destinationArrivedTo = _undefined,
    Object? etaPickup = _undefined,
    Object? paidAmount = _undefined,
    Object? costAfterCoupon = _undefined,
    Object? providerShare = _undefined,
    Object? costBest = _undefined,
    Object? currency = _undefined,
    Object? addresses = _undefined,
    Object? waitMinutes = _undefined,
    Object? waitCost = _undefined,
    Object? rideOptionsCost = _undefined,
    Object? serviceCost = _undefined,
    Object? taxCost = _undefined,
    Object? paymentMode = _undefined,
    Object? driverLastSeenMessagesAt = _undefined,
    Object? rider = _undefined,
    Object? paymentGateway = _undefined,
    Object? savedPaymentMethod = _undefined,
    Object? points = _undefined,
    Object? directions = _undefined,
    Object? driverDirections = _undefined,
    Object? service = _undefined,
    Object? options = _undefined,
    Object? conversations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CurrentOrder(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        createdOn: createdOn == _undefined || createdOn == null
            ? _instance.createdOn
            : (createdOn as DateTime),
        expectedTimestamp:
            expectedTimestamp == _undefined || expectedTimestamp == null
                ? _instance.expectedTimestamp
                : (expectedTimestamp as DateTime),
        startTimestamp: startTimestamp == _undefined
            ? _instance.startTimestamp
            : (startTimestamp as DateTime?),
        finishTimestamp: finishTimestamp == _undefined
            ? _instance.finishTimestamp
            : (finishTimestamp as DateTime?),
        distanceBest: distanceBest == _undefined || distanceBest == null
            ? _instance.distanceBest
            : (distanceBest as int),
        durationBest: durationBest == _undefined || durationBest == null
            ? _instance.durationBest
            : (durationBest as int),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        destinationArrivedTo:
            destinationArrivedTo == _undefined || destinationArrivedTo == null
                ? _instance.destinationArrivedTo
                : (destinationArrivedTo as int),
        etaPickup: etaPickup == _undefined
            ? _instance.etaPickup
            : (etaPickup as DateTime?),
        paidAmount: paidAmount == _undefined || paidAmount == null
            ? _instance.paidAmount
            : (paidAmount as double),
        costAfterCoupon:
            costAfterCoupon == _undefined || costAfterCoupon == null
                ? _instance.costAfterCoupon
                : (costAfterCoupon as double),
        providerShare: providerShare == _undefined || providerShare == null
            ? _instance.providerShare
            : (providerShare as double),
        costBest: costBest == _undefined || costBest == null
            ? _instance.costBest
            : (costBest as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        waitMinutes: waitMinutes == _undefined || waitMinutes == null
            ? _instance.waitMinutes
            : (waitMinutes as double),
        waitCost: waitCost == _undefined || waitCost == null
            ? _instance.waitCost
            : (waitCost as double),
        rideOptionsCost:
            rideOptionsCost == _undefined || rideOptionsCost == null
                ? _instance.rideOptionsCost
                : (rideOptionsCost as double),
        serviceCost: serviceCost == _undefined || serviceCost == null
            ? _instance.serviceCost
            : (serviceCost as double),
        taxCost: taxCost == _undefined || taxCost == null
            ? _instance.taxCost
            : (taxCost as double),
        paymentMode: paymentMode == _undefined
            ? _instance.paymentMode
            : (paymentMode as Enum$PaymentMode?),
        driverLastSeenMessagesAt: driverLastSeenMessagesAt == _undefined ||
                driverLastSeenMessagesAt == null
            ? _instance.driverLastSeenMessagesAt
            : (driverLastSeenMessagesAt as DateTime),
        rider: rider == _undefined
            ? _instance.rider
            : (rider as Fragment$CurrentOrder$rider?),
        paymentGateway: paymentGateway == _undefined
            ? _instance.paymentGateway
            : (paymentGateway as Fragment$PaymentGatewayFragment?),
        savedPaymentMethod: savedPaymentMethod == _undefined
            ? _instance.savedPaymentMethod
            : (savedPaymentMethod as Fragment$SavedPaymentMethodFragment?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Fragment$Point>),
        directions: directions == _undefined
            ? _instance.directions
            : (directions as List<Fragment$CurrentOrder$directions>?),
        driverDirections: driverDirections == _undefined
            ? _instance.driverDirections
            : (driverDirections as List<Fragment$Point>?),
        service: service == _undefined
            ? _instance.service
            : (service as Fragment$CurrentOrder$service?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<Fragment$RideOption>),
        conversations: conversations == _undefined || conversations == null
            ? _instance.conversations
            : (conversations as List<Fragment$ChatMessage>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CurrentOrder$rider<TRes> get rider {
    final local$rider = _instance.rider;
    return local$rider == null
        ? CopyWith$Fragment$CurrentOrder$rider.stub(_then(_instance))
        : CopyWith$Fragment$CurrentOrder$rider(
            local$rider, (e) => call(rider: e));
  }

  CopyWith$Fragment$PaymentGatewayFragment<TRes> get paymentGateway {
    final local$paymentGateway = _instance.paymentGateway;
    return local$paymentGateway == null
        ? CopyWith$Fragment$PaymentGatewayFragment.stub(_then(_instance))
        : CopyWith$Fragment$PaymentGatewayFragment(
            local$paymentGateway, (e) => call(paymentGateway: e));
  }

  CopyWith$Fragment$SavedPaymentMethodFragment<TRes> get savedPaymentMethod {
    final local$savedPaymentMethod = _instance.savedPaymentMethod;
    return local$savedPaymentMethod == null
        ? CopyWith$Fragment$SavedPaymentMethodFragment.stub(_then(_instance))
        : CopyWith$Fragment$SavedPaymentMethodFragment(
            local$savedPaymentMethod, (e) => call(savedPaymentMethod: e));
  }

  TRes points(
          Iterable<Fragment$Point> Function(
                  Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
              _fn) =>
      call(
          points: _fn(_instance.points.map((e) => CopyWith$Fragment$Point(
                e,
                (i) => i,
              ))).toList());

  TRes directions(
          Iterable<Fragment$CurrentOrder$directions>? Function(
                  Iterable<
                      CopyWith$Fragment$CurrentOrder$directions<
                          Fragment$CurrentOrder$directions>>?)
              _fn) =>
      call(
          directions: _fn(_instance.directions
              ?.map((e) => CopyWith$Fragment$CurrentOrder$directions(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes driverDirections(
          Iterable<Fragment$Point>? Function(
                  Iterable<CopyWith$Fragment$Point<Fragment$Point>>?)
              _fn) =>
      call(
          driverDirections: _fn(
              _instance.driverDirections?.map((e) => CopyWith$Fragment$Point(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Fragment$CurrentOrder$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Fragment$CurrentOrder$service.stub(_then(_instance))
        : CopyWith$Fragment$CurrentOrder$service(
            local$service, (e) => call(service: e));
  }

  TRes options(
          Iterable<Fragment$RideOption> Function(
                  Iterable<CopyWith$Fragment$RideOption<Fragment$RideOption>>)
              _fn) =>
      call(
          options:
              _fn(_instance.options.map((e) => CopyWith$Fragment$RideOption(
                    e,
                    (i) => i,
                  ))).toList());

  TRes conversations(
          Iterable<Fragment$ChatMessage> Function(
                  Iterable<CopyWith$Fragment$ChatMessage<Fragment$ChatMessage>>)
              _fn) =>
      call(
          conversations: _fn(
              _instance.conversations.map((e) => CopyWith$Fragment$ChatMessage(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$CurrentOrder<TRes>
    implements CopyWith$Fragment$CurrentOrder<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? createdOn,
    DateTime? expectedTimestamp,
    DateTime? startTimestamp,
    DateTime? finishTimestamp,
    int? distanceBest,
    int? durationBest,
    Enum$OrderStatus? status,
    int? destinationArrivedTo,
    DateTime? etaPickup,
    double? paidAmount,
    double? costAfterCoupon,
    double? providerShare,
    double? costBest,
    String? currency,
    List<String>? addresses,
    double? waitMinutes,
    double? waitCost,
    double? rideOptionsCost,
    double? serviceCost,
    double? taxCost,
    Enum$PaymentMode? paymentMode,
    DateTime? driverLastSeenMessagesAt,
    Fragment$CurrentOrder$rider? rider,
    Fragment$PaymentGatewayFragment? paymentGateway,
    Fragment$SavedPaymentMethodFragment? savedPaymentMethod,
    List<Fragment$Point>? points,
    List<Fragment$CurrentOrder$directions>? directions,
    List<Fragment$Point>? driverDirections,
    Fragment$CurrentOrder$service? service,
    List<Fragment$RideOption>? options,
    List<Fragment$ChatMessage>? conversations,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CurrentOrder$rider<TRes> get rider =>
      CopyWith$Fragment$CurrentOrder$rider.stub(_res);

  CopyWith$Fragment$PaymentGatewayFragment<TRes> get paymentGateway =>
      CopyWith$Fragment$PaymentGatewayFragment.stub(_res);

  CopyWith$Fragment$SavedPaymentMethodFragment<TRes> get savedPaymentMethod =>
      CopyWith$Fragment$SavedPaymentMethodFragment.stub(_res);

  points(_fn) => _res;

  directions(_fn) => _res;

  driverDirections(_fn) => _res;

  CopyWith$Fragment$CurrentOrder$service<TRes> get service =>
      CopyWith$Fragment$CurrentOrder$service.stub(_res);

  options(_fn) => _res;

  conversations(_fn) => _res;
}

const fragmentDefinitionCurrentOrder = FragmentDefinitionNode(
  name: NameNode(value: 'CurrentOrder'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Order'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'createdOn'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'expectedTimestamp'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'startTimestamp'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'finishTimestamp'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'distanceBest'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'durationBest'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'destinationArrivedTo'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'etaPickup'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'paidAmount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'costAfterCoupon'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'providerShare'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'costBest'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'currency'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'addresses'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'waitMinutes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'waitCost'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'rideOptionsCost'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'serviceCost'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'taxCost'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'paymentMode'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'durationBest'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'driverLastSeenMessagesAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'rider'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'firstName'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'lastName'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'mobileNumber'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'presetAvatarNumber'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'media'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'address'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'paymentGateway'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'PaymentGatewayFragment'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'savedPaymentMethod'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'SavedPaymentMethodFragment'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'points'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Point'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'directions'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Point'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'driverDirections'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Point'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'service'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'paymentMethod'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'options'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'RideOption'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'directions'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Point'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: 'lat'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'lng'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'conversations'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'ChatMessage'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentCurrentOrder = DocumentNode(definitions: [
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionSavedPaymentMethodFragment,
  fragmentDefinitionPoint,
  fragmentDefinitionRideOption,
  fragmentDefinitionChatMessage,
]);

extension ClientExtension$Fragment$CurrentOrder on graphql.GraphQLClient {
  void writeFragment$CurrentOrder({
    required Fragment$CurrentOrder data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CurrentOrder',
            document: documentNodeFragmentCurrentOrder,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CurrentOrder? readFragment$CurrentOrder({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CurrentOrder',
          document: documentNodeFragmentCurrentOrder,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$CurrentOrder.fromJson(result);
  }
}

class Fragment$CurrentOrder$rider {
  Fragment$CurrentOrder$rider({
    this.firstName,
    this.lastName,
    required this.mobileNumber,
    this.presetAvatarNumber,
    this.media,
    this.$__typename = 'Rider',
  });

  factory Fragment$CurrentOrder$rider.fromJson(Map<String, dynamic> json) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$mobileNumber = json['mobileNumber'];
    final l$presetAvatarNumber = json['presetAvatarNumber'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$CurrentOrder$rider(
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      mobileNumber: (l$mobileNumber as String),
      presetAvatarNumber: (l$presetAvatarNumber as int?),
      media: l$media == null
          ? null
          : Fragment$CurrentOrder$rider$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? firstName;

  final String? lastName;

  final String mobileNumber;

  final int? presetAvatarNumber;

  final Fragment$CurrentOrder$rider$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$presetAvatarNumber = presetAvatarNumber;
    _resultData['presetAvatarNumber'] = l$presetAvatarNumber;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$mobileNumber = mobileNumber;
    final l$presetAvatarNumber = presetAvatarNumber;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstName,
      l$lastName,
      l$mobileNumber,
      l$presetAvatarNumber,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CurrentOrder$rider) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$presetAvatarNumber = presetAvatarNumber;
    final lOther$presetAvatarNumber = other.presetAvatarNumber;
    if (l$presetAvatarNumber != lOther$presetAvatarNumber) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder$rider
    on Fragment$CurrentOrder$rider {
  CopyWith$Fragment$CurrentOrder$rider<Fragment$CurrentOrder$rider>
      get copyWith => CopyWith$Fragment$CurrentOrder$rider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$rider<TRes> {
  factory CopyWith$Fragment$CurrentOrder$rider(
    Fragment$CurrentOrder$rider instance,
    TRes Function(Fragment$CurrentOrder$rider) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$rider;

  factory CopyWith$Fragment$CurrentOrder$rider.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$rider;

  TRes call({
    String? firstName,
    String? lastName,
    String? mobileNumber,
    int? presetAvatarNumber,
    Fragment$CurrentOrder$rider$media? media,
    String? $__typename,
  });
  CopyWith$Fragment$CurrentOrder$rider$media<TRes> get media;
}

class _CopyWithImpl$Fragment$CurrentOrder$rider<TRes>
    implements CopyWith$Fragment$CurrentOrder$rider<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$rider(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$rider _instance;

  final TRes Function(Fragment$CurrentOrder$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? mobileNumber = _undefined,
    Object? presetAvatarNumber = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CurrentOrder$rider(
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        presetAvatarNumber: presetAvatarNumber == _undefined
            ? _instance.presetAvatarNumber
            : (presetAvatarNumber as int?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$CurrentOrder$rider$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CurrentOrder$rider$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$CurrentOrder$rider$media.stub(_then(_instance))
        : CopyWith$Fragment$CurrentOrder$rider$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$CurrentOrder$rider<TRes>
    implements CopyWith$Fragment$CurrentOrder$rider<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$rider(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? mobileNumber,
    int? presetAvatarNumber,
    Fragment$CurrentOrder$rider$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CurrentOrder$rider$media<TRes> get media =>
      CopyWith$Fragment$CurrentOrder$rider$media.stub(_res);
}

class Fragment$CurrentOrder$rider$media {
  Fragment$CurrentOrder$rider$media({
    required this.address,
    this.$__typename = 'Media',
  });

  factory Fragment$CurrentOrder$rider$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Fragment$CurrentOrder$rider$media(
      address: (l$address as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CurrentOrder$rider$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder$rider$media
    on Fragment$CurrentOrder$rider$media {
  CopyWith$Fragment$CurrentOrder$rider$media<Fragment$CurrentOrder$rider$media>
      get copyWith => CopyWith$Fragment$CurrentOrder$rider$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$rider$media<TRes> {
  factory CopyWith$Fragment$CurrentOrder$rider$media(
    Fragment$CurrentOrder$rider$media instance,
    TRes Function(Fragment$CurrentOrder$rider$media) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$rider$media;

  factory CopyWith$Fragment$CurrentOrder$rider$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$rider$media;

  TRes call({
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CurrentOrder$rider$media<TRes>
    implements CopyWith$Fragment$CurrentOrder$rider$media<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$rider$media(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$rider$media _instance;

  final TRes Function(Fragment$CurrentOrder$rider$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CurrentOrder$rider$media(
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CurrentOrder$rider$media<TRes>
    implements CopyWith$Fragment$CurrentOrder$rider$media<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$rider$media(this._res);

  TRes _res;

  call({
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$CurrentOrder$directions implements Fragment$Point {
  Fragment$CurrentOrder$directions({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Fragment$CurrentOrder$directions.fromJson(Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Fragment$CurrentOrder$directions(
      lat: (l$lat as num).toDouble(),
      lng: (l$lng as num).toDouble(),
      heading: (l$heading as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double lat;

  final double lng;

  final int? heading;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lng = lng;
    _resultData['lng'] = l$lng;
    final l$heading = heading;
    _resultData['heading'] = l$heading;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lng = lng;
    final l$heading = heading;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lat,
      l$lng,
      l$heading,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CurrentOrder$directions) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lng = lng;
    final lOther$lng = other.lng;
    if (l$lng != lOther$lng) {
      return false;
    }
    final l$heading = heading;
    final lOther$heading = other.heading;
    if (l$heading != lOther$heading) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder$directions
    on Fragment$CurrentOrder$directions {
  CopyWith$Fragment$CurrentOrder$directions<Fragment$CurrentOrder$directions>
      get copyWith => CopyWith$Fragment$CurrentOrder$directions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$directions<TRes> {
  factory CopyWith$Fragment$CurrentOrder$directions(
    Fragment$CurrentOrder$directions instance,
    TRes Function(Fragment$CurrentOrder$directions) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$directions;

  factory CopyWith$Fragment$CurrentOrder$directions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$directions;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CurrentOrder$directions<TRes>
    implements CopyWith$Fragment$CurrentOrder$directions<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$directions(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$directions _instance;

  final TRes Function(Fragment$CurrentOrder$directions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CurrentOrder$directions(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CurrentOrder$directions<TRes>
    implements CopyWith$Fragment$CurrentOrder$directions<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$directions(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$CurrentOrder$service {
  Fragment$CurrentOrder$service({
    required this.name,
    required this.paymentMethod,
    this.$__typename = 'Service',
  });

  factory Fragment$CurrentOrder$service.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$paymentMethod = json['paymentMethod'];
    final l$$__typename = json['__typename'];
    return Fragment$CurrentOrder$service(
      name: (l$name as String),
      paymentMethod:
          fromJson$Enum$ServicePaymentMethod((l$paymentMethod as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Enum$ServicePaymentMethod paymentMethod;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] =
        toJson$Enum$ServicePaymentMethod(l$paymentMethod);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$paymentMethod = paymentMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$paymentMethod,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CurrentOrder$service) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder$service
    on Fragment$CurrentOrder$service {
  CopyWith$Fragment$CurrentOrder$service<Fragment$CurrentOrder$service>
      get copyWith => CopyWith$Fragment$CurrentOrder$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$service<TRes> {
  factory CopyWith$Fragment$CurrentOrder$service(
    Fragment$CurrentOrder$service instance,
    TRes Function(Fragment$CurrentOrder$service) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$service;

  factory CopyWith$Fragment$CurrentOrder$service.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$service;

  TRes call({
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CurrentOrder$service<TRes>
    implements CopyWith$Fragment$CurrentOrder$service<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$service(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$service _instance;

  final TRes Function(Fragment$CurrentOrder$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? paymentMethod = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CurrentOrder$service(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        paymentMethod: paymentMethod == _undefined || paymentMethod == null
            ? _instance.paymentMethod
            : (paymentMethod as Enum$ServicePaymentMethod),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CurrentOrder$service<TRes>
    implements CopyWith$Fragment$CurrentOrder$service<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$service(this._res);

  TRes _res;

  call({
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    String? $__typename,
  }) =>
      _res;
}
