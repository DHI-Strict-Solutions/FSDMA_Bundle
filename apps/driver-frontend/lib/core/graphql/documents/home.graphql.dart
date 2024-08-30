import '../fragments/chat_message.fragment.graphql.dart';
import '../fragments/current_order.fragment.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
import '../fragments/order_request.fragment.graphql.dart';
import '../fragments/payment_gateway.fragment.graphql.dart';
import '../fragments/point.fragment.graphql.dart';
import '../fragments/profile.fragment.graphql.dart';
import '../fragments/ride_option.fragment.graphql.dart';
import '../fragments/saved_payment_method.fragment.graphql.dart';
import '../fragments/wallet.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:flutter_common/core/graphql/scalars/timestamp.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Subscription$OrderCreated {
  Subscription$OrderCreated({required this.orderCreated});

  factory Subscription$OrderCreated.fromJson(Map<String, dynamic> json) {
    final l$orderCreated = json['orderCreated'];
    return Subscription$OrderCreated(
        orderCreated: Fragment$OrderRequest.fromJson(
            (l$orderCreated as Map<String, dynamic>)));
  }

  final Fragment$OrderRequest orderCreated;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderCreated = orderCreated;
    _resultData['orderCreated'] = l$orderCreated.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderCreated = orderCreated;
    return Object.hashAll([l$orderCreated]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderCreated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderCreated = orderCreated;
    final lOther$orderCreated = other.orderCreated;
    if (l$orderCreated != lOther$orderCreated) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderCreated
    on Subscription$OrderCreated {
  CopyWith$Subscription$OrderCreated<Subscription$OrderCreated> get copyWith =>
      CopyWith$Subscription$OrderCreated(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$OrderCreated<TRes> {
  factory CopyWith$Subscription$OrderCreated(
    Subscription$OrderCreated instance,
    TRes Function(Subscription$OrderCreated) then,
  ) = _CopyWithImpl$Subscription$OrderCreated;

  factory CopyWith$Subscription$OrderCreated.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderCreated;

  TRes call({Fragment$OrderRequest? orderCreated});
  CopyWith$Fragment$OrderRequest<TRes> get orderCreated;
}

class _CopyWithImpl$Subscription$OrderCreated<TRes>
    implements CopyWith$Subscription$OrderCreated<TRes> {
  _CopyWithImpl$Subscription$OrderCreated(
    this._instance,
    this._then,
  );

  final Subscription$OrderCreated _instance;

  final TRes Function(Subscription$OrderCreated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderCreated = _undefined}) => _then(
      Subscription$OrderCreated(
          orderCreated: orderCreated == _undefined || orderCreated == null
              ? _instance.orderCreated
              : (orderCreated as Fragment$OrderRequest)));

  CopyWith$Fragment$OrderRequest<TRes> get orderCreated {
    final local$orderCreated = _instance.orderCreated;
    return CopyWith$Fragment$OrderRequest(
        local$orderCreated, (e) => call(orderCreated: e));
  }
}

class _CopyWithStubImpl$Subscription$OrderCreated<TRes>
    implements CopyWith$Subscription$OrderCreated<TRes> {
  _CopyWithStubImpl$Subscription$OrderCreated(this._res);

  TRes _res;

  call({Fragment$OrderRequest? orderCreated}) => _res;

  CopyWith$Fragment$OrderRequest<TRes> get orderCreated =>
      CopyWith$Fragment$OrderRequest.stub(_res);
}

const documentNodeSubscriptionOrderCreated = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OrderCreated'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderCreated'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'OrderRequest'),
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
      )
    ]),
  ),
  fragmentDefinitionOrderRequest,
  fragmentDefinitionSavedPaymentMethodFragment,
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionPoint,
  fragmentDefinitionRideOption,
]);
Subscription$OrderCreated _parserFn$Subscription$OrderCreated(
        Map<String, dynamic> data) =>
    Subscription$OrderCreated.fromJson(data);

class Options$Subscription$OrderCreated
    extends graphql.SubscriptionOptions<Subscription$OrderCreated> {
  Options$Subscription$OrderCreated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderCreated? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderCreated,
          parserFn: _parserFn$Subscription$OrderCreated,
        );
}

class WatchOptions$Subscription$OrderCreated
    extends graphql.WatchQueryOptions<Subscription$OrderCreated> {
  WatchOptions$Subscription$OrderCreated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderCreated? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderCreated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$OrderCreated,
        );
}

class FetchMoreOptions$Subscription$OrderCreated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$OrderCreated(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionOrderCreated,
        );
}

extension ClientExtension$Subscription$OrderCreated on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$OrderCreated>> subscribe$OrderCreated(
          [Options$Subscription$OrderCreated? options]) =>
      this.subscribe(options ?? Options$Subscription$OrderCreated());
  graphql.ObservableQuery<Subscription$OrderCreated>
      watchSubscription$OrderCreated(
              [WatchOptions$Subscription$OrderCreated? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$OrderCreated());
}

class Subscription$OrderRemoved {
  Subscription$OrderRemoved({required this.orderRemoved});

  factory Subscription$OrderRemoved.fromJson(Map<String, dynamic> json) {
    final l$orderRemoved = json['orderRemoved'];
    return Subscription$OrderRemoved(
        orderRemoved: Subscription$OrderRemoved$orderRemoved.fromJson(
            (l$orderRemoved as Map<String, dynamic>)));
  }

  final Subscription$OrderRemoved$orderRemoved orderRemoved;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderRemoved = orderRemoved;
    _resultData['orderRemoved'] = l$orderRemoved.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderRemoved = orderRemoved;
    return Object.hashAll([l$orderRemoved]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderRemoved) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderRemoved = orderRemoved;
    final lOther$orderRemoved = other.orderRemoved;
    if (l$orderRemoved != lOther$orderRemoved) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderRemoved
    on Subscription$OrderRemoved {
  CopyWith$Subscription$OrderRemoved<Subscription$OrderRemoved> get copyWith =>
      CopyWith$Subscription$OrderRemoved(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$OrderRemoved<TRes> {
  factory CopyWith$Subscription$OrderRemoved(
    Subscription$OrderRemoved instance,
    TRes Function(Subscription$OrderRemoved) then,
  ) = _CopyWithImpl$Subscription$OrderRemoved;

  factory CopyWith$Subscription$OrderRemoved.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderRemoved;

  TRes call({Subscription$OrderRemoved$orderRemoved? orderRemoved});
  CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> get orderRemoved;
}

class _CopyWithImpl$Subscription$OrderRemoved<TRes>
    implements CopyWith$Subscription$OrderRemoved<TRes> {
  _CopyWithImpl$Subscription$OrderRemoved(
    this._instance,
    this._then,
  );

  final Subscription$OrderRemoved _instance;

  final TRes Function(Subscription$OrderRemoved) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderRemoved = _undefined}) => _then(
      Subscription$OrderRemoved(
          orderRemoved: orderRemoved == _undefined || orderRemoved == null
              ? _instance.orderRemoved
              : (orderRemoved as Subscription$OrderRemoved$orderRemoved)));

  CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> get orderRemoved {
    final local$orderRemoved = _instance.orderRemoved;
    return CopyWith$Subscription$OrderRemoved$orderRemoved(
        local$orderRemoved, (e) => call(orderRemoved: e));
  }
}

class _CopyWithStubImpl$Subscription$OrderRemoved<TRes>
    implements CopyWith$Subscription$OrderRemoved<TRes> {
  _CopyWithStubImpl$Subscription$OrderRemoved(this._res);

  TRes _res;

  call({Subscription$OrderRemoved$orderRemoved? orderRemoved}) => _res;

  CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> get orderRemoved =>
      CopyWith$Subscription$OrderRemoved$orderRemoved.stub(_res);
}

const documentNodeSubscriptionOrderRemoved = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OrderRemoved'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderRemoved'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'OrderRequest'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'id'),
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
      )
    ]),
  ),
  fragmentDefinitionOrderRequest,
  fragmentDefinitionSavedPaymentMethodFragment,
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionPoint,
  fragmentDefinitionRideOption,
]);
Subscription$OrderRemoved _parserFn$Subscription$OrderRemoved(
        Map<String, dynamic> data) =>
    Subscription$OrderRemoved.fromJson(data);

class Options$Subscription$OrderRemoved
    extends graphql.SubscriptionOptions<Subscription$OrderRemoved> {
  Options$Subscription$OrderRemoved({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderRemoved? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderRemoved,
          parserFn: _parserFn$Subscription$OrderRemoved,
        );
}

class WatchOptions$Subscription$OrderRemoved
    extends graphql.WatchQueryOptions<Subscription$OrderRemoved> {
  WatchOptions$Subscription$OrderRemoved({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderRemoved? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderRemoved,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$OrderRemoved,
        );
}

class FetchMoreOptions$Subscription$OrderRemoved
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$OrderRemoved(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionOrderRemoved,
        );
}

extension ClientExtension$Subscription$OrderRemoved on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$OrderRemoved>> subscribe$OrderRemoved(
          [Options$Subscription$OrderRemoved? options]) =>
      this.subscribe(options ?? Options$Subscription$OrderRemoved());
  graphql.ObservableQuery<Subscription$OrderRemoved>
      watchSubscription$OrderRemoved(
              [WatchOptions$Subscription$OrderRemoved? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$OrderRemoved());
}

class Subscription$OrderRemoved$orderRemoved implements Fragment$OrderRequest {
  Subscription$OrderRemoved$orderRemoved({
    required this.id,
    required this.status,
    required this.currency,
    required this.costBest,
    this.paymentMode,
    this.savedPaymentMethod,
    this.paymentGateway,
    required this.addresses,
    required this.providerShare,
    required this.distanceBest,
    required this.durationBest,
    required this.waitMinutes,
    this.directions,
    required this.options,
    this.service,
    required this.points,
    this.$__typename = 'Order',
  });

  factory Subscription$OrderRemoved$orderRemoved.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$currency = json['currency'];
    final l$costBest = json['costBest'];
    final l$paymentMode = json['paymentMode'];
    final l$savedPaymentMethod = json['savedPaymentMethod'];
    final l$paymentGateway = json['paymentGateway'];
    final l$addresses = json['addresses'];
    final l$providerShare = json['providerShare'];
    final l$distanceBest = json['distanceBest'];
    final l$durationBest = json['durationBest'];
    final l$waitMinutes = json['waitMinutes'];
    final l$directions = json['directions'];
    final l$options = json['options'];
    final l$service = json['service'];
    final l$points = json['points'];
    final l$$__typename = json['__typename'];
    return Subscription$OrderRemoved$orderRemoved(
      id: (l$id as String),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      currency: (l$currency as String),
      costBest: (l$costBest as num).toDouble(),
      paymentMode: l$paymentMode == null
          ? null
          : fromJson$Enum$PaymentMode((l$paymentMode as String)),
      savedPaymentMethod: l$savedPaymentMethod == null
          ? null
          : Fragment$SavedPaymentMethodFragment.fromJson(
              (l$savedPaymentMethod as Map<String, dynamic>)),
      paymentGateway: l$paymentGateway == null
          ? null
          : Fragment$PaymentGatewayFragment.fromJson(
              (l$paymentGateway as Map<String, dynamic>)),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      providerShare: (l$providerShare as num).toDouble(),
      distanceBest: (l$distanceBest as int),
      durationBest: (l$durationBest as int),
      waitMinutes: (l$waitMinutes as num).toDouble(),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) => Fragment$Point.fromJson((e as Map<String, dynamic>)))
          .toList(),
      options: (l$options as List<dynamic>)
          .map((e) => Fragment$RideOption.fromJson((e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Subscription$OrderRemoved$orderRemoved$service.fromJson(
              (l$service as Map<String, dynamic>)),
      points: (l$points as List<dynamic>)
          .map((e) => Fragment$Point.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$OrderStatus status;

  final String currency;

  final double costBest;

  final Enum$PaymentMode? paymentMode;

  final Fragment$SavedPaymentMethodFragment? savedPaymentMethod;

  final Fragment$PaymentGatewayFragment? paymentGateway;

  final List<String> addresses;

  final double providerShare;

  final int distanceBest;

  final int durationBest;

  final double waitMinutes;

  final List<Fragment$Point>? directions;

  final List<Fragment$RideOption> options;

  final Subscription$OrderRemoved$orderRemoved$service? service;

  final List<Fragment$Point> points;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$OrderStatus(l$status);
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$costBest = costBest;
    _resultData['costBest'] = l$costBest;
    final l$paymentMode = paymentMode;
    _resultData['paymentMode'] =
        l$paymentMode == null ? null : toJson$Enum$PaymentMode(l$paymentMode);
    final l$savedPaymentMethod = savedPaymentMethod;
    _resultData['savedPaymentMethod'] = l$savedPaymentMethod?.toJson();
    final l$paymentGateway = paymentGateway;
    _resultData['paymentGateway'] = l$paymentGateway?.toJson();
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$providerShare = providerShare;
    _resultData['providerShare'] = l$providerShare;
    final l$distanceBest = distanceBest;
    _resultData['distanceBest'] = l$distanceBest;
    final l$durationBest = durationBest;
    _resultData['durationBest'] = l$durationBest;
    final l$waitMinutes = waitMinutes;
    _resultData['waitMinutes'] = l$waitMinutes;
    final l$directions = directions;
    _resultData['directions'] = l$directions?.map((e) => e.toJson()).toList();
    final l$options = options;
    _resultData['options'] = l$options.map((e) => e.toJson()).toList();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$points = points;
    _resultData['points'] = l$points.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$currency = currency;
    final l$costBest = costBest;
    final l$paymentMode = paymentMode;
    final l$savedPaymentMethod = savedPaymentMethod;
    final l$paymentGateway = paymentGateway;
    final l$addresses = addresses;
    final l$providerShare = providerShare;
    final l$distanceBest = distanceBest;
    final l$durationBest = durationBest;
    final l$waitMinutes = waitMinutes;
    final l$directions = directions;
    final l$options = options;
    final l$service = service;
    final l$points = points;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$status,
      l$currency,
      l$costBest,
      l$paymentMode,
      l$savedPaymentMethod,
      l$paymentGateway,
      Object.hashAll(l$addresses.map((v) => v)),
      l$providerShare,
      l$distanceBest,
      l$durationBest,
      l$waitMinutes,
      l$directions == null ? null : Object.hashAll(l$directions.map((v) => v)),
      Object.hashAll(l$options.map((v) => v)),
      l$service,
      Object.hashAll(l$points.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderRemoved$orderRemoved) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (l$costBest != lOther$costBest) {
      return false;
    }
    final l$paymentMode = paymentMode;
    final lOther$paymentMode = other.paymentMode;
    if (l$paymentMode != lOther$paymentMode) {
      return false;
    }
    final l$savedPaymentMethod = savedPaymentMethod;
    final lOther$savedPaymentMethod = other.savedPaymentMethod;
    if (l$savedPaymentMethod != lOther$savedPaymentMethod) {
      return false;
    }
    final l$paymentGateway = paymentGateway;
    final lOther$paymentGateway = other.paymentGateway;
    if (l$paymentGateway != lOther$paymentGateway) {
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
    final l$providerShare = providerShare;
    final lOther$providerShare = other.providerShare;
    if (l$providerShare != lOther$providerShare) {
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
    final l$waitMinutes = waitMinutes;
    final lOther$waitMinutes = other.waitMinutes;
    if (l$waitMinutes != lOther$waitMinutes) {
      return false;
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
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderRemoved$orderRemoved
    on Subscription$OrderRemoved$orderRemoved {
  CopyWith$Subscription$OrderRemoved$orderRemoved<
          Subscription$OrderRemoved$orderRemoved>
      get copyWith => CopyWith$Subscription$OrderRemoved$orderRemoved(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> {
  factory CopyWith$Subscription$OrderRemoved$orderRemoved(
    Subscription$OrderRemoved$orderRemoved instance,
    TRes Function(Subscription$OrderRemoved$orderRemoved) then,
  ) = _CopyWithImpl$Subscription$OrderRemoved$orderRemoved;

  factory CopyWith$Subscription$OrderRemoved$orderRemoved.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved;

  TRes call({
    String? id,
    Enum$OrderStatus? status,
    String? currency,
    double? costBest,
    Enum$PaymentMode? paymentMode,
    Fragment$SavedPaymentMethodFragment? savedPaymentMethod,
    Fragment$PaymentGatewayFragment? paymentGateway,
    List<String>? addresses,
    double? providerShare,
    int? distanceBest,
    int? durationBest,
    double? waitMinutes,
    List<Fragment$Point>? directions,
    List<Fragment$RideOption>? options,
    Subscription$OrderRemoved$orderRemoved$service? service,
    List<Fragment$Point>? points,
    String? $__typename,
  });
  CopyWith$Fragment$SavedPaymentMethodFragment<TRes> get savedPaymentMethod;
  CopyWith$Fragment$PaymentGatewayFragment<TRes> get paymentGateway;
  TRes directions(
      Iterable<Fragment$Point>? Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>?)
          _fn);
  TRes options(
      Iterable<Fragment$RideOption> Function(
              Iterable<CopyWith$Fragment$RideOption<Fragment$RideOption>>)
          _fn);
  CopyWith$Subscription$OrderRemoved$orderRemoved$service<TRes> get service;
  TRes points(
      Iterable<Fragment$Point> Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
          _fn);
}

class _CopyWithImpl$Subscription$OrderRemoved$orderRemoved<TRes>
    implements CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> {
  _CopyWithImpl$Subscription$OrderRemoved$orderRemoved(
    this._instance,
    this._then,
  );

  final Subscription$OrderRemoved$orderRemoved _instance;

  final TRes Function(Subscription$OrderRemoved$orderRemoved) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? currency = _undefined,
    Object? costBest = _undefined,
    Object? paymentMode = _undefined,
    Object? savedPaymentMethod = _undefined,
    Object? paymentGateway = _undefined,
    Object? addresses = _undefined,
    Object? providerShare = _undefined,
    Object? distanceBest = _undefined,
    Object? durationBest = _undefined,
    Object? waitMinutes = _undefined,
    Object? directions = _undefined,
    Object? options = _undefined,
    Object? service = _undefined,
    Object? points = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$OrderRemoved$orderRemoved(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        costBest: costBest == _undefined || costBest == null
            ? _instance.costBest
            : (costBest as double),
        paymentMode: paymentMode == _undefined
            ? _instance.paymentMode
            : (paymentMode as Enum$PaymentMode?),
        savedPaymentMethod: savedPaymentMethod == _undefined
            ? _instance.savedPaymentMethod
            : (savedPaymentMethod as Fragment$SavedPaymentMethodFragment?),
        paymentGateway: paymentGateway == _undefined
            ? _instance.paymentGateway
            : (paymentGateway as Fragment$PaymentGatewayFragment?),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        providerShare: providerShare == _undefined || providerShare == null
            ? _instance.providerShare
            : (providerShare as double),
        distanceBest: distanceBest == _undefined || distanceBest == null
            ? _instance.distanceBest
            : (distanceBest as int),
        durationBest: durationBest == _undefined || durationBest == null
            ? _instance.durationBest
            : (durationBest as int),
        waitMinutes: waitMinutes == _undefined || waitMinutes == null
            ? _instance.waitMinutes
            : (waitMinutes as double),
        directions: directions == _undefined
            ? _instance.directions
            : (directions as List<Fragment$Point>?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<Fragment$RideOption>),
        service: service == _undefined
            ? _instance.service
            : (service as Subscription$OrderRemoved$orderRemoved$service?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Fragment$Point>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$SavedPaymentMethodFragment<TRes> get savedPaymentMethod {
    final local$savedPaymentMethod = _instance.savedPaymentMethod;
    return local$savedPaymentMethod == null
        ? CopyWith$Fragment$SavedPaymentMethodFragment.stub(_then(_instance))
        : CopyWith$Fragment$SavedPaymentMethodFragment(
            local$savedPaymentMethod, (e) => call(savedPaymentMethod: e));
  }

  CopyWith$Fragment$PaymentGatewayFragment<TRes> get paymentGateway {
    final local$paymentGateway = _instance.paymentGateway;
    return local$paymentGateway == null
        ? CopyWith$Fragment$PaymentGatewayFragment.stub(_then(_instance))
        : CopyWith$Fragment$PaymentGatewayFragment(
            local$paymentGateway, (e) => call(paymentGateway: e));
  }

  TRes directions(
          Iterable<Fragment$Point>? Function(
                  Iterable<CopyWith$Fragment$Point<Fragment$Point>>?)
              _fn) =>
      call(
          directions:
              _fn(_instance.directions?.map((e) => CopyWith$Fragment$Point(
                    e,
                    (i) => i,
                  )))?.toList());

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

  CopyWith$Subscription$OrderRemoved$orderRemoved$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Subscription$OrderRemoved$orderRemoved$service.stub(
            _then(_instance))
        : CopyWith$Subscription$OrderRemoved$orderRemoved$service(
            local$service, (e) => call(service: e));
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
}

class _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved<TRes>
    implements CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> {
  _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved(this._res);

  TRes _res;

  call({
    String? id,
    Enum$OrderStatus? status,
    String? currency,
    double? costBest,
    Enum$PaymentMode? paymentMode,
    Fragment$SavedPaymentMethodFragment? savedPaymentMethod,
    Fragment$PaymentGatewayFragment? paymentGateway,
    List<String>? addresses,
    double? providerShare,
    int? distanceBest,
    int? durationBest,
    double? waitMinutes,
    List<Fragment$Point>? directions,
    List<Fragment$RideOption>? options,
    Subscription$OrderRemoved$orderRemoved$service? service,
    List<Fragment$Point>? points,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SavedPaymentMethodFragment<TRes> get savedPaymentMethod =>
      CopyWith$Fragment$SavedPaymentMethodFragment.stub(_res);

  CopyWith$Fragment$PaymentGatewayFragment<TRes> get paymentGateway =>
      CopyWith$Fragment$PaymentGatewayFragment.stub(_res);

  directions(_fn) => _res;

  options(_fn) => _res;

  CopyWith$Subscription$OrderRemoved$orderRemoved$service<TRes> get service =>
      CopyWith$Subscription$OrderRemoved$orderRemoved$service.stub(_res);

  points(_fn) => _res;
}

class Subscription$OrderRemoved$orderRemoved$service
    implements Fragment$OrderRequest$service {
  Subscription$OrderRemoved$orderRemoved$service({
    required this.name,
    this.$__typename = 'Service',
  });

  factory Subscription$OrderRemoved$orderRemoved$service.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Subscription$OrderRemoved$orderRemoved$service(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderRemoved$orderRemoved$service) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Subscription$OrderRemoved$orderRemoved$service
    on Subscription$OrderRemoved$orderRemoved$service {
  CopyWith$Subscription$OrderRemoved$orderRemoved$service<
          Subscription$OrderRemoved$orderRemoved$service>
      get copyWith => CopyWith$Subscription$OrderRemoved$orderRemoved$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OrderRemoved$orderRemoved$service<TRes> {
  factory CopyWith$Subscription$OrderRemoved$orderRemoved$service(
    Subscription$OrderRemoved$orderRemoved$service instance,
    TRes Function(Subscription$OrderRemoved$orderRemoved$service) then,
  ) = _CopyWithImpl$Subscription$OrderRemoved$orderRemoved$service;

  factory CopyWith$Subscription$OrderRemoved$orderRemoved$service.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved$service;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$OrderRemoved$orderRemoved$service<TRes>
    implements CopyWith$Subscription$OrderRemoved$orderRemoved$service<TRes> {
  _CopyWithImpl$Subscription$OrderRemoved$orderRemoved$service(
    this._instance,
    this._then,
  );

  final Subscription$OrderRemoved$orderRemoved$service _instance;

  final TRes Function(Subscription$OrderRemoved$orderRemoved$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$OrderRemoved$orderRemoved$service(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved$service<TRes>
    implements CopyWith$Subscription$OrderRemoved$orderRemoved$service<TRes> {
  _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved$service(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$OrderUpdated {
  Subscription$OrderUpdated({required this.orderUpdated});

  factory Subscription$OrderUpdated.fromJson(Map<String, dynamic> json) {
    final l$orderUpdated = json['orderUpdated'];
    return Subscription$OrderUpdated(
        orderUpdated: Fragment$CurrentOrder.fromJson(
            (l$orderUpdated as Map<String, dynamic>)));
  }

  final Fragment$CurrentOrder orderUpdated;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderUpdated = orderUpdated;
    _resultData['orderUpdated'] = l$orderUpdated.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderUpdated = orderUpdated;
    return Object.hashAll([l$orderUpdated]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderUpdated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderUpdated = orderUpdated;
    final lOther$orderUpdated = other.orderUpdated;
    if (l$orderUpdated != lOther$orderUpdated) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderUpdated
    on Subscription$OrderUpdated {
  CopyWith$Subscription$OrderUpdated<Subscription$OrderUpdated> get copyWith =>
      CopyWith$Subscription$OrderUpdated(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$OrderUpdated<TRes> {
  factory CopyWith$Subscription$OrderUpdated(
    Subscription$OrderUpdated instance,
    TRes Function(Subscription$OrderUpdated) then,
  ) = _CopyWithImpl$Subscription$OrderUpdated;

  factory CopyWith$Subscription$OrderUpdated.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderUpdated;

  TRes call({Fragment$CurrentOrder? orderUpdated});
  CopyWith$Fragment$CurrentOrder<TRes> get orderUpdated;
}

class _CopyWithImpl$Subscription$OrderUpdated<TRes>
    implements CopyWith$Subscription$OrderUpdated<TRes> {
  _CopyWithImpl$Subscription$OrderUpdated(
    this._instance,
    this._then,
  );

  final Subscription$OrderUpdated _instance;

  final TRes Function(Subscription$OrderUpdated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderUpdated = _undefined}) => _then(
      Subscription$OrderUpdated(
          orderUpdated: orderUpdated == _undefined || orderUpdated == null
              ? _instance.orderUpdated
              : (orderUpdated as Fragment$CurrentOrder)));

  CopyWith$Fragment$CurrentOrder<TRes> get orderUpdated {
    final local$orderUpdated = _instance.orderUpdated;
    return CopyWith$Fragment$CurrentOrder(
        local$orderUpdated, (e) => call(orderUpdated: e));
  }
}

class _CopyWithStubImpl$Subscription$OrderUpdated<TRes>
    implements CopyWith$Subscription$OrderUpdated<TRes> {
  _CopyWithStubImpl$Subscription$OrderUpdated(this._res);

  TRes _res;

  call({Fragment$CurrentOrder? orderUpdated}) => _res;

  CopyWith$Fragment$CurrentOrder<TRes> get orderUpdated =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
}

const documentNodeSubscriptionOrderUpdated = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OrderUpdated'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderUpdated'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'CurrentOrder'),
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
      )
    ]),
  ),
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionSavedPaymentMethodFragment,
  fragmentDefinitionPoint,
  fragmentDefinitionRideOption,
  fragmentDefinitionChatMessage,
]);
Subscription$OrderUpdated _parserFn$Subscription$OrderUpdated(
        Map<String, dynamic> data) =>
    Subscription$OrderUpdated.fromJson(data);

class Options$Subscription$OrderUpdated
    extends graphql.SubscriptionOptions<Subscription$OrderUpdated> {
  Options$Subscription$OrderUpdated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderUpdated? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderUpdated,
          parserFn: _parserFn$Subscription$OrderUpdated,
        );
}

class WatchOptions$Subscription$OrderUpdated
    extends graphql.WatchQueryOptions<Subscription$OrderUpdated> {
  WatchOptions$Subscription$OrderUpdated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderUpdated? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderUpdated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$OrderUpdated,
        );
}

class FetchMoreOptions$Subscription$OrderUpdated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$OrderUpdated(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionOrderUpdated,
        );
}

extension ClientExtension$Subscription$OrderUpdated on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$OrderUpdated>> subscribe$OrderUpdated(
          [Options$Subscription$OrderUpdated? options]) =>
      this.subscribe(options ?? Options$Subscription$OrderUpdated());
  graphql.ObservableQuery<Subscription$OrderUpdated>
      watchSubscription$OrderUpdated(
              [WatchOptions$Subscription$OrderUpdated? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$OrderUpdated());
}

class Variables$Mutation$UpdateDriverLocation {
  factory Variables$Mutation$UpdateDriverLocation(
          {required Input$PointInput point}) =>
      Variables$Mutation$UpdateDriverLocation._({
        r'point': point,
      });

  Variables$Mutation$UpdateDriverLocation._(this._$data);

  factory Variables$Mutation$UpdateDriverLocation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$point = data['point'];
    result$data['point'] =
        Input$PointInput.fromJson((l$point as Map<String, dynamic>));
    return Variables$Mutation$UpdateDriverLocation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PointInput get point => (_$data['point'] as Input$PointInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$point = point;
    result$data['point'] = l$point.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDriverLocation<
          Variables$Mutation$UpdateDriverLocation>
      get copyWith => CopyWith$Variables$Mutation$UpdateDriverLocation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateDriverLocation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$point = point;
    final lOther$point = other.point;
    if (l$point != lOther$point) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$point = point;
    return Object.hashAll([l$point]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDriverLocation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDriverLocation(
    Variables$Mutation$UpdateDriverLocation instance,
    TRes Function(Variables$Mutation$UpdateDriverLocation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDriverLocation;

  factory CopyWith$Variables$Mutation$UpdateDriverLocation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDriverLocation;

  TRes call({Input$PointInput? point});
}

class _CopyWithImpl$Variables$Mutation$UpdateDriverLocation<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverLocation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDriverLocation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDriverLocation _instance;

  final TRes Function(Variables$Mutation$UpdateDriverLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? point = _undefined}) =>
      _then(Variables$Mutation$UpdateDriverLocation._({
        ..._instance._$data,
        if (point != _undefined && point != null)
          'point': (point as Input$PointInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDriverLocation<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverLocation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDriverLocation(this._res);

  TRes _res;

  call({Input$PointInput? point}) => _res;
}

class Mutation$UpdateDriverLocation {
  Mutation$UpdateDriverLocation({
    required this.updateDriversLocationNew,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateDriverLocation.fromJson(Map<String, dynamic> json) {
    final l$updateDriversLocationNew = json['updateDriversLocationNew'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverLocation(
      updateDriversLocationNew: (l$updateDriversLocationNew as List<dynamic>)
          .map((e) =>
              Fragment$OrderRequest.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$OrderRequest> updateDriversLocationNew;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateDriversLocationNew = updateDriversLocationNew;
    _resultData['updateDriversLocationNew'] =
        l$updateDriversLocationNew.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateDriversLocationNew = updateDriversLocationNew;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$updateDriversLocationNew.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverLocation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateDriversLocationNew = updateDriversLocationNew;
    final lOther$updateDriversLocationNew = other.updateDriversLocationNew;
    if (l$updateDriversLocationNew.length !=
        lOther$updateDriversLocationNew.length) {
      return false;
    }
    for (int i = 0; i < l$updateDriversLocationNew.length; i++) {
      final l$updateDriversLocationNew$entry = l$updateDriversLocationNew[i];
      final lOther$updateDriversLocationNew$entry =
          lOther$updateDriversLocationNew[i];
      if (l$updateDriversLocationNew$entry !=
          lOther$updateDriversLocationNew$entry) {
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

extension UtilityExtension$Mutation$UpdateDriverLocation
    on Mutation$UpdateDriverLocation {
  CopyWith$Mutation$UpdateDriverLocation<Mutation$UpdateDriverLocation>
      get copyWith => CopyWith$Mutation$UpdateDriverLocation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverLocation<TRes> {
  factory CopyWith$Mutation$UpdateDriverLocation(
    Mutation$UpdateDriverLocation instance,
    TRes Function(Mutation$UpdateDriverLocation) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverLocation;

  factory CopyWith$Mutation$UpdateDriverLocation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverLocation;

  TRes call({
    List<Fragment$OrderRequest>? updateDriversLocationNew,
    String? $__typename,
  });
  TRes updateDriversLocationNew(
      Iterable<Fragment$OrderRequest> Function(
              Iterable<CopyWith$Fragment$OrderRequest<Fragment$OrderRequest>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateDriverLocation<TRes>
    implements CopyWith$Mutation$UpdateDriverLocation<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverLocation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverLocation _instance;

  final TRes Function(Mutation$UpdateDriverLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateDriversLocationNew = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverLocation(
        updateDriversLocationNew: updateDriversLocationNew == _undefined ||
                updateDriversLocationNew == null
            ? _instance.updateDriversLocationNew
            : (updateDriversLocationNew as List<Fragment$OrderRequest>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes updateDriversLocationNew(
          Iterable<Fragment$OrderRequest> Function(
                  Iterable<
                      CopyWith$Fragment$OrderRequest<Fragment$OrderRequest>>)
              _fn) =>
      call(
          updateDriversLocationNew: _fn(_instance.updateDriversLocationNew
              .map((e) => CopyWith$Fragment$OrderRequest(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateDriverLocation<TRes>
    implements CopyWith$Mutation$UpdateDriverLocation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverLocation(this._res);

  TRes _res;

  call({
    List<Fragment$OrderRequest>? updateDriversLocationNew,
    String? $__typename,
  }) =>
      _res;

  updateDriversLocationNew(_fn) => _res;
}

const documentNodeMutationUpdateDriverLocation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDriverLocation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'point')),
        type: NamedTypeNode(
          name: NameNode(value: 'PointInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateDriversLocationNew'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'point'),
            value: VariableNode(name: NameNode(value: 'point')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'OrderRequest'),
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
  ),
  fragmentDefinitionOrderRequest,
  fragmentDefinitionSavedPaymentMethodFragment,
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionPoint,
  fragmentDefinitionRideOption,
]);
Mutation$UpdateDriverLocation _parserFn$Mutation$UpdateDriverLocation(
        Map<String, dynamic> data) =>
    Mutation$UpdateDriverLocation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDriverLocation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateDriverLocation?,
);

class Options$Mutation$UpdateDriverLocation
    extends graphql.MutationOptions<Mutation$UpdateDriverLocation> {
  Options$Mutation$UpdateDriverLocation({
    String? operationName,
    required Variables$Mutation$UpdateDriverLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverLocation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverLocation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverLocation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDriverLocation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverLocation,
          parserFn: _parserFn$Mutation$UpdateDriverLocation,
        );

  final OnMutationCompleted$Mutation$UpdateDriverLocation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDriverLocation
    extends graphql.WatchQueryOptions<Mutation$UpdateDriverLocation> {
  WatchOptions$Mutation$UpdateDriverLocation({
    String? operationName,
    required Variables$Mutation$UpdateDriverLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverLocation? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateDriverLocation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDriverLocation,
        );
}

extension ClientExtension$Mutation$UpdateDriverLocation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDriverLocation>>
      mutate$UpdateDriverLocation(
              Options$Mutation$UpdateDriverLocation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateDriverLocation>
      watchMutation$UpdateDriverLocation(
              WatchOptions$Mutation$UpdateDriverLocation options) =>
          this.watchMutation(options);
}

class Variables$Mutation$UpdateOrderStatus {
  factory Variables$Mutation$UpdateOrderStatus({
    required String orderId,
    Enum$OrderStatus? status,
    double? cashPayment,
    int? destinationArrivedTo,
  }) =>
      Variables$Mutation$UpdateOrderStatus._({
        r'orderId': orderId,
        if (status != null) r'status': status,
        if (cashPayment != null) r'cashPayment': cashPayment,
        if (destinationArrivedTo != null)
          r'destinationArrivedTo': destinationArrivedTo,
      });

  Variables$Mutation$UpdateOrderStatus._(this._$data);

  factory Variables$Mutation$UpdateOrderStatus.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$OrderStatus((l$status as String));
    }
    if (data.containsKey('cashPayment')) {
      final l$cashPayment = data['cashPayment'];
      result$data['cashPayment'] = (l$cashPayment as num?)?.toDouble();
    }
    if (data.containsKey('destinationArrivedTo')) {
      final l$destinationArrivedTo = data['destinationArrivedTo'];
      result$data['destinationArrivedTo'] = (l$destinationArrivedTo as int?);
    }
    return Variables$Mutation$UpdateOrderStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  String get orderId => (_$data['orderId'] as String);

  Enum$OrderStatus? get status => (_$data['status'] as Enum$OrderStatus?);

  double? get cashPayment => (_$data['cashPayment'] as double?);

  int? get destinationArrivedTo => (_$data['destinationArrivedTo'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$OrderStatus(l$status);
    }
    if (_$data.containsKey('cashPayment')) {
      final l$cashPayment = cashPayment;
      result$data['cashPayment'] = l$cashPayment;
    }
    if (_$data.containsKey('destinationArrivedTo')) {
      final l$destinationArrivedTo = destinationArrivedTo;
      result$data['destinationArrivedTo'] = l$destinationArrivedTo;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateOrderStatus<
          Variables$Mutation$UpdateOrderStatus>
      get copyWith => CopyWith$Variables$Mutation$UpdateOrderStatus(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateOrderStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$cashPayment = cashPayment;
    final lOther$cashPayment = other.cashPayment;
    if (_$data.containsKey('cashPayment') !=
        other._$data.containsKey('cashPayment')) {
      return false;
    }
    if (l$cashPayment != lOther$cashPayment) {
      return false;
    }
    final l$destinationArrivedTo = destinationArrivedTo;
    final lOther$destinationArrivedTo = other.destinationArrivedTo;
    if (_$data.containsKey('destinationArrivedTo') !=
        other._$data.containsKey('destinationArrivedTo')) {
      return false;
    }
    if (l$destinationArrivedTo != lOther$destinationArrivedTo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderId = orderId;
    final l$status = status;
    final l$cashPayment = cashPayment;
    final l$destinationArrivedTo = destinationArrivedTo;
    return Object.hashAll([
      l$orderId,
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('cashPayment') ? l$cashPayment : const {},
      _$data.containsKey('destinationArrivedTo')
          ? l$destinationArrivedTo
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateOrderStatus<TRes> {
  factory CopyWith$Variables$Mutation$UpdateOrderStatus(
    Variables$Mutation$UpdateOrderStatus instance,
    TRes Function(Variables$Mutation$UpdateOrderStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateOrderStatus;

  factory CopyWith$Variables$Mutation$UpdateOrderStatus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateOrderStatus;

  TRes call({
    String? orderId,
    Enum$OrderStatus? status,
    double? cashPayment,
    int? destinationArrivedTo,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateOrderStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateOrderStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateOrderStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateOrderStatus _instance;

  final TRes Function(Variables$Mutation$UpdateOrderStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderId = _undefined,
    Object? status = _undefined,
    Object? cashPayment = _undefined,
    Object? destinationArrivedTo = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateOrderStatus._({
        ..._instance._$data,
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as String),
        if (status != _undefined) 'status': (status as Enum$OrderStatus?),
        if (cashPayment != _undefined) 'cashPayment': (cashPayment as double?),
        if (destinationArrivedTo != _undefined)
          'destinationArrivedTo': (destinationArrivedTo as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateOrderStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateOrderStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateOrderStatus(this._res);

  TRes _res;

  call({
    String? orderId,
    Enum$OrderStatus? status,
    double? cashPayment,
    int? destinationArrivedTo,
  }) =>
      _res;
}

class Mutation$UpdateOrderStatus {
  Mutation$UpdateOrderStatus({
    required this.updateOneOrder,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateOrderStatus.fromJson(Map<String, dynamic> json) {
    final l$updateOneOrder = json['updateOneOrder'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrderStatus(
      updateOneOrder: Mutation$UpdateOrderStatus$updateOneOrder.fromJson(
          (l$updateOneOrder as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateOrderStatus$updateOneOrder updateOneOrder;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneOrder = updateOneOrder;
    _resultData['updateOneOrder'] = l$updateOneOrder.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneOrder = updateOneOrder;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneOrder,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOrderStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneOrder = updateOneOrder;
    final lOther$updateOneOrder = other.updateOneOrder;
    if (l$updateOneOrder != lOther$updateOneOrder) {
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

extension UtilityExtension$Mutation$UpdateOrderStatus
    on Mutation$UpdateOrderStatus {
  CopyWith$Mutation$UpdateOrderStatus<Mutation$UpdateOrderStatus>
      get copyWith => CopyWith$Mutation$UpdateOrderStatus(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderStatus<TRes> {
  factory CopyWith$Mutation$UpdateOrderStatus(
    Mutation$UpdateOrderStatus instance,
    TRes Function(Mutation$UpdateOrderStatus) then,
  ) = _CopyWithImpl$Mutation$UpdateOrderStatus;

  factory CopyWith$Mutation$UpdateOrderStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderStatus;

  TRes call({
    Mutation$UpdateOrderStatus$updateOneOrder? updateOneOrder,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder<TRes> get updateOneOrder;
}

class _CopyWithImpl$Mutation$UpdateOrderStatus<TRes>
    implements CopyWith$Mutation$UpdateOrderStatus<TRes> {
  _CopyWithImpl$Mutation$UpdateOrderStatus(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderStatus _instance;

  final TRes Function(Mutation$UpdateOrderStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneOrder = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrderStatus(
        updateOneOrder: updateOneOrder == _undefined || updateOneOrder == null
            ? _instance.updateOneOrder
            : (updateOneOrder as Mutation$UpdateOrderStatus$updateOneOrder),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder<TRes> get updateOneOrder {
    final local$updateOneOrder = _instance.updateOneOrder;
    return CopyWith$Mutation$UpdateOrderStatus$updateOneOrder(
        local$updateOneOrder, (e) => call(updateOneOrder: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOrderStatus<TRes>
    implements CopyWith$Mutation$UpdateOrderStatus<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderStatus(this._res);

  TRes _res;

  call({
    Mutation$UpdateOrderStatus$updateOneOrder? updateOneOrder,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder<TRes> get updateOneOrder =>
      CopyWith$Mutation$UpdateOrderStatus$updateOneOrder.stub(_res);
}

const documentNodeMutationUpdateOrderStatus = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateOrderStatus'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'OrderStatus'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cashPayment')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'destinationArrivedTo')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneOrder'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'orderId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'status'),
                    value: VariableNode(name: NameNode(value: 'status')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'paidAmount'),
                    value: VariableNode(name: NameNode(value: 'cashPayment')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'destinationArrivedTo'),
                    value: VariableNode(
                        name: NameNode(value: 'destinationArrivedTo')),
                  ),
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'CurrentOrder'),
            directives: [],
          ),
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
            name: NameNode(value: 'riderLastSeenMessagesAt'),
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
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'type'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'linkMethod'),
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
                  FragmentSpreadNode(
                    name: NameNode(value: 'MediaFragment'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
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
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'providerBrand'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lastFour'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isEnabled'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isDefault'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'expiryDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'holderName'),
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
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'type'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'additionalFee'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'icon'),
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
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'sentAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'requestId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'content'),
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
                name: NameNode(value: 'sentByDriver'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionSavedPaymentMethodFragment,
  fragmentDefinitionPoint,
  fragmentDefinitionRideOption,
  fragmentDefinitionChatMessage,
]);
Mutation$UpdateOrderStatus _parserFn$Mutation$UpdateOrderStatus(
        Map<String, dynamic> data) =>
    Mutation$UpdateOrderStatus.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateOrderStatus = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateOrderStatus?,
);

class Options$Mutation$UpdateOrderStatus
    extends graphql.MutationOptions<Mutation$UpdateOrderStatus> {
  Options$Mutation$UpdateOrderStatus({
    String? operationName,
    required Variables$Mutation$UpdateOrderStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrderStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOrderStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOrderStatus>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateOrderStatus(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOrderStatus,
          parserFn: _parserFn$Mutation$UpdateOrderStatus,
        );

  final OnMutationCompleted$Mutation$UpdateOrderStatus? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateOrderStatus
    extends graphql.WatchQueryOptions<Mutation$UpdateOrderStatus> {
  WatchOptions$Mutation$UpdateOrderStatus({
    String? operationName,
    required Variables$Mutation$UpdateOrderStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrderStatus? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateOrderStatus,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateOrderStatus,
        );
}

extension ClientExtension$Mutation$UpdateOrderStatus on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateOrderStatus>>
      mutate$UpdateOrderStatus(
              Options$Mutation$UpdateOrderStatus options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateOrderStatus>
      watchMutation$UpdateOrderStatus(
              WatchOptions$Mutation$UpdateOrderStatus options) =>
          this.watchMutation(options);
}

class Mutation$UpdateOrderStatus$updateOneOrder
    implements Fragment$CurrentOrder {
  Mutation$UpdateOrderStatus$updateOneOrder({
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
    required this.riderLastSeenMessagesAt,
  });

  factory Mutation$UpdateOrderStatus$updateOneOrder.fromJson(
      Map<String, dynamic> json) {
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
    final l$riderLastSeenMessagesAt = json['riderLastSeenMessagesAt'];
    return Mutation$UpdateOrderStatus$updateOneOrder(
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
          : Mutation$UpdateOrderStatus$updateOneOrder$rider.fromJson(
              (l$rider as Map<String, dynamic>)),
      paymentGateway: l$paymentGateway == null
          ? null
          : Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway.fromJson(
              (l$paymentGateway as Map<String, dynamic>)),
      savedPaymentMethod: l$savedPaymentMethod == null
          ? null
          : Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod
              .fromJson((l$savedPaymentMethod as Map<String, dynamic>)),
      points: (l$points as List<dynamic>)
          .map((e) => Mutation$UpdateOrderStatus$updateOneOrder$points.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) =>
              Mutation$UpdateOrderStatus$updateOneOrder$directions.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      driverDirections: (l$driverDirections as List<dynamic>?)
          ?.map((e) =>
              Mutation$UpdateOrderStatus$updateOneOrder$driverDirections
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Mutation$UpdateOrderStatus$updateOneOrder$service.fromJson(
              (l$service as Map<String, dynamic>)),
      options: (l$options as List<dynamic>)
          .map((e) =>
              Mutation$UpdateOrderStatus$updateOneOrder$options.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      conversations: (l$conversations as List<dynamic>)
          .map((e) =>
              Mutation$UpdateOrderStatus$updateOneOrder$conversations.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      riderLastSeenMessagesAt:
          fromGraphQLTimestampToDartDateTime(l$riderLastSeenMessagesAt),
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

  final Mutation$UpdateOrderStatus$updateOneOrder$rider? rider;

  final Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway?
      paymentGateway;

  final Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod?
      savedPaymentMethod;

  final List<Mutation$UpdateOrderStatus$updateOneOrder$points> points;

  final List<Mutation$UpdateOrderStatus$updateOneOrder$directions>? directions;

  final List<Mutation$UpdateOrderStatus$updateOneOrder$driverDirections>?
      driverDirections;

  final Mutation$UpdateOrderStatus$updateOneOrder$service? service;

  final List<Mutation$UpdateOrderStatus$updateOneOrder$options> options;

  final List<Mutation$UpdateOrderStatus$updateOneOrder$conversations>
      conversations;

  final String $__typename;

  final DateTime riderLastSeenMessagesAt;

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
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
    _resultData['riderLastSeenMessagesAt'] =
        fromDartDateTimeToGraphQLTimestamp(l$riderLastSeenMessagesAt);
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
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
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
      l$riderLastSeenMessagesAt,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOrderStatus$updateOneOrder) ||
        runtimeType != other.runtimeType) {
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
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
    final lOther$riderLastSeenMessagesAt = other.riderLastSeenMessagesAt;
    if (l$riderLastSeenMessagesAt != lOther$riderLastSeenMessagesAt) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateOrderStatus$updateOneOrder
    on Mutation$UpdateOrderStatus$updateOneOrder {
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder<
          Mutation$UpdateOrderStatus$updateOneOrder>
      get copyWith => CopyWith$Mutation$UpdateOrderStatus$updateOneOrder(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderStatus$updateOneOrder<TRes> {
  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder(
    Mutation$UpdateOrderStatus$updateOneOrder instance,
    TRes Function(Mutation$UpdateOrderStatus$updateOneOrder) then,
  ) = _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder;

  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder;

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
    Mutation$UpdateOrderStatus$updateOneOrder$rider? rider,
    Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway? paymentGateway,
    Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod?
        savedPaymentMethod,
    List<Mutation$UpdateOrderStatus$updateOneOrder$points>? points,
    List<Mutation$UpdateOrderStatus$updateOneOrder$directions>? directions,
    List<Mutation$UpdateOrderStatus$updateOneOrder$driverDirections>?
        driverDirections,
    Mutation$UpdateOrderStatus$updateOneOrder$service? service,
    List<Mutation$UpdateOrderStatus$updateOneOrder$options>? options,
    List<Mutation$UpdateOrderStatus$updateOneOrder$conversations>?
        conversations,
    String? $__typename,
    DateTime? riderLastSeenMessagesAt,
  });
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider<TRes> get rider;
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway<TRes>
      get paymentGateway;
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod<TRes>
      get savedPaymentMethod;
  TRes points(
      Iterable<Mutation$UpdateOrderStatus$updateOneOrder$points> Function(
              Iterable<
                  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$points<
                      Mutation$UpdateOrderStatus$updateOneOrder$points>>)
          _fn);
  TRes directions(
      Iterable<Mutation$UpdateOrderStatus$updateOneOrder$directions>? Function(
              Iterable<
                  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$directions<
                      Mutation$UpdateOrderStatus$updateOneOrder$directions>>?)
          _fn);
  TRes driverDirections(
      Iterable<Mutation$UpdateOrderStatus$updateOneOrder$driverDirections>? Function(
              Iterable<
                  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections<
                      Mutation$UpdateOrderStatus$updateOneOrder$driverDirections>>?)
          _fn);
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$service<TRes> get service;
  TRes options(
      Iterable<Mutation$UpdateOrderStatus$updateOneOrder$options> Function(
              Iterable<
                  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$options<
                      Mutation$UpdateOrderStatus$updateOneOrder$options>>)
          _fn);
  TRes conversations(
      Iterable<Mutation$UpdateOrderStatus$updateOneOrder$conversations> Function(
              Iterable<
                  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$conversations<
                      Mutation$UpdateOrderStatus$updateOneOrder$conversations>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder<TRes>
    implements CopyWith$Mutation$UpdateOrderStatus$updateOneOrder<TRes> {
  _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderStatus$updateOneOrder _instance;

  final TRes Function(Mutation$UpdateOrderStatus$updateOneOrder) _then;

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
    Object? riderLastSeenMessagesAt = _undefined,
  }) =>
      _then(Mutation$UpdateOrderStatus$updateOneOrder(
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
            : (rider as Mutation$UpdateOrderStatus$updateOneOrder$rider?),
        paymentGateway: paymentGateway == _undefined
            ? _instance.paymentGateway
            : (paymentGateway
                as Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway?),
        savedPaymentMethod: savedPaymentMethod == _undefined
            ? _instance.savedPaymentMethod
            : (savedPaymentMethod
                as Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points
                as List<Mutation$UpdateOrderStatus$updateOneOrder$points>),
        directions: directions == _undefined
            ? _instance.directions
            : (directions
                as List<Mutation$UpdateOrderStatus$updateOneOrder$directions>?),
        driverDirections: driverDirections == _undefined
            ? _instance.driverDirections
            : (driverDirections as List<
                Mutation$UpdateOrderStatus$updateOneOrder$driverDirections>?),
        service: service == _undefined
            ? _instance.service
            : (service as Mutation$UpdateOrderStatus$updateOneOrder$service?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options
                as List<Mutation$UpdateOrderStatus$updateOneOrder$options>),
        conversations: conversations == _undefined || conversations == null
            ? _instance.conversations
            : (conversations as List<
                Mutation$UpdateOrderStatus$updateOneOrder$conversations>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        riderLastSeenMessagesAt: riderLastSeenMessagesAt == _undefined ||
                riderLastSeenMessagesAt == null
            ? _instance.riderLastSeenMessagesAt
            : (riderLastSeenMessagesAt as DateTime),
      ));

  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider<TRes> get rider {
    final local$rider = _instance.rider;
    return local$rider == null
        ? CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider(
            local$rider, (e) => call(rider: e));
  }

  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway<TRes>
      get paymentGateway {
    final local$paymentGateway = _instance.paymentGateway;
    return local$paymentGateway == null
        ? CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway(
            local$paymentGateway, (e) => call(paymentGateway: e));
  }

  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod<TRes>
      get savedPaymentMethod {
    final local$savedPaymentMethod = _instance.savedPaymentMethod;
    return local$savedPaymentMethod == null
        ? CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod(
            local$savedPaymentMethod, (e) => call(savedPaymentMethod: e));
  }

  TRes points(
          Iterable<Mutation$UpdateOrderStatus$updateOneOrder$points> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$points<
                          Mutation$UpdateOrderStatus$updateOneOrder$points>>)
              _fn) =>
      call(
          points: _fn(_instance.points.map(
              (e) => CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$points(
                    e,
                    (i) => i,
                  ))).toList());

  TRes directions(
          Iterable<Mutation$UpdateOrderStatus$updateOneOrder$directions>? Function(
                  Iterable<
                      CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$directions<
                          Mutation$UpdateOrderStatus$updateOneOrder$directions>>?)
              _fn) =>
      call(
          directions: _fn(_instance.directions?.map((e) =>
              CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$directions(
                e,
                (i) => i,
              )))?.toList());

  TRes driverDirections(
          Iterable<Mutation$UpdateOrderStatus$updateOneOrder$driverDirections>? Function(
                  Iterable<
                      CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections<
                          Mutation$UpdateOrderStatus$updateOneOrder$driverDirections>>?)
              _fn) =>
      call(
          driverDirections: _fn(_instance.driverDirections?.map((e) =>
              CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$service.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$service(
            local$service, (e) => call(service: e));
  }

  TRes options(
          Iterable<Mutation$UpdateOrderStatus$updateOneOrder$options> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$options<
                          Mutation$UpdateOrderStatus$updateOneOrder$options>>)
              _fn) =>
      call(
          options: _fn(_instance.options.map(
              (e) => CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$options(
                    e,
                    (i) => i,
                  ))).toList());

  TRes conversations(
          Iterable<Mutation$UpdateOrderStatus$updateOneOrder$conversations> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$conversations<
                          Mutation$UpdateOrderStatus$updateOneOrder$conversations>>)
              _fn) =>
      call(
          conversations: _fn(_instance.conversations.map((e) =>
              CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$conversations(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder<TRes>
    implements CopyWith$Mutation$UpdateOrderStatus$updateOneOrder<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder(this._res);

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
    Mutation$UpdateOrderStatus$updateOneOrder$rider? rider,
    Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway? paymentGateway,
    Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod?
        savedPaymentMethod,
    List<Mutation$UpdateOrderStatus$updateOneOrder$points>? points,
    List<Mutation$UpdateOrderStatus$updateOneOrder$directions>? directions,
    List<Mutation$UpdateOrderStatus$updateOneOrder$driverDirections>?
        driverDirections,
    Mutation$UpdateOrderStatus$updateOneOrder$service? service,
    List<Mutation$UpdateOrderStatus$updateOneOrder$options>? options,
    List<Mutation$UpdateOrderStatus$updateOneOrder$conversations>?
        conversations,
    String? $__typename,
    DateTime? riderLastSeenMessagesAt,
  }) =>
      _res;

  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider<TRes> get rider =>
      CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider.stub(_res);

  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway<TRes>
      get paymentGateway =>
          CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway
              .stub(_res);

  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod<TRes>
      get savedPaymentMethod =>
          CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod
              .stub(_res);

  points(_fn) => _res;

  directions(_fn) => _res;

  driverDirections(_fn) => _res;

  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$service<TRes>
      get service =>
          CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$service.stub(_res);

  options(_fn) => _res;

  conversations(_fn) => _res;
}

class Mutation$UpdateOrderStatus$updateOneOrder$rider
    implements Fragment$CurrentOrder$rider {
  Mutation$UpdateOrderStatus$updateOneOrder$rider({
    this.firstName,
    this.lastName,
    required this.mobileNumber,
    this.presetAvatarNumber,
    this.media,
    this.$__typename = 'Rider',
  });

  factory Mutation$UpdateOrderStatus$updateOneOrder$rider.fromJson(
      Map<String, dynamic> json) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$mobileNumber = json['mobileNumber'];
    final l$presetAvatarNumber = json['presetAvatarNumber'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrderStatus$updateOneOrder$rider(
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      mobileNumber: (l$mobileNumber as String),
      presetAvatarNumber: (l$presetAvatarNumber as int?),
      media: l$media == null
          ? null
          : Mutation$UpdateOrderStatus$updateOneOrder$rider$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? firstName;

  final String? lastName;

  final String mobileNumber;

  final int? presetAvatarNumber;

  final Mutation$UpdateOrderStatus$updateOneOrder$rider$media? media;

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
    if (!(other is Mutation$UpdateOrderStatus$updateOneOrder$rider) ||
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

extension UtilityExtension$Mutation$UpdateOrderStatus$updateOneOrder$rider
    on Mutation$UpdateOrderStatus$updateOneOrder$rider {
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider<
          Mutation$UpdateOrderStatus$updateOneOrder$rider>
      get copyWith => CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider<TRes> {
  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider(
    Mutation$UpdateOrderStatus$updateOneOrder$rider instance,
    TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$rider) then,
  ) = _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$rider;

  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$rider;

  TRes call({
    String? firstName,
    String? lastName,
    String? mobileNumber,
    int? presetAvatarNumber,
    Mutation$UpdateOrderStatus$updateOneOrder$rider$media? media,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider$media<TRes>
      get media;
}

class _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$rider<TRes>
    implements CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider<TRes> {
  _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$rider(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderStatus$updateOneOrder$rider _instance;

  final TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? mobileNumber = _undefined,
    Object? presetAvatarNumber = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrderStatus$updateOneOrder$rider(
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
            : (media as Mutation$UpdateOrderStatus$updateOneOrder$rider$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider$media<TRes>
      get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider$media.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$rider<TRes>
    implements CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$rider(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? mobileNumber,
    int? presetAvatarNumber,
    Mutation$UpdateOrderStatus$updateOneOrder$rider$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider$media<TRes>
      get media =>
          CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider$media.stub(
              _res);
}

class Mutation$UpdateOrderStatus$updateOneOrder$rider$media
    implements Fragment$CurrentOrder$rider$media {
  Mutation$UpdateOrderStatus$updateOneOrder$rider$media({
    required this.address,
    this.$__typename = 'Media',
  });

  factory Mutation$UpdateOrderStatus$updateOneOrder$rider$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrderStatus$updateOneOrder$rider$media(
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
    if (!(other is Mutation$UpdateOrderStatus$updateOneOrder$rider$media) ||
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

extension UtilityExtension$Mutation$UpdateOrderStatus$updateOneOrder$rider$media
    on Mutation$UpdateOrderStatus$updateOneOrder$rider$media {
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider$media<
          Mutation$UpdateOrderStatus$updateOneOrder$rider$media>
      get copyWith =>
          CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider$media<
    TRes> {
  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider$media(
    Mutation$UpdateOrderStatus$updateOneOrder$rider$media instance,
    TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$rider$media) then,
  ) = _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$rider$media;

  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider$media.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$rider$media;

  TRes call({
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$rider$media<TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider$media<TRes> {
  _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$rider$media(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderStatus$updateOneOrder$rider$media _instance;

  final TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$rider$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrderStatus$updateOneOrder$rider$media(
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$rider$media<
        TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$rider$media<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$rider$media(
      this._res);

  TRes _res;

  call({
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway
    implements Fragment$PaymentGatewayFragment {
  Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway({
    required this.id,
    required this.title,
    required this.type,
    required this.linkMethod,
    this.media,
    this.$__typename = 'PaymentGateway',
  });

  factory Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$linkMethod = json['linkMethod'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway(
      id: (l$id as String),
      title: (l$title as String),
      type: fromJson$Enum$PaymentGatewayType((l$type as String)),
      linkMethod: fromJson$Enum$GatewayLinkMethod((l$linkMethod as String)),
      media: l$media == null
          ? null
          : Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media
              .fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final Enum$PaymentGatewayType type;

  final Enum$GatewayLinkMethod linkMethod;

  final Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$type = type;
    _resultData['type'] = toJson$Enum$PaymentGatewayType(l$type);
    final l$linkMethod = linkMethod;
    _resultData['linkMethod'] = toJson$Enum$GatewayLinkMethod(l$linkMethod);
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$linkMethod = linkMethod;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$linkMethod,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$linkMethod = linkMethod;
    final lOther$linkMethod = other.linkMethod;
    if (l$linkMethod != lOther$linkMethod) {
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

extension UtilityExtension$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway
    on Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway {
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway<
          Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway>
      get copyWith =>
          CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway<
    TRes> {
  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway(
    Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway instance,
    TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway)
        then,
  ) = _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway;

  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway;

  TRes call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media? media,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media<TRes>
      get media;
}

class _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway<
        TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway<
            TRes> {
  _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway _instance;

  final TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? linkMethod = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$PaymentGatewayType),
        linkMethod: linkMethod == _undefined || linkMethod == null
            ? _instance.linkMethod
            : (linkMethod as Enum$GatewayLinkMethod),
        media: media == _undefined
            ? _instance.media
            : (media
                as Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media<TRes>
      get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway<
        TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway(
      this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media<TRes>
      get media =>
          CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media
              .stub(_res);
}

class Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media
    implements Fragment$PaymentGatewayFragment$media, Fragment$MediaFragment {
  Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media({
    required this.id,
    required this.address,
    this.$__typename = 'Media',
  });

  factory Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media(
      id: (l$id as String),
      address: (l$address as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media
    on Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media {
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media<
          Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media>
      get copyWith =>
          CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media<
    TRes> {
  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media(
    Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media instance,
    TRes Function(
            Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media)
        then,
  ) = _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media;

  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media;

  TRes call({
    String? id,
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media<
        TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media<
            TRes> {
  _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media
      _instance;

  final TRes Function(
      Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media<
        TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$paymentGateway$media(
      this._res);

  TRes _res;

  call({
    String? id,
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod
    implements Fragment$SavedPaymentMethodFragment {
  Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod({
    required this.id,
    this.providerBrand,
    this.lastFour,
    required this.isEnabled,
    required this.isDefault,
    required this.title,
    this.expiryDate,
    this.holderName,
    this.$__typename = 'SavedPaymentMethod',
  });

  factory Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$providerBrand = json['providerBrand'];
    final l$lastFour = json['lastFour'];
    final l$isEnabled = json['isEnabled'];
    final l$isDefault = json['isDefault'];
    final l$title = json['title'];
    final l$expiryDate = json['expiryDate'];
    final l$holderName = json['holderName'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod(
      id: (l$id as String),
      providerBrand: l$providerBrand == null
          ? null
          : fromJson$Enum$ProviderBrand((l$providerBrand as String)),
      lastFour: (l$lastFour as String?),
      isEnabled: (l$isEnabled as bool),
      isDefault: (l$isDefault as bool),
      title: (l$title as String),
      expiryDate: l$expiryDate == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$expiryDate),
      holderName: (l$holderName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$ProviderBrand? providerBrand;

  final String? lastFour;

  final bool isEnabled;

  final bool isDefault;

  final String title;

  final DateTime? expiryDate;

  final String? holderName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$providerBrand = providerBrand;
    _resultData['providerBrand'] = l$providerBrand == null
        ? null
        : toJson$Enum$ProviderBrand(l$providerBrand);
    final l$lastFour = lastFour;
    _resultData['lastFour'] = l$lastFour;
    final l$isEnabled = isEnabled;
    _resultData['isEnabled'] = l$isEnabled;
    final l$isDefault = isDefault;
    _resultData['isDefault'] = l$isDefault;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$expiryDate = expiryDate;
    _resultData['expiryDate'] = l$expiryDate == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$expiryDate);
    final l$holderName = holderName;
    _resultData['holderName'] = l$holderName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$providerBrand = providerBrand;
    final l$lastFour = lastFour;
    final l$isEnabled = isEnabled;
    final l$isDefault = isDefault;
    final l$title = title;
    final l$expiryDate = expiryDate;
    final l$holderName = holderName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$providerBrand,
      l$lastFour,
      l$isEnabled,
      l$isDefault,
      l$title,
      l$expiryDate,
      l$holderName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$providerBrand = providerBrand;
    final lOther$providerBrand = other.providerBrand;
    if (l$providerBrand != lOther$providerBrand) {
      return false;
    }
    final l$lastFour = lastFour;
    final lOther$lastFour = other.lastFour;
    if (l$lastFour != lOther$lastFour) {
      return false;
    }
    final l$isEnabled = isEnabled;
    final lOther$isEnabled = other.isEnabled;
    if (l$isEnabled != lOther$isEnabled) {
      return false;
    }
    final l$isDefault = isDefault;
    final lOther$isDefault = other.isDefault;
    if (l$isDefault != lOther$isDefault) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$expiryDate = expiryDate;
    final lOther$expiryDate = other.expiryDate;
    if (l$expiryDate != lOther$expiryDate) {
      return false;
    }
    final l$holderName = holderName;
    final lOther$holderName = other.holderName;
    if (l$holderName != lOther$holderName) {
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

extension UtilityExtension$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod
    on Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod {
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod<
          Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod>
      get copyWith =>
          CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod<
    TRes> {
  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod(
    Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod instance,
    TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod)
        then,
  ) = _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod;

  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod;

  TRes call({
    String? id,
    Enum$ProviderBrand? providerBrand,
    String? lastFour,
    bool? isEnabled,
    bool? isDefault,
    String? title,
    DateTime? expiryDate,
    String? holderName,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod<
        TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod<
            TRes> {
  _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod _instance;

  final TRes Function(
      Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? providerBrand = _undefined,
    Object? lastFour = _undefined,
    Object? isEnabled = _undefined,
    Object? isDefault = _undefined,
    Object? title = _undefined,
    Object? expiryDate = _undefined,
    Object? holderName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        providerBrand: providerBrand == _undefined
            ? _instance.providerBrand
            : (providerBrand as Enum$ProviderBrand?),
        lastFour:
            lastFour == _undefined ? _instance.lastFour : (lastFour as String?),
        isEnabled: isEnabled == _undefined || isEnabled == null
            ? _instance.isEnabled
            : (isEnabled as bool),
        isDefault: isDefault == _undefined || isDefault == null
            ? _instance.isDefault
            : (isDefault as bool),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        expiryDate: expiryDate == _undefined
            ? _instance.expiryDate
            : (expiryDate as DateTime?),
        holderName: holderName == _undefined
            ? _instance.holderName
            : (holderName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod<
        TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$savedPaymentMethod(
      this._res);

  TRes _res;

  call({
    String? id,
    Enum$ProviderBrand? providerBrand,
    String? lastFour,
    bool? isEnabled,
    bool? isDefault,
    String? title,
    DateTime? expiryDate,
    String? holderName,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateOrderStatus$updateOneOrder$points
    implements Fragment$Point {
  Mutation$UpdateOrderStatus$updateOneOrder$points({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Mutation$UpdateOrderStatus$updateOneOrder$points.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrderStatus$updateOneOrder$points(
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
    if (!(other is Mutation$UpdateOrderStatus$updateOneOrder$points) ||
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

extension UtilityExtension$Mutation$UpdateOrderStatus$updateOneOrder$points
    on Mutation$UpdateOrderStatus$updateOneOrder$points {
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$points<
          Mutation$UpdateOrderStatus$updateOneOrder$points>
      get copyWith => CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$points(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$points<TRes> {
  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$points(
    Mutation$UpdateOrderStatus$updateOneOrder$points instance,
    TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$points) then,
  ) = _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$points;

  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$points.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$points;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$points<TRes>
    implements CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$points<TRes> {
  _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$points(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderStatus$updateOneOrder$points _instance;

  final TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$points) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrderStatus$updateOneOrder$points(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$points<TRes>
    implements CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$points<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$points(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateOrderStatus$updateOneOrder$directions
    implements Fragment$CurrentOrder$directions, Fragment$Point {
  Mutation$UpdateOrderStatus$updateOneOrder$directions({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Mutation$UpdateOrderStatus$updateOneOrder$directions.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrderStatus$updateOneOrder$directions(
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
    if (!(other is Mutation$UpdateOrderStatus$updateOneOrder$directions) ||
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

extension UtilityExtension$Mutation$UpdateOrderStatus$updateOneOrder$directions
    on Mutation$UpdateOrderStatus$updateOneOrder$directions {
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$directions<
          Mutation$UpdateOrderStatus$updateOneOrder$directions>
      get copyWith =>
          CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$directions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$directions<
    TRes> {
  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$directions(
    Mutation$UpdateOrderStatus$updateOneOrder$directions instance,
    TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$directions) then,
  ) = _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$directions;

  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$directions.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$directions;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$directions<TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$directions<TRes> {
  _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$directions(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderStatus$updateOneOrder$directions _instance;

  final TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$directions)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrderStatus$updateOneOrder$directions(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$directions<
        TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$directions<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$directions(
      this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateOrderStatus$updateOneOrder$driverDirections
    implements Fragment$Point {
  Mutation$UpdateOrderStatus$updateOneOrder$driverDirections({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Mutation$UpdateOrderStatus$updateOneOrder$driverDirections.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrderStatus$updateOneOrder$driverDirections(
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
    if (!(other
            is Mutation$UpdateOrderStatus$updateOneOrder$driverDirections) ||
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

extension UtilityExtension$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections
    on Mutation$UpdateOrderStatus$updateOneOrder$driverDirections {
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections<
          Mutation$UpdateOrderStatus$updateOneOrder$driverDirections>
      get copyWith =>
          CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections<
    TRes> {
  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections(
    Mutation$UpdateOrderStatus$updateOneOrder$driverDirections instance,
    TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$driverDirections)
        then,
  ) = _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections;

  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections<
        TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections<
            TRes> {
  _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderStatus$updateOneOrder$driverDirections _instance;

  final TRes Function(
      Mutation$UpdateOrderStatus$updateOneOrder$driverDirections) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrderStatus$updateOneOrder$driverDirections(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections<
        TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$driverDirections(
      this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateOrderStatus$updateOneOrder$service
    implements Fragment$CurrentOrder$service {
  Mutation$UpdateOrderStatus$updateOneOrder$service({
    required this.name,
    required this.paymentMethod,
    this.$__typename = 'Service',
  });

  factory Mutation$UpdateOrderStatus$updateOneOrder$service.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$paymentMethod = json['paymentMethod'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrderStatus$updateOneOrder$service(
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
    if (!(other is Mutation$UpdateOrderStatus$updateOneOrder$service) ||
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

extension UtilityExtension$Mutation$UpdateOrderStatus$updateOneOrder$service
    on Mutation$UpdateOrderStatus$updateOneOrder$service {
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$service<
          Mutation$UpdateOrderStatus$updateOneOrder$service>
      get copyWith =>
          CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$service<
    TRes> {
  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$service(
    Mutation$UpdateOrderStatus$updateOneOrder$service instance,
    TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$service) then,
  ) = _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$service;

  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$service.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$service;

  TRes call({
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$service<TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$service<TRes> {
  _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$service(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderStatus$updateOneOrder$service _instance;

  final TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? paymentMethod = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrderStatus$updateOneOrder$service(
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

class _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$service<TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$service<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$service(
      this._res);

  TRes _res;

  call({
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateOrderStatus$updateOneOrder$options
    implements Fragment$RideOption {
  Mutation$UpdateOrderStatus$updateOneOrder$options({
    required this.id,
    required this.name,
    this.description,
    required this.type,
    this.additionalFee,
    required this.icon,
    this.$__typename = 'ServiceOption',
  });

  factory Mutation$UpdateOrderStatus$updateOneOrder$options.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$type = json['type'];
    final l$additionalFee = json['additionalFee'];
    final l$icon = json['icon'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrderStatus$updateOneOrder$options(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String?),
      type: fromJson$Enum$ServiceOptionType((l$type as String)),
      additionalFee: (l$additionalFee as num?)?.toDouble(),
      icon: fromJson$Enum$ServiceOptionIcon((l$icon as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? description;

  final Enum$ServiceOptionType type;

  final double? additionalFee;

  final Enum$ServiceOptionIcon icon;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$type = type;
    _resultData['type'] = toJson$Enum$ServiceOptionType(l$type);
    final l$additionalFee = additionalFee;
    _resultData['additionalFee'] = l$additionalFee;
    final l$icon = icon;
    _resultData['icon'] = toJson$Enum$ServiceOptionIcon(l$icon);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$type = type;
    final l$additionalFee = additionalFee;
    final l$icon = icon;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$type,
      l$additionalFee,
      l$icon,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOrderStatus$updateOneOrder$options) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$additionalFee = additionalFee;
    final lOther$additionalFee = other.additionalFee;
    if (l$additionalFee != lOther$additionalFee) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
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

extension UtilityExtension$Mutation$UpdateOrderStatus$updateOneOrder$options
    on Mutation$UpdateOrderStatus$updateOneOrder$options {
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$options<
          Mutation$UpdateOrderStatus$updateOneOrder$options>
      get copyWith =>
          CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$options(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$options<
    TRes> {
  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$options(
    Mutation$UpdateOrderStatus$updateOneOrder$options instance,
    TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$options) then,
  ) = _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$options;

  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$options.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$options;

  TRes call({
    String? id,
    String? name,
    String? description,
    Enum$ServiceOptionType? type,
    double? additionalFee,
    Enum$ServiceOptionIcon? icon,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$options<TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$options<TRes> {
  _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$options(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderStatus$updateOneOrder$options _instance;

  final TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$options) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? type = _undefined,
    Object? additionalFee = _undefined,
    Object? icon = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrderStatus$updateOneOrder$options(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$ServiceOptionType),
        additionalFee: additionalFee == _undefined
            ? _instance.additionalFee
            : (additionalFee as double?),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as Enum$ServiceOptionIcon),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$options<TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$options<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$options(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    Enum$ServiceOptionType? type,
    double? additionalFee,
    Enum$ServiceOptionIcon? icon,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateOrderStatus$updateOneOrder$conversations
    implements Fragment$ChatMessage {
  Mutation$UpdateOrderStatus$updateOneOrder$conversations({
    required this.id,
    required this.sentAt,
    required this.requestId,
    required this.content,
    required this.status,
    required this.sentByDriver,
    this.$__typename = 'OrderMessage',
  });

  factory Mutation$UpdateOrderStatus$updateOneOrder$conversations.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$sentAt = json['sentAt'];
    final l$requestId = json['requestId'];
    final l$content = json['content'];
    final l$status = json['status'];
    final l$sentByDriver = json['sentByDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrderStatus$updateOneOrder$conversations(
      id: (l$id as String),
      sentAt: fromGraphQLTimestampToDartDateTime(l$sentAt),
      requestId: (l$requestId as String),
      content: (l$content as String),
      status: fromJson$Enum$MessageStatus((l$status as String)),
      sentByDriver: (l$sentByDriver as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime sentAt;

  final String requestId;

  final String content;

  final Enum$MessageStatus status;

  final bool sentByDriver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$sentAt = sentAt;
    _resultData['sentAt'] = fromDartDateTimeToGraphQLTimestamp(l$sentAt);
    final l$requestId = requestId;
    _resultData['requestId'] = l$requestId;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$status = status;
    _resultData['status'] = toJson$Enum$MessageStatus(l$status);
    final l$sentByDriver = sentByDriver;
    _resultData['sentByDriver'] = l$sentByDriver;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$sentAt = sentAt;
    final l$requestId = requestId;
    final l$content = content;
    final l$status = status;
    final l$sentByDriver = sentByDriver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$sentAt,
      l$requestId,
      l$content,
      l$status,
      l$sentByDriver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOrderStatus$updateOneOrder$conversations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$sentAt = sentAt;
    final lOther$sentAt = other.sentAt;
    if (l$sentAt != lOther$sentAt) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (l$requestId != lOther$requestId) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$sentByDriver = sentByDriver;
    final lOther$sentByDriver = other.sentByDriver;
    if (l$sentByDriver != lOther$sentByDriver) {
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

extension UtilityExtension$Mutation$UpdateOrderStatus$updateOneOrder$conversations
    on Mutation$UpdateOrderStatus$updateOneOrder$conversations {
  CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$conversations<
          Mutation$UpdateOrderStatus$updateOneOrder$conversations>
      get copyWith =>
          CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$conversations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$conversations<
    TRes> {
  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$conversations(
    Mutation$UpdateOrderStatus$updateOneOrder$conversations instance,
    TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$conversations) then,
  ) = _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$conversations;

  factory CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$conversations.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$conversations;

  TRes call({
    String? id,
    DateTime? sentAt,
    String? requestId,
    String? content,
    Enum$MessageStatus? status,
    bool? sentByDriver,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$conversations<
        TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$conversations<TRes> {
  _CopyWithImpl$Mutation$UpdateOrderStatus$updateOneOrder$conversations(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderStatus$updateOneOrder$conversations _instance;

  final TRes Function(Mutation$UpdateOrderStatus$updateOneOrder$conversations)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? sentAt = _undefined,
    Object? requestId = _undefined,
    Object? content = _undefined,
    Object? status = _undefined,
    Object? sentByDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrderStatus$updateOneOrder$conversations(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        sentAt: sentAt == _undefined || sentAt == null
            ? _instance.sentAt
            : (sentAt as DateTime),
        requestId: requestId == _undefined || requestId == null
            ? _instance.requestId
            : (requestId as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$MessageStatus),
        sentByDriver: sentByDriver == _undefined || sentByDriver == null
            ? _instance.sentByDriver
            : (sentByDriver as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$conversations<
        TRes>
    implements
        CopyWith$Mutation$UpdateOrderStatus$updateOneOrder$conversations<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderStatus$updateOneOrder$conversations(
      this._res);

  TRes _res;

  call({
    String? id,
    DateTime? sentAt,
    String? requestId,
    String? content,
    Enum$MessageStatus? status,
    bool? sentByDriver,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateDriverStatus {
  factory Variables$Mutation$UpdateDriverStatus({
    required Enum$DriverStatus status,
    String? fcmId,
  }) =>
      Variables$Mutation$UpdateDriverStatus._({
        r'status': status,
        if (fcmId != null) r'fcmId': fcmId,
      });

  Variables$Mutation$UpdateDriverStatus._(this._$data);

  factory Variables$Mutation$UpdateDriverStatus.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$status = data['status'];
    result$data['status'] = fromJson$Enum$DriverStatus((l$status as String));
    if (data.containsKey('fcmId')) {
      final l$fcmId = data['fcmId'];
      result$data['fcmId'] = (l$fcmId as String?);
    }
    return Variables$Mutation$UpdateDriverStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DriverStatus get status => (_$data['status'] as Enum$DriverStatus);

  String? get fcmId => (_$data['fcmId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$status = status;
    result$data['status'] = toJson$Enum$DriverStatus(l$status);
    if (_$data.containsKey('fcmId')) {
      final l$fcmId = fcmId;
      result$data['fcmId'] = l$fcmId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDriverStatus<
          Variables$Mutation$UpdateDriverStatus>
      get copyWith => CopyWith$Variables$Mutation$UpdateDriverStatus(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateDriverStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$fcmId = fcmId;
    final lOther$fcmId = other.fcmId;
    if (_$data.containsKey('fcmId') != other._$data.containsKey('fcmId')) {
      return false;
    }
    if (l$fcmId != lOther$fcmId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$fcmId = fcmId;
    return Object.hashAll([
      l$status,
      _$data.containsKey('fcmId') ? l$fcmId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDriverStatus<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDriverStatus(
    Variables$Mutation$UpdateDriverStatus instance,
    TRes Function(Variables$Mutation$UpdateDriverStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDriverStatus;

  factory CopyWith$Variables$Mutation$UpdateDriverStatus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDriverStatus;

  TRes call({
    Enum$DriverStatus? status,
    String? fcmId,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateDriverStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDriverStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDriverStatus _instance;

  final TRes Function(Variables$Mutation$UpdateDriverStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? fcmId = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateDriverStatus._({
        ..._instance._$data,
        if (status != _undefined && status != null)
          'status': (status as Enum$DriverStatus),
        if (fcmId != _undefined) 'fcmId': (fcmId as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDriverStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDriverStatus(this._res);

  TRes _res;

  call({
    Enum$DriverStatus? status,
    String? fcmId,
  }) =>
      _res;
}

class Mutation$UpdateDriverStatus {
  Mutation$UpdateDriverStatus({
    required this.updateOneDriver,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateDriverStatus.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverStatus(
      updateOneDriver: Mutation$UpdateDriverStatus$updateOneDriver.fromJson(
          (l$updateOneDriver as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateDriverStatus$updateOneDriver updateOneDriver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneDriver = updateOneDriver;
    _resultData['updateOneDriver'] = l$updateOneDriver.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneDriver = updateOneDriver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneDriver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneDriver = updateOneDriver;
    final lOther$updateOneDriver = other.updateOneDriver;
    if (l$updateOneDriver != lOther$updateOneDriver) {
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

extension UtilityExtension$Mutation$UpdateDriverStatus
    on Mutation$UpdateDriverStatus {
  CopyWith$Mutation$UpdateDriverStatus<Mutation$UpdateDriverStatus>
      get copyWith => CopyWith$Mutation$UpdateDriverStatus(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus<TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus(
    Mutation$UpdateDriverStatus instance,
    TRes Function(Mutation$UpdateDriverStatus) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus;

  factory CopyWith$Mutation$UpdateDriverStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus;

  TRes call({
    Mutation$UpdateDriverStatus$updateOneDriver? updateOneDriver,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver<TRes>
      get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateDriverStatus<TRes>
    implements CopyWith$Mutation$UpdateDriverStatus<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus _instance;

  final TRes Function(Mutation$UpdateDriverStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverStatus(
        updateOneDriver: updateOneDriver == _undefined ||
                updateOneDriver == null
            ? _instance.updateOneDriver
            : (updateOneDriver as Mutation$UpdateDriverStatus$updateOneDriver),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver<TRes>
      get updateOneDriver {
    final local$updateOneDriver = _instance.updateOneDriver;
    return CopyWith$Mutation$UpdateDriverStatus$updateOneDriver(
        local$updateOneDriver, (e) => call(updateOneDriver: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus<TRes>
    implements CopyWith$Mutation$UpdateDriverStatus<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus(this._res);

  TRes _res;

  call({
    Mutation$UpdateDriverStatus$updateOneDriver? updateOneDriver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver<TRes>
      get updateOneDriver =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver.stub(_res);
}

const documentNodeMutationUpdateDriverStatus = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDriverStatus'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'DriverStatus'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'fcmId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneDriver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: StringValueNode(
                  value: '1',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'status'),
                    value: VariableNode(name: NameNode(value: 'status')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'notificationPlayerId'),
                    value: VariableNode(name: NameNode(value: 'fcmId')),
                  ),
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ProfileFragment'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
            name: NameNode(value: 'status'),
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
            name: NameNode(value: 'searchDistance'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'countryIso'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'email'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isWalletHidden'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'softRejectionNote'),
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
              FragmentSpreadNode(
                name: NameNode(value: 'MediaFragment'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
            name: NameNode(value: 'wallets'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'WalletFragment'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: 'balance'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'currentOrders'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'CurrentOrder'),
                directives: [],
              ),
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
                name: NameNode(value: 'riderLastSeenMessagesAt'),
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
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'linkMethod'),
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
                      FragmentSpreadNode(
                        name: NameNode(value: 'MediaFragment'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'providerBrand'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'lastFour'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'isEnabled'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'isDefault'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'expiryDate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'holderName'),
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
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'description'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'additionalFee'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'icon'),
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
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'sentAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'requestId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'content'),
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
                    name: NameNode(value: 'sentByDriver'),
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
  fragmentDefinitionProfileFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionWalletFragment,
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionSavedPaymentMethodFragment,
  fragmentDefinitionPoint,
  fragmentDefinitionRideOption,
  fragmentDefinitionChatMessage,
]);
Mutation$UpdateDriverStatus _parserFn$Mutation$UpdateDriverStatus(
        Map<String, dynamic> data) =>
    Mutation$UpdateDriverStatus.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDriverStatus = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateDriverStatus?,
);

class Options$Mutation$UpdateDriverStatus
    extends graphql.MutationOptions<Mutation$UpdateDriverStatus> {
  Options$Mutation$UpdateDriverStatus({
    String? operationName,
    required Variables$Mutation$UpdateDriverStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverStatus>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDriverStatus(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverStatus,
          parserFn: _parserFn$Mutation$UpdateDriverStatus,
        );

  final OnMutationCompleted$Mutation$UpdateDriverStatus? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDriverStatus
    extends graphql.WatchQueryOptions<Mutation$UpdateDriverStatus> {
  WatchOptions$Mutation$UpdateDriverStatus({
    String? operationName,
    required Variables$Mutation$UpdateDriverStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverStatus? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateDriverStatus,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDriverStatus,
        );
}

extension ClientExtension$Mutation$UpdateDriverStatus on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDriverStatus>>
      mutate$UpdateDriverStatus(
              Options$Mutation$UpdateDriverStatus options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateDriverStatus>
      watchMutation$UpdateDriverStatus(
              WatchOptions$Mutation$UpdateDriverStatus options) =>
          this.watchMutation(options);
}

class Mutation$UpdateDriverStatus$updateOneDriver
    implements Fragment$ProfileFragment {
  Mutation$UpdateDriverStatus$updateOneDriver({
    required this.id,
    this.firstName,
    this.lastName,
    required this.status,
    required this.mobileNumber,
    this.searchDistance,
    this.countryIso,
    this.gender,
    this.email,
    required this.isWalletHidden,
    this.softRejectionNote,
    this.media,
    required this.wallets,
    required this.currentOrders,
    this.$__typename = 'Driver',
  });

  factory Mutation$UpdateDriverStatus$updateOneDriver.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$status = json['status'];
    final l$mobileNumber = json['mobileNumber'];
    final l$searchDistance = json['searchDistance'];
    final l$countryIso = json['countryIso'];
    final l$gender = json['gender'];
    final l$email = json['email'];
    final l$isWalletHidden = json['isWalletHidden'];
    final l$softRejectionNote = json['softRejectionNote'];
    final l$media = json['media'];
    final l$wallets = json['wallets'];
    final l$currentOrders = json['currentOrders'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverStatus$updateOneDriver(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      status: fromJson$Enum$DriverStatus((l$status as String)),
      mobileNumber: (l$mobileNumber as String),
      searchDistance: (l$searchDistance as int?),
      countryIso: (l$countryIso as String?),
      gender:
          l$gender == null ? null : fromJson$Enum$Gender((l$gender as String)),
      email: (l$email as String?),
      isWalletHidden: (l$isWalletHidden as bool),
      softRejectionNote: (l$softRejectionNote as String?),
      media: l$media == null
          ? null
          : Mutation$UpdateDriverStatus$updateOneDriver$media.fromJson(
              (l$media as Map<String, dynamic>)),
      wallets: (l$wallets as List<dynamic>)
          .map((e) =>
              Mutation$UpdateDriverStatus$updateOneDriver$wallets.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      currentOrders: (l$currentOrders as List<dynamic>)
          .map((e) => Mutation$UpdateDriverStatus$updateOneDriver$currentOrders
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final Enum$DriverStatus status;

  final String mobileNumber;

  final int? searchDistance;

  final String? countryIso;

  final Enum$Gender? gender;

  final String? email;

  final bool isWalletHidden;

  final String? softRejectionNote;

  final Mutation$UpdateDriverStatus$updateOneDriver$media? media;

  final List<Mutation$UpdateDriverStatus$updateOneDriver$wallets> wallets;

  final List<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders>
      currentOrders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$status = status;
    _resultData['status'] = toJson$Enum$DriverStatus(l$status);
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$searchDistance = searchDistance;
    _resultData['searchDistance'] = l$searchDistance;
    final l$countryIso = countryIso;
    _resultData['countryIso'] = l$countryIso;
    final l$gender = gender;
    _resultData['gender'] =
        l$gender == null ? null : toJson$Enum$Gender(l$gender);
    final l$email = email;
    _resultData['email'] = l$email;
    final l$isWalletHidden = isWalletHidden;
    _resultData['isWalletHidden'] = l$isWalletHidden;
    final l$softRejectionNote = softRejectionNote;
    _resultData['softRejectionNote'] = l$softRejectionNote;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$wallets = wallets;
    _resultData['wallets'] = l$wallets.map((e) => e.toJson()).toList();
    final l$currentOrders = currentOrders;
    _resultData['currentOrders'] =
        l$currentOrders.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$status = status;
    final l$mobileNumber = mobileNumber;
    final l$searchDistance = searchDistance;
    final l$countryIso = countryIso;
    final l$gender = gender;
    final l$email = email;
    final l$isWalletHidden = isWalletHidden;
    final l$softRejectionNote = softRejectionNote;
    final l$media = media;
    final l$wallets = wallets;
    final l$currentOrders = currentOrders;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$status,
      l$mobileNumber,
      l$searchDistance,
      l$countryIso,
      l$gender,
      l$email,
      l$isWalletHidden,
      l$softRejectionNote,
      l$media,
      Object.hashAll(l$wallets.map((v) => v)),
      Object.hashAll(l$currentOrders.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverStatus$updateOneDriver) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$searchDistance = searchDistance;
    final lOther$searchDistance = other.searchDistance;
    if (l$searchDistance != lOther$searchDistance) {
      return false;
    }
    final l$countryIso = countryIso;
    final lOther$countryIso = other.countryIso;
    if (l$countryIso != lOther$countryIso) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$isWalletHidden = isWalletHidden;
    final lOther$isWalletHidden = other.isWalletHidden;
    if (l$isWalletHidden != lOther$isWalletHidden) {
      return false;
    }
    final l$softRejectionNote = softRejectionNote;
    final lOther$softRejectionNote = other.softRejectionNote;
    if (l$softRejectionNote != lOther$softRejectionNote) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$wallets = wallets;
    final lOther$wallets = other.wallets;
    if (l$wallets.length != lOther$wallets.length) {
      return false;
    }
    for (int i = 0; i < l$wallets.length; i++) {
      final l$wallets$entry = l$wallets[i];
      final lOther$wallets$entry = lOther$wallets[i];
      if (l$wallets$entry != lOther$wallets$entry) {
        return false;
      }
    }
    final l$currentOrders = currentOrders;
    final lOther$currentOrders = other.currentOrders;
    if (l$currentOrders.length != lOther$currentOrders.length) {
      return false;
    }
    for (int i = 0; i < l$currentOrders.length; i++) {
      final l$currentOrders$entry = l$currentOrders[i];
      final lOther$currentOrders$entry = lOther$currentOrders[i];
      if (l$currentOrders$entry != lOther$currentOrders$entry) {
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

extension UtilityExtension$Mutation$UpdateDriverStatus$updateOneDriver
    on Mutation$UpdateDriverStatus$updateOneDriver {
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver<
          Mutation$UpdateDriverStatus$updateOneDriver>
      get copyWith => CopyWith$Mutation$UpdateDriverStatus$updateOneDriver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus$updateOneDriver<TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver(
    Mutation$UpdateDriverStatus$updateOneDriver instance,
    TRes Function(Mutation$UpdateDriverStatus$updateOneDriver) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver;

  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    Enum$DriverStatus? status,
    String? mobileNumber,
    int? searchDistance,
    String? countryIso,
    Enum$Gender? gender,
    String? email,
    bool? isWalletHidden,
    String? softRejectionNote,
    Mutation$UpdateDriverStatus$updateOneDriver$media? media,
    List<Mutation$UpdateDriverStatus$updateOneDriver$wallets>? wallets,
    List<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders>?
        currentOrders,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$media<TRes> get media;
  TRes wallets(
      Iterable<Mutation$UpdateDriverStatus$updateOneDriver$wallets> Function(
              Iterable<
                  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$wallets<
                      Mutation$UpdateDriverStatus$updateOneDriver$wallets>>)
          _fn);
  TRes currentOrders(
      Iterable<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders> Function(
              Iterable<
                  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders<
                      Mutation$UpdateDriverStatus$updateOneDriver$currentOrders>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver<TRes>
    implements CopyWith$Mutation$UpdateDriverStatus$updateOneDriver<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus$updateOneDriver _instance;

  final TRes Function(Mutation$UpdateDriverStatus$updateOneDriver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? status = _undefined,
    Object? mobileNumber = _undefined,
    Object? searchDistance = _undefined,
    Object? countryIso = _undefined,
    Object? gender = _undefined,
    Object? email = _undefined,
    Object? isWalletHidden = _undefined,
    Object? softRejectionNote = _undefined,
    Object? media = _undefined,
    Object? wallets = _undefined,
    Object? currentOrders = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverStatus$updateOneDriver(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$DriverStatus),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        searchDistance: searchDistance == _undefined
            ? _instance.searchDistance
            : (searchDistance as int?),
        countryIso: countryIso == _undefined
            ? _instance.countryIso
            : (countryIso as String?),
        gender:
            gender == _undefined ? _instance.gender : (gender as Enum$Gender?),
        email: email == _undefined ? _instance.email : (email as String?),
        isWalletHidden: isWalletHidden == _undefined || isWalletHidden == null
            ? _instance.isWalletHidden
            : (isWalletHidden as bool),
        softRejectionNote: softRejectionNote == _undefined
            ? _instance.softRejectionNote
            : (softRejectionNote as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Mutation$UpdateDriverStatus$updateOneDriver$media?),
        wallets: wallets == _undefined || wallets == null
            ? _instance.wallets
            : (wallets
                as List<Mutation$UpdateDriverStatus$updateOneDriver$wallets>),
        currentOrders: currentOrders == _undefined || currentOrders == null
            ? _instance.currentOrders
            : (currentOrders as List<
                Mutation$UpdateDriverStatus$updateOneDriver$currentOrders>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$media.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$media(
            local$media, (e) => call(media: e));
  }

  TRes wallets(
          Iterable<Mutation$UpdateDriverStatus$updateOneDriver$wallets> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$wallets<
                          Mutation$UpdateDriverStatus$updateOneDriver$wallets>>)
              _fn) =>
      call(
          wallets: _fn(_instance.wallets.map((e) =>
              CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$wallets(
                e,
                (i) => i,
              ))).toList());

  TRes currentOrders(
          Iterable<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders<
                          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders>>)
              _fn) =>
      call(
          currentOrders: _fn(_instance.currentOrders.map((e) =>
              CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver<TRes>
    implements CopyWith$Mutation$UpdateDriverStatus$updateOneDriver<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    Enum$DriverStatus? status,
    String? mobileNumber,
    int? searchDistance,
    String? countryIso,
    Enum$Gender? gender,
    String? email,
    bool? isWalletHidden,
    String? softRejectionNote,
    Mutation$UpdateDriverStatus$updateOneDriver$media? media,
    List<Mutation$UpdateDriverStatus$updateOneDriver$wallets>? wallets,
    List<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders>?
        currentOrders,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$media<TRes> get media =>
      CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$media.stub(_res);

  wallets(_fn) => _res;

  currentOrders(_fn) => _res;
}

class Mutation$UpdateDriverStatus$updateOneDriver$media
    implements Fragment$MediaFragment {
  Mutation$UpdateDriverStatus$updateOneDriver$media({
    required this.id,
    required this.address,
    this.$__typename = 'Media',
  });

  factory Mutation$UpdateDriverStatus$updateOneDriver$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverStatus$updateOneDriver$media(
      id: (l$id as String),
      address: (l$address as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverStatus$updateOneDriver$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$UpdateDriverStatus$updateOneDriver$media
    on Mutation$UpdateDriverStatus$updateOneDriver$media {
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$media<
          Mutation$UpdateDriverStatus$updateOneDriver$media>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$media<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$media(
    Mutation$UpdateDriverStatus$updateOneDriver$media instance,
    TRes Function(Mutation$UpdateDriverStatus$updateOneDriver$media) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$media;

  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$media.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$media;

  TRes call({
    String? id,
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$media<TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$media<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$media(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus$updateOneDriver$media _instance;

  final TRes Function(Mutation$UpdateDriverStatus$updateOneDriver$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverStatus$updateOneDriver$media(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$media<TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$media<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$media(
      this._res);

  TRes _res;

  call({
    String? id,
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateDriverStatus$updateOneDriver$wallets
    implements Fragment$WalletFragment {
  Mutation$UpdateDriverStatus$updateOneDriver$wallets({
    required this.balance,
    required this.currency,
    this.$__typename = 'DriverWallet',
  });

  factory Mutation$UpdateDriverStatus$updateOneDriver$wallets.fromJson(
      Map<String, dynamic> json) {
    final l$balance = json['balance'];
    final l$currency = json['currency'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverStatus$updateOneDriver$wallets(
      balance: (l$balance as num).toDouble(),
      currency: (l$currency as String),
      $__typename: (l$$__typename as String),
    );
  }

  final double balance;

  final String currency;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$balance = balance;
    _resultData['balance'] = l$balance;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$balance = balance;
    final l$currency = currency;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$balance,
      l$currency,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverStatus$updateOneDriver$wallets) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$balance = balance;
    final lOther$balance = other.balance;
    if (l$balance != lOther$balance) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
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

extension UtilityExtension$Mutation$UpdateDriverStatus$updateOneDriver$wallets
    on Mutation$UpdateDriverStatus$updateOneDriver$wallets {
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$wallets<
          Mutation$UpdateDriverStatus$updateOneDriver$wallets>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$wallets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$wallets<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$wallets(
    Mutation$UpdateDriverStatus$updateOneDriver$wallets instance,
    TRes Function(Mutation$UpdateDriverStatus$updateOneDriver$wallets) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$wallets;

  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$wallets.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$wallets;

  TRes call({
    double? balance,
    String? currency,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$wallets<TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$wallets<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$wallets(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus$updateOneDriver$wallets _instance;

  final TRes Function(Mutation$UpdateDriverStatus$updateOneDriver$wallets)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? balance = _undefined,
    Object? currency = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverStatus$updateOneDriver$wallets(
        balance: balance == _undefined || balance == null
            ? _instance.balance
            : (balance as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$wallets<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$wallets<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$wallets(
      this._res);

  TRes _res;

  call({
    double? balance,
    String? currency,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateDriverStatus$updateOneDriver$currentOrders
    implements Fragment$CurrentOrder {
  Mutation$UpdateDriverStatus$updateOneDriver$currentOrders({
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
    required this.riderLastSeenMessagesAt,
  });

  factory Mutation$UpdateDriverStatus$updateOneDriver$currentOrders.fromJson(
      Map<String, dynamic> json) {
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
    final l$riderLastSeenMessagesAt = json['riderLastSeenMessagesAt'];
    return Mutation$UpdateDriverStatus$updateOneDriver$currentOrders(
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
          : Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider
              .fromJson((l$rider as Map<String, dynamic>)),
      paymentGateway: l$paymentGateway == null
          ? null
          : Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway
              .fromJson((l$paymentGateway as Map<String, dynamic>)),
      savedPaymentMethod: l$savedPaymentMethod == null
          ? null
          : Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod
              .fromJson((l$savedPaymentMethod as Map<String, dynamic>)),
      points: (l$points as List<dynamic>)
          .map((e) =>
              Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) =>
              Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      driverDirections: (l$driverDirections as List<dynamic>?)
          ?.map((e) =>
              Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service
              .fromJson((l$service as Map<String, dynamic>)),
      options: (l$options as List<dynamic>)
          .map((e) =>
              Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      conversations: (l$conversations as List<dynamic>)
          .map((e) =>
              Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      riderLastSeenMessagesAt:
          fromGraphQLTimestampToDartDateTime(l$riderLastSeenMessagesAt),
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

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider? rider;

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway?
      paymentGateway;

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod?
      savedPaymentMethod;

  final List<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points>
      points;

  final List<
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions>?
      directions;

  final List<
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections>?
      driverDirections;

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service?
      service;

  final List<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options>
      options;

  final List<
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations>
      conversations;

  final String $__typename;

  final DateTime riderLastSeenMessagesAt;

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
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
    _resultData['riderLastSeenMessagesAt'] =
        fromDartDateTimeToGraphQLTimestamp(l$riderLastSeenMessagesAt);
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
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
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
      l$riderLastSeenMessagesAt,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverStatus$updateOneDriver$currentOrders) ||
        runtimeType != other.runtimeType) {
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
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
    final lOther$riderLastSeenMessagesAt = other.riderLastSeenMessagesAt;
    if (l$riderLastSeenMessagesAt != lOther$riderLastSeenMessagesAt) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders
    on Mutation$UpdateDriverStatus$updateOneDriver$currentOrders {
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders<
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders(
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders instance,
    TRes Function(Mutation$UpdateDriverStatus$updateOneDriver$currentOrders)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders;

  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders;

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
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider? rider,
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway?
        paymentGateway,
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod?
        savedPaymentMethod,
    List<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points>?
        points,
    List<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions>?
        directions,
    List<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections>?
        driverDirections,
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service? service,
    List<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options>?
        options,
    List<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations>?
        conversations,
    String? $__typename,
    DateTime? riderLastSeenMessagesAt,
  });
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider<TRes>
      get rider;
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway<
      TRes> get paymentGateway;
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod<
      TRes> get savedPaymentMethod;
  TRes points(
      Iterable<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points> Function(
              Iterable<
                  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points<
                      Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points>>)
          _fn);
  TRes directions(
      Iterable<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions>? Function(
              Iterable<
                  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions<
                      Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions>>?)
          _fn);
  TRes driverDirections(
      Iterable<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections>? Function(
              Iterable<
                  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections<
                      Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections>>?)
          _fn);
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service<
      TRes> get service;
  TRes options(
      Iterable<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options> Function(
              Iterable<
                  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options<
                      Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options>>)
          _fn);
  TRes conversations(
      Iterable<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations> Function(
              Iterable<
                  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations<
                      Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders _instance;

  final TRes Function(Mutation$UpdateDriverStatus$updateOneDriver$currentOrders)
      _then;

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
    Object? riderLastSeenMessagesAt = _undefined,
  }) =>
      _then(Mutation$UpdateDriverStatus$updateOneDriver$currentOrders(
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
            : (rider
                as Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider?),
        paymentGateway: paymentGateway == _undefined
            ? _instance.paymentGateway
            : (paymentGateway
                as Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway?),
        savedPaymentMethod: savedPaymentMethod == _undefined
            ? _instance.savedPaymentMethod
            : (savedPaymentMethod
                as Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<
                Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points>),
        directions: directions == _undefined
            ? _instance.directions
            : (directions as List<
                Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions>?),
        driverDirections: driverDirections == _undefined
            ? _instance.driverDirections
            : (driverDirections as List<
                Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections>?),
        service: service == _undefined
            ? _instance.service
            : (service
                as Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<
                Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options>),
        conversations: conversations == _undefined || conversations == null
            ? _instance.conversations
            : (conversations as List<
                Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        riderLastSeenMessagesAt: riderLastSeenMessagesAt == _undefined ||
                riderLastSeenMessagesAt == null
            ? _instance.riderLastSeenMessagesAt
            : (riderLastSeenMessagesAt as DateTime),
      ));

  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider<TRes>
      get rider {
    final local$rider = _instance.rider;
    return local$rider == null
        ? CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider(
            local$rider, (e) => call(rider: e));
  }

  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway<
      TRes> get paymentGateway {
    final local$paymentGateway = _instance.paymentGateway;
    return local$paymentGateway == null
        ? CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway(
            local$paymentGateway, (e) => call(paymentGateway: e));
  }

  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod<
      TRes> get savedPaymentMethod {
    final local$savedPaymentMethod = _instance.savedPaymentMethod;
    return local$savedPaymentMethod == null
        ? CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod(
            local$savedPaymentMethod, (e) => call(savedPaymentMethod: e));
  }

  TRes points(
          Iterable<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points<
                          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points>>)
              _fn) =>
      call(
          points: _fn(_instance.points.map((e) =>
              CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points(
                e,
                (i) => i,
              ))).toList());

  TRes directions(
          Iterable<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions>? Function(
                  Iterable<
                      CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions<
                          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions>>?)
              _fn) =>
      call(
          directions: _fn(_instance.directions?.map((e) =>
              CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions(
                e,
                (i) => i,
              )))?.toList());

  TRes driverDirections(
          Iterable<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections>? Function(
                  Iterable<
                      CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections<
                          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections>>?)
              _fn) =>
      call(
          driverDirections: _fn(_instance.driverDirections?.map((e) =>
              CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service<
      TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service(
            local$service, (e) => call(service: e));
  }

  TRes options(
          Iterable<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options<
                          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options>>)
              _fn) =>
      call(
          options: _fn(_instance.options.map((e) =>
              CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options(
                e,
                (i) => i,
              ))).toList());

  TRes conversations(
          Iterable<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations<
                          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations>>)
              _fn) =>
      call(
          conversations: _fn(_instance.conversations.map((e) =>
              CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders(
      this._res);

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
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider? rider,
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway?
        paymentGateway,
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod?
        savedPaymentMethod,
    List<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points>?
        points,
    List<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions>?
        directions,
    List<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections>?
        driverDirections,
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service? service,
    List<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options>?
        options,
    List<Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations>?
        conversations,
    String? $__typename,
    DateTime? riderLastSeenMessagesAt,
  }) =>
      _res;

  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider<TRes>
      get rider =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider
              .stub(_res);

  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway<
          TRes>
      get paymentGateway =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway
              .stub(_res);

  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod<
          TRes>
      get savedPaymentMethod =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod
              .stub(_res);

  points(_fn) => _res;

  directions(_fn) => _res;

  driverDirections(_fn) => _res;

  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service<
          TRes>
      get service =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service
              .stub(_res);

  options(_fn) => _res;

  conversations(_fn) => _res;
}

class Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider
    implements Fragment$CurrentOrder$rider {
  Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider({
    this.firstName,
    this.lastName,
    required this.mobileNumber,
    this.presetAvatarNumber,
    this.media,
    this.$__typename = 'Rider',
  });

  factory Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider.fromJson(
      Map<String, dynamic> json) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$mobileNumber = json['mobileNumber'];
    final l$presetAvatarNumber = json['presetAvatarNumber'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider(
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      mobileNumber: (l$mobileNumber as String),
      presetAvatarNumber: (l$presetAvatarNumber as int?),
      media: l$media == null
          ? null
          : Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media
              .fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? firstName;

  final String? lastName;

  final String mobileNumber;

  final int? presetAvatarNumber;

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media?
      media;

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
    if (!(other
            is Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider) ||
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

extension UtilityExtension$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider
    on Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider {
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider<
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider(
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider instance,
    TRes Function(
            Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider;

  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider;

  TRes call({
    String? firstName,
    String? lastName,
    String? mobileNumber,
    int? presetAvatarNumber,
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media?
        media,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media<
      TRes> get media;
}

class _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider
      _instance;

  final TRes Function(
      Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? mobileNumber = _undefined,
    Object? presetAvatarNumber = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider(
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
            : (media
                as Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media<
      TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider(
      this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? mobileNumber,
    int? presetAvatarNumber,
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media?
        media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media<
          TRes>
      get media =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media
              .stub(_res);
}

class Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media
    implements Fragment$CurrentOrder$rider$media {
  Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media({
    required this.address,
    this.$__typename = 'Media',
  });

  factory Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media(
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
    if (!(other
            is Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media) ||
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

extension UtilityExtension$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media
    on Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media {
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media<
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media(
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media
        instance,
    TRes Function(
            Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media;

  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media;

  TRes call({
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media
      _instance;

  final TRes Function(
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media(
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$rider$media(
      this._res);

  TRes _res;

  call({
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway
    implements Fragment$PaymentGatewayFragment {
  Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway({
    required this.id,
    required this.title,
    required this.type,
    required this.linkMethod,
    this.media,
    this.$__typename = 'PaymentGateway',
  });

  factory Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$linkMethod = json['linkMethod'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway(
      id: (l$id as String),
      title: (l$title as String),
      type: fromJson$Enum$PaymentGatewayType((l$type as String)),
      linkMethod: fromJson$Enum$GatewayLinkMethod((l$linkMethod as String)),
      media: l$media == null
          ? null
          : Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media
              .fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final Enum$PaymentGatewayType type;

  final Enum$GatewayLinkMethod linkMethod;

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media?
      media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$type = type;
    _resultData['type'] = toJson$Enum$PaymentGatewayType(l$type);
    final l$linkMethod = linkMethod;
    _resultData['linkMethod'] = toJson$Enum$GatewayLinkMethod(l$linkMethod);
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$linkMethod = linkMethod;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$linkMethod,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$linkMethod = linkMethod;
    final lOther$linkMethod = other.linkMethod;
    if (l$linkMethod != lOther$linkMethod) {
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

extension UtilityExtension$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway
    on Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway {
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway<
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway(
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway
        instance,
    TRes Function(
            Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway;

  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway;

  TRes call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media?
        media,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media<
      TRes> get media;
}

class _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway
      _instance;

  final TRes Function(
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? linkMethod = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$PaymentGatewayType),
        linkMethod: linkMethod == _undefined || linkMethod == null
            ? _instance.linkMethod
            : (linkMethod as Enum$GatewayLinkMethod),
        media: media == _undefined
            ? _instance.media
            : (media
                as Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media<
      TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway(
      this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media?
        media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media<
          TRes>
      get media =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media
              .stub(_res);
}

class Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media
    implements Fragment$PaymentGatewayFragment$media, Fragment$MediaFragment {
  Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media({
    required this.id,
    required this.address,
    this.$__typename = 'Media',
  });

  factory Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media(
      id: (l$id as String),
      address: (l$address as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media
    on Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media {
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media<
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media(
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media
        instance,
    TRes Function(
            Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media;

  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media;

  TRes call({
    String? id,
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media
      _instance;

  final TRes Function(
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$paymentGateway$media(
      this._res);

  TRes _res;

  call({
    String? id,
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod
    implements Fragment$SavedPaymentMethodFragment {
  Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod({
    required this.id,
    this.providerBrand,
    this.lastFour,
    required this.isEnabled,
    required this.isDefault,
    required this.title,
    this.expiryDate,
    this.holderName,
    this.$__typename = 'SavedPaymentMethod',
  });

  factory Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$providerBrand = json['providerBrand'];
    final l$lastFour = json['lastFour'];
    final l$isEnabled = json['isEnabled'];
    final l$isDefault = json['isDefault'];
    final l$title = json['title'];
    final l$expiryDate = json['expiryDate'];
    final l$holderName = json['holderName'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod(
      id: (l$id as String),
      providerBrand: l$providerBrand == null
          ? null
          : fromJson$Enum$ProviderBrand((l$providerBrand as String)),
      lastFour: (l$lastFour as String?),
      isEnabled: (l$isEnabled as bool),
      isDefault: (l$isDefault as bool),
      title: (l$title as String),
      expiryDate: l$expiryDate == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$expiryDate),
      holderName: (l$holderName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$ProviderBrand? providerBrand;

  final String? lastFour;

  final bool isEnabled;

  final bool isDefault;

  final String title;

  final DateTime? expiryDate;

  final String? holderName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$providerBrand = providerBrand;
    _resultData['providerBrand'] = l$providerBrand == null
        ? null
        : toJson$Enum$ProviderBrand(l$providerBrand);
    final l$lastFour = lastFour;
    _resultData['lastFour'] = l$lastFour;
    final l$isEnabled = isEnabled;
    _resultData['isEnabled'] = l$isEnabled;
    final l$isDefault = isDefault;
    _resultData['isDefault'] = l$isDefault;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$expiryDate = expiryDate;
    _resultData['expiryDate'] = l$expiryDate == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$expiryDate);
    final l$holderName = holderName;
    _resultData['holderName'] = l$holderName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$providerBrand = providerBrand;
    final l$lastFour = lastFour;
    final l$isEnabled = isEnabled;
    final l$isDefault = isDefault;
    final l$title = title;
    final l$expiryDate = expiryDate;
    final l$holderName = holderName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$providerBrand,
      l$lastFour,
      l$isEnabled,
      l$isDefault,
      l$title,
      l$expiryDate,
      l$holderName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$providerBrand = providerBrand;
    final lOther$providerBrand = other.providerBrand;
    if (l$providerBrand != lOther$providerBrand) {
      return false;
    }
    final l$lastFour = lastFour;
    final lOther$lastFour = other.lastFour;
    if (l$lastFour != lOther$lastFour) {
      return false;
    }
    final l$isEnabled = isEnabled;
    final lOther$isEnabled = other.isEnabled;
    if (l$isEnabled != lOther$isEnabled) {
      return false;
    }
    final l$isDefault = isDefault;
    final lOther$isDefault = other.isDefault;
    if (l$isDefault != lOther$isDefault) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$expiryDate = expiryDate;
    final lOther$expiryDate = other.expiryDate;
    if (l$expiryDate != lOther$expiryDate) {
      return false;
    }
    final l$holderName = holderName;
    final lOther$holderName = other.holderName;
    if (l$holderName != lOther$holderName) {
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

extension UtilityExtension$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod
    on Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod {
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod<
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod(
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod
        instance,
    TRes Function(
            Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod;

  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod;

  TRes call({
    String? id,
    Enum$ProviderBrand? providerBrand,
    String? lastFour,
    bool? isEnabled,
    bool? isDefault,
    String? title,
    DateTime? expiryDate,
    String? holderName,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod
      _instance;

  final TRes Function(
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? providerBrand = _undefined,
    Object? lastFour = _undefined,
    Object? isEnabled = _undefined,
    Object? isDefault = _undefined,
    Object? title = _undefined,
    Object? expiryDate = _undefined,
    Object? holderName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        providerBrand: providerBrand == _undefined
            ? _instance.providerBrand
            : (providerBrand as Enum$ProviderBrand?),
        lastFour:
            lastFour == _undefined ? _instance.lastFour : (lastFour as String?),
        isEnabled: isEnabled == _undefined || isEnabled == null
            ? _instance.isEnabled
            : (isEnabled as bool),
        isDefault: isDefault == _undefined || isDefault == null
            ? _instance.isDefault
            : (isDefault as bool),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        expiryDate: expiryDate == _undefined
            ? _instance.expiryDate
            : (expiryDate as DateTime?),
        holderName: holderName == _undefined
            ? _instance.holderName
            : (holderName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$savedPaymentMethod(
      this._res);

  TRes _res;

  call({
    String? id,
    Enum$ProviderBrand? providerBrand,
    String? lastFour,
    bool? isEnabled,
    bool? isDefault,
    String? title,
    DateTime? expiryDate,
    String? holderName,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points
    implements Fragment$Point {
  Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points(
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
    if (!(other
            is Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points) ||
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

extension UtilityExtension$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points
    on Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points {
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points<
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points(
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points instance,
    TRes Function(
            Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points;

  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points
      _instance;

  final TRes Function(
      Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$points(
      this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions
    implements Fragment$CurrentOrder$directions, Fragment$Point {
  Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions(
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
    if (!(other
            is Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions) ||
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

extension UtilityExtension$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions
    on Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions {
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions<
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions(
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions
        instance,
    TRes Function(
            Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions;

  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions
      _instance;

  final TRes Function(
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$directions(
      this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections
    implements Fragment$Point {
  Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections(
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
    if (!(other
            is Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections) ||
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

extension UtilityExtension$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections
    on Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections {
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections<
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections(
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections
        instance,
    TRes Function(
            Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections;

  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections
      _instance;

  final TRes Function(
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$driverDirections(
      this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service
    implements Fragment$CurrentOrder$service {
  Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service({
    required this.name,
    required this.paymentMethod,
    this.$__typename = 'Service',
  });

  factory Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$paymentMethod = json['paymentMethod'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service(
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
    if (!(other
            is Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service) ||
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

extension UtilityExtension$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service
    on Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service {
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service<
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service(
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service instance,
    TRes Function(
            Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service;

  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service;

  TRes call({
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service
      _instance;

  final TRes Function(
      Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? paymentMethod = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service(
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

class _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$service(
      this._res);

  TRes _res;

  call({
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options
    implements Fragment$RideOption {
  Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options({
    required this.id,
    required this.name,
    this.description,
    required this.type,
    this.additionalFee,
    required this.icon,
    this.$__typename = 'ServiceOption',
  });

  factory Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$type = json['type'];
    final l$additionalFee = json['additionalFee'];
    final l$icon = json['icon'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String?),
      type: fromJson$Enum$ServiceOptionType((l$type as String)),
      additionalFee: (l$additionalFee as num?)?.toDouble(),
      icon: fromJson$Enum$ServiceOptionIcon((l$icon as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? description;

  final Enum$ServiceOptionType type;

  final double? additionalFee;

  final Enum$ServiceOptionIcon icon;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$type = type;
    _resultData['type'] = toJson$Enum$ServiceOptionType(l$type);
    final l$additionalFee = additionalFee;
    _resultData['additionalFee'] = l$additionalFee;
    final l$icon = icon;
    _resultData['icon'] = toJson$Enum$ServiceOptionIcon(l$icon);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$type = type;
    final l$additionalFee = additionalFee;
    final l$icon = icon;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$type,
      l$additionalFee,
      l$icon,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$additionalFee = additionalFee;
    final lOther$additionalFee = other.additionalFee;
    if (l$additionalFee != lOther$additionalFee) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
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

extension UtilityExtension$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options
    on Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options {
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options<
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options(
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options instance,
    TRes Function(
            Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options;

  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options;

  TRes call({
    String? id,
    String? name,
    String? description,
    Enum$ServiceOptionType? type,
    double? additionalFee,
    Enum$ServiceOptionIcon? icon,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options
      _instance;

  final TRes Function(
      Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? type = _undefined,
    Object? additionalFee = _undefined,
    Object? icon = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$ServiceOptionType),
        additionalFee: additionalFee == _undefined
            ? _instance.additionalFee
            : (additionalFee as double?),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as Enum$ServiceOptionIcon),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$options(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    Enum$ServiceOptionType? type,
    double? additionalFee,
    Enum$ServiceOptionIcon? icon,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations
    implements Fragment$ChatMessage {
  Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations({
    required this.id,
    required this.sentAt,
    required this.requestId,
    required this.content,
    required this.status,
    required this.sentByDriver,
    this.$__typename = 'OrderMessage',
  });

  factory Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$sentAt = json['sentAt'];
    final l$requestId = json['requestId'];
    final l$content = json['content'];
    final l$status = json['status'];
    final l$sentByDriver = json['sentByDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations(
      id: (l$id as String),
      sentAt: fromGraphQLTimestampToDartDateTime(l$sentAt),
      requestId: (l$requestId as String),
      content: (l$content as String),
      status: fromJson$Enum$MessageStatus((l$status as String)),
      sentByDriver: (l$sentByDriver as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime sentAt;

  final String requestId;

  final String content;

  final Enum$MessageStatus status;

  final bool sentByDriver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$sentAt = sentAt;
    _resultData['sentAt'] = fromDartDateTimeToGraphQLTimestamp(l$sentAt);
    final l$requestId = requestId;
    _resultData['requestId'] = l$requestId;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$status = status;
    _resultData['status'] = toJson$Enum$MessageStatus(l$status);
    final l$sentByDriver = sentByDriver;
    _resultData['sentByDriver'] = l$sentByDriver;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$sentAt = sentAt;
    final l$requestId = requestId;
    final l$content = content;
    final l$status = status;
    final l$sentByDriver = sentByDriver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$sentAt,
      l$requestId,
      l$content,
      l$status,
      l$sentByDriver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$sentAt = sentAt;
    final lOther$sentAt = other.sentAt;
    if (l$sentAt != lOther$sentAt) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (l$requestId != lOther$requestId) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$sentByDriver = sentByDriver;
    final lOther$sentByDriver = other.sentByDriver;
    if (l$sentByDriver != lOther$sentByDriver) {
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

extension UtilityExtension$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations
    on Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations {
  CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations<
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations(
    Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations
        instance,
    TRes Function(
            Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations)
        then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations;

  factory CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations;

  TRes call({
    String? id,
    DateTime? sentAt,
    String? requestId,
    String? content,
    Enum$MessageStatus? status,
    bool? sentByDriver,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations<
            TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations
      _instance;

  final TRes Function(
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? sentAt = _undefined,
    Object? requestId = _undefined,
    Object? content = _undefined,
    Object? status = _undefined,
    Object? sentByDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        sentAt: sentAt == _undefined || sentAt == null
            ? _instance.sentAt
            : (sentAt as DateTime),
        requestId: requestId == _undefined || requestId == null
            ? _instance.requestId
            : (requestId as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$MessageStatus),
        sentByDriver: sentByDriver == _undefined || sentByDriver == null
            ? _instance.sentByDriver
            : (sentByDriver as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus$updateOneDriver$currentOrders$conversations(
      this._res);

  TRes _res;

  call({
    String? id,
    DateTime? sentAt,
    String? requestId,
    String? content,
    Enum$MessageStatus? status,
    bool? sentByDriver,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateDriverFCMId {
  factory Variables$Mutation$UpdateDriverFCMId({String? fcmId}) =>
      Variables$Mutation$UpdateDriverFCMId._({
        if (fcmId != null) r'fcmId': fcmId,
      });

  Variables$Mutation$UpdateDriverFCMId._(this._$data);

  factory Variables$Mutation$UpdateDriverFCMId.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('fcmId')) {
      final l$fcmId = data['fcmId'];
      result$data['fcmId'] = (l$fcmId as String?);
    }
    return Variables$Mutation$UpdateDriverFCMId._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get fcmId => (_$data['fcmId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('fcmId')) {
      final l$fcmId = fcmId;
      result$data['fcmId'] = l$fcmId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDriverFCMId<
          Variables$Mutation$UpdateDriverFCMId>
      get copyWith => CopyWith$Variables$Mutation$UpdateDriverFCMId(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateDriverFCMId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fcmId = fcmId;
    final lOther$fcmId = other.fcmId;
    if (_$data.containsKey('fcmId') != other._$data.containsKey('fcmId')) {
      return false;
    }
    if (l$fcmId != lOther$fcmId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fcmId = fcmId;
    return Object.hashAll([_$data.containsKey('fcmId') ? l$fcmId : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDriverFCMId<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDriverFCMId(
    Variables$Mutation$UpdateDriverFCMId instance,
    TRes Function(Variables$Mutation$UpdateDriverFCMId) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDriverFCMId;

  factory CopyWith$Variables$Mutation$UpdateDriverFCMId.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDriverFCMId;

  TRes call({String? fcmId});
}

class _CopyWithImpl$Variables$Mutation$UpdateDriverFCMId<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverFCMId<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDriverFCMId(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDriverFCMId _instance;

  final TRes Function(Variables$Mutation$UpdateDriverFCMId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? fcmId = _undefined}) =>
      _then(Variables$Mutation$UpdateDriverFCMId._({
        ..._instance._$data,
        if (fcmId != _undefined) 'fcmId': (fcmId as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDriverFCMId<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverFCMId<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDriverFCMId(this._res);

  TRes _res;

  call({String? fcmId}) => _res;
}

class Mutation$UpdateDriverFCMId {
  Mutation$UpdateDriverFCMId({
    required this.updateOneDriver,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateDriverFCMId.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverFCMId(
      updateOneDriver: Mutation$UpdateDriverFCMId$updateOneDriver.fromJson(
          (l$updateOneDriver as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateDriverFCMId$updateOneDriver updateOneDriver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneDriver = updateOneDriver;
    _resultData['updateOneDriver'] = l$updateOneDriver.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneDriver = updateOneDriver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneDriver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverFCMId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneDriver = updateOneDriver;
    final lOther$updateOneDriver = other.updateOneDriver;
    if (l$updateOneDriver != lOther$updateOneDriver) {
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

extension UtilityExtension$Mutation$UpdateDriverFCMId
    on Mutation$UpdateDriverFCMId {
  CopyWith$Mutation$UpdateDriverFCMId<Mutation$UpdateDriverFCMId>
      get copyWith => CopyWith$Mutation$UpdateDriverFCMId(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverFCMId<TRes> {
  factory CopyWith$Mutation$UpdateDriverFCMId(
    Mutation$UpdateDriverFCMId instance,
    TRes Function(Mutation$UpdateDriverFCMId) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverFCMId;

  factory CopyWith$Mutation$UpdateDriverFCMId.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverFCMId;

  TRes call({
    Mutation$UpdateDriverFCMId$updateOneDriver? updateOneDriver,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes> get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateDriverFCMId<TRes>
    implements CopyWith$Mutation$UpdateDriverFCMId<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverFCMId(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverFCMId _instance;

  final TRes Function(Mutation$UpdateDriverFCMId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverFCMId(
        updateOneDriver: updateOneDriver == _undefined ||
                updateOneDriver == null
            ? _instance.updateOneDriver
            : (updateOneDriver as Mutation$UpdateDriverFCMId$updateOneDriver),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes>
      get updateOneDriver {
    final local$updateOneDriver = _instance.updateOneDriver;
    return CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver(
        local$updateOneDriver, (e) => call(updateOneDriver: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateDriverFCMId<TRes>
    implements CopyWith$Mutation$UpdateDriverFCMId<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverFCMId(this._res);

  TRes _res;

  call({
    Mutation$UpdateDriverFCMId$updateOneDriver? updateOneDriver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes>
      get updateOneDriver =>
          CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver.stub(_res);
}

const documentNodeMutationUpdateDriverFCMId = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDriverFCMId'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'fcmId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneDriver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: StringValueNode(
                  value: '1',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'notificationPlayerId'),
                    value: VariableNode(name: NameNode(value: 'fcmId')),
                  )
                ]),
              ),
            ]),
          )
        ],
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
]);
Mutation$UpdateDriverFCMId _parserFn$Mutation$UpdateDriverFCMId(
        Map<String, dynamic> data) =>
    Mutation$UpdateDriverFCMId.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDriverFCMId = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateDriverFCMId?,
);

class Options$Mutation$UpdateDriverFCMId
    extends graphql.MutationOptions<Mutation$UpdateDriverFCMId> {
  Options$Mutation$UpdateDriverFCMId({
    String? operationName,
    Variables$Mutation$UpdateDriverFCMId? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverFCMId? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverFCMId? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverFCMId>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDriverFCMId(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverFCMId,
          parserFn: _parserFn$Mutation$UpdateDriverFCMId,
        );

  final OnMutationCompleted$Mutation$UpdateDriverFCMId? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDriverFCMId
    extends graphql.WatchQueryOptions<Mutation$UpdateDriverFCMId> {
  WatchOptions$Mutation$UpdateDriverFCMId({
    String? operationName,
    Variables$Mutation$UpdateDriverFCMId? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverFCMId? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateDriverFCMId,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDriverFCMId,
        );
}

extension ClientExtension$Mutation$UpdateDriverFCMId on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDriverFCMId>>
      mutate$UpdateDriverFCMId(
              [Options$Mutation$UpdateDriverFCMId? options]) async =>
          await this.mutate(options ?? Options$Mutation$UpdateDriverFCMId());
  graphql.ObservableQuery<
      Mutation$UpdateDriverFCMId> watchMutation$UpdateDriverFCMId(
          [WatchOptions$Mutation$UpdateDriverFCMId? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$UpdateDriverFCMId());
}

class Mutation$UpdateDriverFCMId$updateOneDriver {
  Mutation$UpdateDriverFCMId$updateOneDriver({
    required this.id,
    this.$__typename = 'Driver',
  });

  factory Mutation$UpdateDriverFCMId$updateOneDriver.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverFCMId$updateOneDriver(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverFCMId$updateOneDriver) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$UpdateDriverFCMId$updateOneDriver
    on Mutation$UpdateDriverFCMId$updateOneDriver {
  CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<
          Mutation$UpdateDriverFCMId$updateOneDriver>
      get copyWith => CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes> {
  factory CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver(
    Mutation$UpdateDriverFCMId$updateOneDriver instance,
    TRes Function(Mutation$UpdateDriverFCMId$updateOneDriver) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverFCMId$updateOneDriver;

  factory CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverFCMId$updateOneDriver;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverFCMId$updateOneDriver<TRes>
    implements CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverFCMId$updateOneDriver(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverFCMId$updateOneDriver _instance;

  final TRes Function(Mutation$UpdateDriverFCMId$updateOneDriver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverFCMId$updateOneDriver(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDriverFCMId$updateOneDriver<TRes>
    implements CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverFCMId$updateOneDriver(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateDriverSearchDistance {
  factory Variables$Mutation$UpdateDriverSearchDistance({int? distance}) =>
      Variables$Mutation$UpdateDriverSearchDistance._({
        if (distance != null) r'distance': distance,
      });

  Variables$Mutation$UpdateDriverSearchDistance._(this._$data);

  factory Variables$Mutation$UpdateDriverSearchDistance.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('distance')) {
      final l$distance = data['distance'];
      result$data['distance'] = (l$distance as int?);
    }
    return Variables$Mutation$UpdateDriverSearchDistance._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get distance => (_$data['distance'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('distance')) {
      final l$distance = distance;
      result$data['distance'] = l$distance;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDriverSearchDistance<
          Variables$Mutation$UpdateDriverSearchDistance>
      get copyWith => CopyWith$Variables$Mutation$UpdateDriverSearchDistance(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateDriverSearchDistance) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$distance = distance;
    final lOther$distance = other.distance;
    if (_$data.containsKey('distance') !=
        other._$data.containsKey('distance')) {
      return false;
    }
    if (l$distance != lOther$distance) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$distance = distance;
    return Object.hashAll(
        [_$data.containsKey('distance') ? l$distance : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDriverSearchDistance<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDriverSearchDistance(
    Variables$Mutation$UpdateDriverSearchDistance instance,
    TRes Function(Variables$Mutation$UpdateDriverSearchDistance) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDriverSearchDistance;

  factory CopyWith$Variables$Mutation$UpdateDriverSearchDistance.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDriverSearchDistance;

  TRes call({int? distance});
}

class _CopyWithImpl$Variables$Mutation$UpdateDriverSearchDistance<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverSearchDistance<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDriverSearchDistance(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDriverSearchDistance _instance;

  final TRes Function(Variables$Mutation$UpdateDriverSearchDistance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? distance = _undefined}) =>
      _then(Variables$Mutation$UpdateDriverSearchDistance._({
        ..._instance._$data,
        if (distance != _undefined) 'distance': (distance as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDriverSearchDistance<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverSearchDistance<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDriverSearchDistance(this._res);

  TRes _res;

  call({int? distance}) => _res;
}

class Mutation$UpdateDriverSearchDistance {
  Mutation$UpdateDriverSearchDistance({
    required this.updateOneDriver,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateDriverSearchDistance.fromJson(
      Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverSearchDistance(
      updateOneDriver: Fragment$ProfileFragment.fromJson(
          (l$updateOneDriver as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ProfileFragment updateOneDriver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneDriver = updateOneDriver;
    _resultData['updateOneDriver'] = l$updateOneDriver.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneDriver = updateOneDriver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneDriver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverSearchDistance) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneDriver = updateOneDriver;
    final lOther$updateOneDriver = other.updateOneDriver;
    if (l$updateOneDriver != lOther$updateOneDriver) {
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

extension UtilityExtension$Mutation$UpdateDriverSearchDistance
    on Mutation$UpdateDriverSearchDistance {
  CopyWith$Mutation$UpdateDriverSearchDistance<
          Mutation$UpdateDriverSearchDistance>
      get copyWith => CopyWith$Mutation$UpdateDriverSearchDistance(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverSearchDistance<TRes> {
  factory CopyWith$Mutation$UpdateDriverSearchDistance(
    Mutation$UpdateDriverSearchDistance instance,
    TRes Function(Mutation$UpdateDriverSearchDistance) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverSearchDistance;

  factory CopyWith$Mutation$UpdateDriverSearchDistance.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance;

  TRes call({
    Fragment$ProfileFragment? updateOneDriver,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFragment<TRes> get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateDriverSearchDistance<TRes>
    implements CopyWith$Mutation$UpdateDriverSearchDistance<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverSearchDistance(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverSearchDistance _instance;

  final TRes Function(Mutation$UpdateDriverSearchDistance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverSearchDistance(
        updateOneDriver:
            updateOneDriver == _undefined || updateOneDriver == null
                ? _instance.updateOneDriver
                : (updateOneDriver as Fragment$ProfileFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProfileFragment<TRes> get updateOneDriver {
    final local$updateOneDriver = _instance.updateOneDriver;
    return CopyWith$Fragment$ProfileFragment(
        local$updateOneDriver, (e) => call(updateOneDriver: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance<TRes>
    implements CopyWith$Mutation$UpdateDriverSearchDistance<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance(this._res);

  TRes _res;

  call({
    Fragment$ProfileFragment? updateOneDriver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFragment<TRes> get updateOneDriver =>
      CopyWith$Fragment$ProfileFragment.stub(_res);
}

const documentNodeMutationUpdateDriverSearchDistance =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDriverSearchDistance'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'distance')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneDriver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: StringValueNode(
                  value: '1',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'searchDistance'),
                    value: VariableNode(name: NameNode(value: 'distance')),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ProfileFragment'),
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
  ),
  fragmentDefinitionProfileFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionWalletFragment,
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionSavedPaymentMethodFragment,
  fragmentDefinitionPoint,
  fragmentDefinitionRideOption,
  fragmentDefinitionChatMessage,
]);
Mutation$UpdateDriverSearchDistance
    _parserFn$Mutation$UpdateDriverSearchDistance(Map<String, dynamic> data) =>
        Mutation$UpdateDriverSearchDistance.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDriverSearchDistance = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateDriverSearchDistance?,
);

class Options$Mutation$UpdateDriverSearchDistance
    extends graphql.MutationOptions<Mutation$UpdateDriverSearchDistance> {
  Options$Mutation$UpdateDriverSearchDistance({
    String? operationName,
    Variables$Mutation$UpdateDriverSearchDistance? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverSearchDistance? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverSearchDistance? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverSearchDistance>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDriverSearchDistance(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverSearchDistance,
          parserFn: _parserFn$Mutation$UpdateDriverSearchDistance,
        );

  final OnMutationCompleted$Mutation$UpdateDriverSearchDistance?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDriverSearchDistance
    extends graphql.WatchQueryOptions<Mutation$UpdateDriverSearchDistance> {
  WatchOptions$Mutation$UpdateDriverSearchDistance({
    String? operationName,
    Variables$Mutation$UpdateDriverSearchDistance? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverSearchDistance? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateDriverSearchDistance,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDriverSearchDistance,
        );
}

extension ClientExtension$Mutation$UpdateDriverSearchDistance
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDriverSearchDistance>>
      mutate$UpdateDriverSearchDistance(
              [Options$Mutation$UpdateDriverSearchDistance? options]) async =>
          await this
              .mutate(options ?? Options$Mutation$UpdateDriverSearchDistance());
  graphql.ObservableQuery<Mutation$UpdateDriverSearchDistance>
      watchMutation$UpdateDriverSearchDistance(
              [WatchOptions$Mutation$UpdateDriverSearchDistance? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$UpdateDriverSearchDistance());
}

class Query$CancelReasons {
  Query$CancelReasons({
    required this.orderCancelReasons,
    this.$__typename = 'Query',
  });

  factory Query$CancelReasons.fromJson(Map<String, dynamic> json) {
    final l$orderCancelReasons = json['orderCancelReasons'];
    final l$$__typename = json['__typename'];
    return Query$CancelReasons(
      orderCancelReasons: (l$orderCancelReasons as List<dynamic>)
          .map((e) => Query$CancelReasons$orderCancelReasons.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$CancelReasons$orderCancelReasons> orderCancelReasons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderCancelReasons = orderCancelReasons;
    _resultData['orderCancelReasons'] =
        l$orderCancelReasons.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderCancelReasons = orderCancelReasons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$orderCancelReasons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CancelReasons) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderCancelReasons = orderCancelReasons;
    final lOther$orderCancelReasons = other.orderCancelReasons;
    if (l$orderCancelReasons.length != lOther$orderCancelReasons.length) {
      return false;
    }
    for (int i = 0; i < l$orderCancelReasons.length; i++) {
      final l$orderCancelReasons$entry = l$orderCancelReasons[i];
      final lOther$orderCancelReasons$entry = lOther$orderCancelReasons[i];
      if (l$orderCancelReasons$entry != lOther$orderCancelReasons$entry) {
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

extension UtilityExtension$Query$CancelReasons on Query$CancelReasons {
  CopyWith$Query$CancelReasons<Query$CancelReasons> get copyWith =>
      CopyWith$Query$CancelReasons(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CancelReasons<TRes> {
  factory CopyWith$Query$CancelReasons(
    Query$CancelReasons instance,
    TRes Function(Query$CancelReasons) then,
  ) = _CopyWithImpl$Query$CancelReasons;

  factory CopyWith$Query$CancelReasons.stub(TRes res) =
      _CopyWithStubImpl$Query$CancelReasons;

  TRes call({
    List<Query$CancelReasons$orderCancelReasons>? orderCancelReasons,
    String? $__typename,
  });
  TRes orderCancelReasons(
      Iterable<Query$CancelReasons$orderCancelReasons> Function(
              Iterable<
                  CopyWith$Query$CancelReasons$orderCancelReasons<
                      Query$CancelReasons$orderCancelReasons>>)
          _fn);
}

class _CopyWithImpl$Query$CancelReasons<TRes>
    implements CopyWith$Query$CancelReasons<TRes> {
  _CopyWithImpl$Query$CancelReasons(
    this._instance,
    this._then,
  );

  final Query$CancelReasons _instance;

  final TRes Function(Query$CancelReasons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderCancelReasons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CancelReasons(
        orderCancelReasons:
            orderCancelReasons == _undefined || orderCancelReasons == null
                ? _instance.orderCancelReasons
                : (orderCancelReasons
                    as List<Query$CancelReasons$orderCancelReasons>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes orderCancelReasons(
          Iterable<Query$CancelReasons$orderCancelReasons> Function(
                  Iterable<
                      CopyWith$Query$CancelReasons$orderCancelReasons<
                          Query$CancelReasons$orderCancelReasons>>)
              _fn) =>
      call(
          orderCancelReasons: _fn(_instance.orderCancelReasons
              .map((e) => CopyWith$Query$CancelReasons$orderCancelReasons(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$CancelReasons<TRes>
    implements CopyWith$Query$CancelReasons<TRes> {
  _CopyWithStubImpl$Query$CancelReasons(this._res);

  TRes _res;

  call({
    List<Query$CancelReasons$orderCancelReasons>? orderCancelReasons,
    String? $__typename,
  }) =>
      _res;

  orderCancelReasons(_fn) => _res;
}

const documentNodeQueryCancelReasons = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CancelReasons'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderCancelReasons'),
        alias: null,
        arguments: [],
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
            name: NameNode(value: 'title'),
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
]);
Query$CancelReasons _parserFn$Query$CancelReasons(Map<String, dynamic> data) =>
    Query$CancelReasons.fromJson(data);
typedef OnQueryComplete$Query$CancelReasons = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$CancelReasons?,
);

class Options$Query$CancelReasons
    extends graphql.QueryOptions<Query$CancelReasons> {
  Options$Query$CancelReasons({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CancelReasons? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CancelReasons? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$CancelReasons(data),
                  ),
          onError: onError,
          document: documentNodeQueryCancelReasons,
          parserFn: _parserFn$Query$CancelReasons,
        );

  final OnQueryComplete$Query$CancelReasons? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$CancelReasons
    extends graphql.WatchQueryOptions<Query$CancelReasons> {
  WatchOptions$Query$CancelReasons({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CancelReasons? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryCancelReasons,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$CancelReasons,
        );
}

class FetchMoreOptions$Query$CancelReasons extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CancelReasons(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryCancelReasons,
        );
}

extension ClientExtension$Query$CancelReasons on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CancelReasons>> query$CancelReasons(
          [Options$Query$CancelReasons? options]) async =>
      await this.query(options ?? Options$Query$CancelReasons());
  graphql.ObservableQuery<Query$CancelReasons> watchQuery$CancelReasons(
          [WatchOptions$Query$CancelReasons? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$CancelReasons());
  void writeQuery$CancelReasons({
    required Query$CancelReasons data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryCancelReasons)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$CancelReasons? readQuery$CancelReasons({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryCancelReasons)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CancelReasons.fromJson(result);
  }
}

class Query$CancelReasons$orderCancelReasons {
  Query$CancelReasons$orderCancelReasons({
    required this.id,
    required this.title,
    this.$__typename = 'OrderCancelReason',
  });

  factory Query$CancelReasons$orderCancelReasons.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$CancelReasons$orderCancelReasons(
      id: (l$id as String),
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CancelReasons$orderCancelReasons) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$CancelReasons$orderCancelReasons
    on Query$CancelReasons$orderCancelReasons {
  CopyWith$Query$CancelReasons$orderCancelReasons<
          Query$CancelReasons$orderCancelReasons>
      get copyWith => CopyWith$Query$CancelReasons$orderCancelReasons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CancelReasons$orderCancelReasons<TRes> {
  factory CopyWith$Query$CancelReasons$orderCancelReasons(
    Query$CancelReasons$orderCancelReasons instance,
    TRes Function(Query$CancelReasons$orderCancelReasons) then,
  ) = _CopyWithImpl$Query$CancelReasons$orderCancelReasons;

  factory CopyWith$Query$CancelReasons$orderCancelReasons.stub(TRes res) =
      _CopyWithStubImpl$Query$CancelReasons$orderCancelReasons;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CancelReasons$orderCancelReasons<TRes>
    implements CopyWith$Query$CancelReasons$orderCancelReasons<TRes> {
  _CopyWithImpl$Query$CancelReasons$orderCancelReasons(
    this._instance,
    this._then,
  );

  final Query$CancelReasons$orderCancelReasons _instance;

  final TRes Function(Query$CancelReasons$orderCancelReasons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CancelReasons$orderCancelReasons(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$CancelReasons$orderCancelReasons<TRes>
    implements CopyWith$Query$CancelReasons$orderCancelReasons<TRes> {
  _CopyWithStubImpl$Query$CancelReasons$orderCancelReasons(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$SubmitReview {
  factory Variables$Mutation$SubmitReview(
          {required Input$RiderReviewInput input}) =>
      Variables$Mutation$SubmitReview._({
        r'input': input,
      });

  Variables$Mutation$SubmitReview._(this._$data);

  factory Variables$Mutation$SubmitReview.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$RiderReviewInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$SubmitReview._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$RiderReviewInput get input =>
      (_$data['input'] as Input$RiderReviewInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SubmitReview<Variables$Mutation$SubmitReview>
      get copyWith => CopyWith$Variables$Mutation$SubmitReview(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SubmitReview) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$SubmitReview<TRes> {
  factory CopyWith$Variables$Mutation$SubmitReview(
    Variables$Mutation$SubmitReview instance,
    TRes Function(Variables$Mutation$SubmitReview) then,
  ) = _CopyWithImpl$Variables$Mutation$SubmitReview;

  factory CopyWith$Variables$Mutation$SubmitReview.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SubmitReview;

  TRes call({Input$RiderReviewInput? input});
}

class _CopyWithImpl$Variables$Mutation$SubmitReview<TRes>
    implements CopyWith$Variables$Mutation$SubmitReview<TRes> {
  _CopyWithImpl$Variables$Mutation$SubmitReview(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SubmitReview _instance;

  final TRes Function(Variables$Mutation$SubmitReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$SubmitReview._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$RiderReviewInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SubmitReview<TRes>
    implements CopyWith$Variables$Mutation$SubmitReview<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SubmitReview(this._res);

  TRes _res;

  call({Input$RiderReviewInput? input}) => _res;
}

class Mutation$SubmitReview {
  Mutation$SubmitReview({
    required this.submitReview,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SubmitReview.fromJson(Map<String, dynamic> json) {
    final l$submitReview = json['submitReview'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitReview(
      submitReview: Mutation$SubmitReview$submitReview.fromJson(
          (l$submitReview as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SubmitReview$submitReview submitReview;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$submitReview = submitReview;
    _resultData['submitReview'] = l$submitReview.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$submitReview = submitReview;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$submitReview,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SubmitReview) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$submitReview = submitReview;
    final lOther$submitReview = other.submitReview;
    if (l$submitReview != lOther$submitReview) {
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

extension UtilityExtension$Mutation$SubmitReview on Mutation$SubmitReview {
  CopyWith$Mutation$SubmitReview<Mutation$SubmitReview> get copyWith =>
      CopyWith$Mutation$SubmitReview(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SubmitReview<TRes> {
  factory CopyWith$Mutation$SubmitReview(
    Mutation$SubmitReview instance,
    TRes Function(Mutation$SubmitReview) then,
  ) = _CopyWithImpl$Mutation$SubmitReview;

  factory CopyWith$Mutation$SubmitReview.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitReview;

  TRes call({
    Mutation$SubmitReview$submitReview? submitReview,
    String? $__typename,
  });
  CopyWith$Mutation$SubmitReview$submitReview<TRes> get submitReview;
}

class _CopyWithImpl$Mutation$SubmitReview<TRes>
    implements CopyWith$Mutation$SubmitReview<TRes> {
  _CopyWithImpl$Mutation$SubmitReview(
    this._instance,
    this._then,
  );

  final Mutation$SubmitReview _instance;

  final TRes Function(Mutation$SubmitReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? submitReview = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitReview(
        submitReview: submitReview == _undefined || submitReview == null
            ? _instance.submitReview
            : (submitReview as Mutation$SubmitReview$submitReview),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SubmitReview$submitReview<TRes> get submitReview {
    final local$submitReview = _instance.submitReview;
    return CopyWith$Mutation$SubmitReview$submitReview(
        local$submitReview, (e) => call(submitReview: e));
  }
}

class _CopyWithStubImpl$Mutation$SubmitReview<TRes>
    implements CopyWith$Mutation$SubmitReview<TRes> {
  _CopyWithStubImpl$Mutation$SubmitReview(this._res);

  TRes _res;

  call({
    Mutation$SubmitReview$submitReview? submitReview,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SubmitReview$submitReview<TRes> get submitReview =>
      CopyWith$Mutation$SubmitReview$submitReview.stub(_res);
}

const documentNodeMutationSubmitReview = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SubmitReview'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'RiderReviewInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'submitReview'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'CurrentOrder'),
            directives: [],
          ),
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
            name: NameNode(value: 'riderLastSeenMessagesAt'),
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
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'type'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'linkMethod'),
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
                  FragmentSpreadNode(
                    name: NameNode(value: 'MediaFragment'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
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
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'providerBrand'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lastFour'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isEnabled'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isDefault'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'expiryDate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'holderName'),
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
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'type'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'additionalFee'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'icon'),
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
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'sentAt'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'requestId'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'content'),
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
                name: NameNode(value: 'sentByDriver'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionSavedPaymentMethodFragment,
  fragmentDefinitionPoint,
  fragmentDefinitionRideOption,
  fragmentDefinitionChatMessage,
]);
Mutation$SubmitReview _parserFn$Mutation$SubmitReview(
        Map<String, dynamic> data) =>
    Mutation$SubmitReview.fromJson(data);
typedef OnMutationCompleted$Mutation$SubmitReview = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SubmitReview?,
);

class Options$Mutation$SubmitReview
    extends graphql.MutationOptions<Mutation$SubmitReview> {
  Options$Mutation$SubmitReview({
    String? operationName,
    required Variables$Mutation$SubmitReview variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitReview? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SubmitReview? onCompleted,
    graphql.OnMutationUpdate<Mutation$SubmitReview>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$SubmitReview(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSubmitReview,
          parserFn: _parserFn$Mutation$SubmitReview,
        );

  final OnMutationCompleted$Mutation$SubmitReview? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SubmitReview
    extends graphql.WatchQueryOptions<Mutation$SubmitReview> {
  WatchOptions$Mutation$SubmitReview({
    String? operationName,
    required Variables$Mutation$SubmitReview variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitReview? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationSubmitReview,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SubmitReview,
        );
}

extension ClientExtension$Mutation$SubmitReview on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SubmitReview>> mutate$SubmitReview(
          Options$Mutation$SubmitReview options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SubmitReview> watchMutation$SubmitReview(
          WatchOptions$Mutation$SubmitReview options) =>
      this.watchMutation(options);
}

class Mutation$SubmitReview$submitReview implements Fragment$CurrentOrder {
  Mutation$SubmitReview$submitReview({
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
    required this.riderLastSeenMessagesAt,
  });

  factory Mutation$SubmitReview$submitReview.fromJson(
      Map<String, dynamic> json) {
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
    final l$riderLastSeenMessagesAt = json['riderLastSeenMessagesAt'];
    return Mutation$SubmitReview$submitReview(
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
          : Mutation$SubmitReview$submitReview$rider.fromJson(
              (l$rider as Map<String, dynamic>)),
      paymentGateway: l$paymentGateway == null
          ? null
          : Mutation$SubmitReview$submitReview$paymentGateway.fromJson(
              (l$paymentGateway as Map<String, dynamic>)),
      savedPaymentMethod: l$savedPaymentMethod == null
          ? null
          : Mutation$SubmitReview$submitReview$savedPaymentMethod.fromJson(
              (l$savedPaymentMethod as Map<String, dynamic>)),
      points: (l$points as List<dynamic>)
          .map((e) => Mutation$SubmitReview$submitReview$points.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) => Mutation$SubmitReview$submitReview$directions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      driverDirections: (l$driverDirections as List<dynamic>?)
          ?.map((e) =>
              Mutation$SubmitReview$submitReview$driverDirections.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Mutation$SubmitReview$submitReview$service.fromJson(
              (l$service as Map<String, dynamic>)),
      options: (l$options as List<dynamic>)
          .map((e) => Mutation$SubmitReview$submitReview$options.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      conversations: (l$conversations as List<dynamic>)
          .map((e) => Mutation$SubmitReview$submitReview$conversations.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      riderLastSeenMessagesAt:
          fromGraphQLTimestampToDartDateTime(l$riderLastSeenMessagesAt),
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

  final Mutation$SubmitReview$submitReview$rider? rider;

  final Mutation$SubmitReview$submitReview$paymentGateway? paymentGateway;

  final Mutation$SubmitReview$submitReview$savedPaymentMethod?
      savedPaymentMethod;

  final List<Mutation$SubmitReview$submitReview$points> points;

  final List<Mutation$SubmitReview$submitReview$directions>? directions;

  final List<Mutation$SubmitReview$submitReview$driverDirections>?
      driverDirections;

  final Mutation$SubmitReview$submitReview$service? service;

  final List<Mutation$SubmitReview$submitReview$options> options;

  final List<Mutation$SubmitReview$submitReview$conversations> conversations;

  final String $__typename;

  final DateTime riderLastSeenMessagesAt;

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
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
    _resultData['riderLastSeenMessagesAt'] =
        fromDartDateTimeToGraphQLTimestamp(l$riderLastSeenMessagesAt);
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
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
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
      l$riderLastSeenMessagesAt,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SubmitReview$submitReview) ||
        runtimeType != other.runtimeType) {
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
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
    final lOther$riderLastSeenMessagesAt = other.riderLastSeenMessagesAt;
    if (l$riderLastSeenMessagesAt != lOther$riderLastSeenMessagesAt) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SubmitReview$submitReview
    on Mutation$SubmitReview$submitReview {
  CopyWith$Mutation$SubmitReview$submitReview<
          Mutation$SubmitReview$submitReview>
      get copyWith => CopyWith$Mutation$SubmitReview$submitReview(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitReview$submitReview<TRes> {
  factory CopyWith$Mutation$SubmitReview$submitReview(
    Mutation$SubmitReview$submitReview instance,
    TRes Function(Mutation$SubmitReview$submitReview) then,
  ) = _CopyWithImpl$Mutation$SubmitReview$submitReview;

  factory CopyWith$Mutation$SubmitReview$submitReview.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitReview$submitReview;

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
    Mutation$SubmitReview$submitReview$rider? rider,
    Mutation$SubmitReview$submitReview$paymentGateway? paymentGateway,
    Mutation$SubmitReview$submitReview$savedPaymentMethod? savedPaymentMethod,
    List<Mutation$SubmitReview$submitReview$points>? points,
    List<Mutation$SubmitReview$submitReview$directions>? directions,
    List<Mutation$SubmitReview$submitReview$driverDirections>? driverDirections,
    Mutation$SubmitReview$submitReview$service? service,
    List<Mutation$SubmitReview$submitReview$options>? options,
    List<Mutation$SubmitReview$submitReview$conversations>? conversations,
    String? $__typename,
    DateTime? riderLastSeenMessagesAt,
  });
  CopyWith$Mutation$SubmitReview$submitReview$rider<TRes> get rider;
  CopyWith$Mutation$SubmitReview$submitReview$paymentGateway<TRes>
      get paymentGateway;
  CopyWith$Mutation$SubmitReview$submitReview$savedPaymentMethod<TRes>
      get savedPaymentMethod;
  TRes points(
      Iterable<Mutation$SubmitReview$submitReview$points> Function(
              Iterable<
                  CopyWith$Mutation$SubmitReview$submitReview$points<
                      Mutation$SubmitReview$submitReview$points>>)
          _fn);
  TRes directions(
      Iterable<Mutation$SubmitReview$submitReview$directions>? Function(
              Iterable<
                  CopyWith$Mutation$SubmitReview$submitReview$directions<
                      Mutation$SubmitReview$submitReview$directions>>?)
          _fn);
  TRes driverDirections(
      Iterable<Mutation$SubmitReview$submitReview$driverDirections>? Function(
              Iterable<
                  CopyWith$Mutation$SubmitReview$submitReview$driverDirections<
                      Mutation$SubmitReview$submitReview$driverDirections>>?)
          _fn);
  CopyWith$Mutation$SubmitReview$submitReview$service<TRes> get service;
  TRes options(
      Iterable<Mutation$SubmitReview$submitReview$options> Function(
              Iterable<
                  CopyWith$Mutation$SubmitReview$submitReview$options<
                      Mutation$SubmitReview$submitReview$options>>)
          _fn);
  TRes conversations(
      Iterable<Mutation$SubmitReview$submitReview$conversations> Function(
              Iterable<
                  CopyWith$Mutation$SubmitReview$submitReview$conversations<
                      Mutation$SubmitReview$submitReview$conversations>>)
          _fn);
}

class _CopyWithImpl$Mutation$SubmitReview$submitReview<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview<TRes> {
  _CopyWithImpl$Mutation$SubmitReview$submitReview(
    this._instance,
    this._then,
  );

  final Mutation$SubmitReview$submitReview _instance;

  final TRes Function(Mutation$SubmitReview$submitReview) _then;

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
    Object? riderLastSeenMessagesAt = _undefined,
  }) =>
      _then(Mutation$SubmitReview$submitReview(
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
            : (rider as Mutation$SubmitReview$submitReview$rider?),
        paymentGateway: paymentGateway == _undefined
            ? _instance.paymentGateway
            : (paymentGateway
                as Mutation$SubmitReview$submitReview$paymentGateway?),
        savedPaymentMethod: savedPaymentMethod == _undefined
            ? _instance.savedPaymentMethod
            : (savedPaymentMethod
                as Mutation$SubmitReview$submitReview$savedPaymentMethod?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Mutation$SubmitReview$submitReview$points>),
        directions: directions == _undefined
            ? _instance.directions
            : (directions
                as List<Mutation$SubmitReview$submitReview$directions>?),
        driverDirections: driverDirections == _undefined
            ? _instance.driverDirections
            : (driverDirections
                as List<Mutation$SubmitReview$submitReview$driverDirections>?),
        service: service == _undefined
            ? _instance.service
            : (service as Mutation$SubmitReview$submitReview$service?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<Mutation$SubmitReview$submitReview$options>),
        conversations: conversations == _undefined || conversations == null
            ? _instance.conversations
            : (conversations
                as List<Mutation$SubmitReview$submitReview$conversations>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        riderLastSeenMessagesAt: riderLastSeenMessagesAt == _undefined ||
                riderLastSeenMessagesAt == null
            ? _instance.riderLastSeenMessagesAt
            : (riderLastSeenMessagesAt as DateTime),
      ));

  CopyWith$Mutation$SubmitReview$submitReview$rider<TRes> get rider {
    final local$rider = _instance.rider;
    return local$rider == null
        ? CopyWith$Mutation$SubmitReview$submitReview$rider.stub(
            _then(_instance))
        : CopyWith$Mutation$SubmitReview$submitReview$rider(
            local$rider, (e) => call(rider: e));
  }

  CopyWith$Mutation$SubmitReview$submitReview$paymentGateway<TRes>
      get paymentGateway {
    final local$paymentGateway = _instance.paymentGateway;
    return local$paymentGateway == null
        ? CopyWith$Mutation$SubmitReview$submitReview$paymentGateway.stub(
            _then(_instance))
        : CopyWith$Mutation$SubmitReview$submitReview$paymentGateway(
            local$paymentGateway, (e) => call(paymentGateway: e));
  }

  CopyWith$Mutation$SubmitReview$submitReview$savedPaymentMethod<TRes>
      get savedPaymentMethod {
    final local$savedPaymentMethod = _instance.savedPaymentMethod;
    return local$savedPaymentMethod == null
        ? CopyWith$Mutation$SubmitReview$submitReview$savedPaymentMethod.stub(
            _then(_instance))
        : CopyWith$Mutation$SubmitReview$submitReview$savedPaymentMethod(
            local$savedPaymentMethod, (e) => call(savedPaymentMethod: e));
  }

  TRes points(
          Iterable<Mutation$SubmitReview$submitReview$points> Function(
                  Iterable<
                      CopyWith$Mutation$SubmitReview$submitReview$points<
                          Mutation$SubmitReview$submitReview$points>>)
              _fn) =>
      call(
          points: _fn(_instance.points
              .map((e) => CopyWith$Mutation$SubmitReview$submitReview$points(
                    e,
                    (i) => i,
                  ))).toList());

  TRes directions(
          Iterable<Mutation$SubmitReview$submitReview$directions>? Function(
                  Iterable<
                      CopyWith$Mutation$SubmitReview$submitReview$directions<
                          Mutation$SubmitReview$submitReview$directions>>?)
              _fn) =>
      call(
          directions: _fn(_instance.directions?.map(
              (e) => CopyWith$Mutation$SubmitReview$submitReview$directions(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes driverDirections(
          Iterable<Mutation$SubmitReview$submitReview$driverDirections>? Function(
                  Iterable<
                      CopyWith$Mutation$SubmitReview$submitReview$driverDirections<
                          Mutation$SubmitReview$submitReview$driverDirections>>?)
              _fn) =>
      call(
          driverDirections: _fn(_instance.driverDirections?.map((e) =>
              CopyWith$Mutation$SubmitReview$submitReview$driverDirections(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Mutation$SubmitReview$submitReview$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Mutation$SubmitReview$submitReview$service.stub(
            _then(_instance))
        : CopyWith$Mutation$SubmitReview$submitReview$service(
            local$service, (e) => call(service: e));
  }

  TRes options(
          Iterable<Mutation$SubmitReview$submitReview$options> Function(
                  Iterable<
                      CopyWith$Mutation$SubmitReview$submitReview$options<
                          Mutation$SubmitReview$submitReview$options>>)
              _fn) =>
      call(
          options: _fn(_instance.options
              .map((e) => CopyWith$Mutation$SubmitReview$submitReview$options(
                    e,
                    (i) => i,
                  ))).toList());

  TRes conversations(
          Iterable<Mutation$SubmitReview$submitReview$conversations> Function(
                  Iterable<
                      CopyWith$Mutation$SubmitReview$submitReview$conversations<
                          Mutation$SubmitReview$submitReview$conversations>>)
              _fn) =>
      call(
          conversations: _fn(_instance.conversations.map(
              (e) => CopyWith$Mutation$SubmitReview$submitReview$conversations(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$SubmitReview$submitReview<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview<TRes> {
  _CopyWithStubImpl$Mutation$SubmitReview$submitReview(this._res);

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
    Mutation$SubmitReview$submitReview$rider? rider,
    Mutation$SubmitReview$submitReview$paymentGateway? paymentGateway,
    Mutation$SubmitReview$submitReview$savedPaymentMethod? savedPaymentMethod,
    List<Mutation$SubmitReview$submitReview$points>? points,
    List<Mutation$SubmitReview$submitReview$directions>? directions,
    List<Mutation$SubmitReview$submitReview$driverDirections>? driverDirections,
    Mutation$SubmitReview$submitReview$service? service,
    List<Mutation$SubmitReview$submitReview$options>? options,
    List<Mutation$SubmitReview$submitReview$conversations>? conversations,
    String? $__typename,
    DateTime? riderLastSeenMessagesAt,
  }) =>
      _res;

  CopyWith$Mutation$SubmitReview$submitReview$rider<TRes> get rider =>
      CopyWith$Mutation$SubmitReview$submitReview$rider.stub(_res);

  CopyWith$Mutation$SubmitReview$submitReview$paymentGateway<TRes>
      get paymentGateway =>
          CopyWith$Mutation$SubmitReview$submitReview$paymentGateway.stub(_res);

  CopyWith$Mutation$SubmitReview$submitReview$savedPaymentMethod<TRes>
      get savedPaymentMethod =>
          CopyWith$Mutation$SubmitReview$submitReview$savedPaymentMethod.stub(
              _res);

  points(_fn) => _res;

  directions(_fn) => _res;

  driverDirections(_fn) => _res;

  CopyWith$Mutation$SubmitReview$submitReview$service<TRes> get service =>
      CopyWith$Mutation$SubmitReview$submitReview$service.stub(_res);

  options(_fn) => _res;

  conversations(_fn) => _res;
}

class Mutation$SubmitReview$submitReview$rider
    implements Fragment$CurrentOrder$rider {
  Mutation$SubmitReview$submitReview$rider({
    this.firstName,
    this.lastName,
    required this.mobileNumber,
    this.presetAvatarNumber,
    this.media,
    this.$__typename = 'Rider',
  });

  factory Mutation$SubmitReview$submitReview$rider.fromJson(
      Map<String, dynamic> json) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$mobileNumber = json['mobileNumber'];
    final l$presetAvatarNumber = json['presetAvatarNumber'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitReview$submitReview$rider(
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      mobileNumber: (l$mobileNumber as String),
      presetAvatarNumber: (l$presetAvatarNumber as int?),
      media: l$media == null
          ? null
          : Mutation$SubmitReview$submitReview$rider$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? firstName;

  final String? lastName;

  final String mobileNumber;

  final int? presetAvatarNumber;

  final Mutation$SubmitReview$submitReview$rider$media? media;

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
    if (!(other is Mutation$SubmitReview$submitReview$rider) ||
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

extension UtilityExtension$Mutation$SubmitReview$submitReview$rider
    on Mutation$SubmitReview$submitReview$rider {
  CopyWith$Mutation$SubmitReview$submitReview$rider<
          Mutation$SubmitReview$submitReview$rider>
      get copyWith => CopyWith$Mutation$SubmitReview$submitReview$rider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitReview$submitReview$rider<TRes> {
  factory CopyWith$Mutation$SubmitReview$submitReview$rider(
    Mutation$SubmitReview$submitReview$rider instance,
    TRes Function(Mutation$SubmitReview$submitReview$rider) then,
  ) = _CopyWithImpl$Mutation$SubmitReview$submitReview$rider;

  factory CopyWith$Mutation$SubmitReview$submitReview$rider.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitReview$submitReview$rider;

  TRes call({
    String? firstName,
    String? lastName,
    String? mobileNumber,
    int? presetAvatarNumber,
    Mutation$SubmitReview$submitReview$rider$media? media,
    String? $__typename,
  });
  CopyWith$Mutation$SubmitReview$submitReview$rider$media<TRes> get media;
}

class _CopyWithImpl$Mutation$SubmitReview$submitReview$rider<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview$rider<TRes> {
  _CopyWithImpl$Mutation$SubmitReview$submitReview$rider(
    this._instance,
    this._then,
  );

  final Mutation$SubmitReview$submitReview$rider _instance;

  final TRes Function(Mutation$SubmitReview$submitReview$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? mobileNumber = _undefined,
    Object? presetAvatarNumber = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitReview$submitReview$rider(
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
            : (media as Mutation$SubmitReview$submitReview$rider$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SubmitReview$submitReview$rider$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Mutation$SubmitReview$submitReview$rider$media.stub(
            _then(_instance))
        : CopyWith$Mutation$SubmitReview$submitReview$rider$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Mutation$SubmitReview$submitReview$rider<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview$rider<TRes> {
  _CopyWithStubImpl$Mutation$SubmitReview$submitReview$rider(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? mobileNumber,
    int? presetAvatarNumber,
    Mutation$SubmitReview$submitReview$rider$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SubmitReview$submitReview$rider$media<TRes> get media =>
      CopyWith$Mutation$SubmitReview$submitReview$rider$media.stub(_res);
}

class Mutation$SubmitReview$submitReview$rider$media
    implements Fragment$CurrentOrder$rider$media {
  Mutation$SubmitReview$submitReview$rider$media({
    required this.address,
    this.$__typename = 'Media',
  });

  factory Mutation$SubmitReview$submitReview$rider$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitReview$submitReview$rider$media(
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
    if (!(other is Mutation$SubmitReview$submitReview$rider$media) ||
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

extension UtilityExtension$Mutation$SubmitReview$submitReview$rider$media
    on Mutation$SubmitReview$submitReview$rider$media {
  CopyWith$Mutation$SubmitReview$submitReview$rider$media<
          Mutation$SubmitReview$submitReview$rider$media>
      get copyWith => CopyWith$Mutation$SubmitReview$submitReview$rider$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitReview$submitReview$rider$media<TRes> {
  factory CopyWith$Mutation$SubmitReview$submitReview$rider$media(
    Mutation$SubmitReview$submitReview$rider$media instance,
    TRes Function(Mutation$SubmitReview$submitReview$rider$media) then,
  ) = _CopyWithImpl$Mutation$SubmitReview$submitReview$rider$media;

  factory CopyWith$Mutation$SubmitReview$submitReview$rider$media.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SubmitReview$submitReview$rider$media;

  TRes call({
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SubmitReview$submitReview$rider$media<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview$rider$media<TRes> {
  _CopyWithImpl$Mutation$SubmitReview$submitReview$rider$media(
    this._instance,
    this._then,
  );

  final Mutation$SubmitReview$submitReview$rider$media _instance;

  final TRes Function(Mutation$SubmitReview$submitReview$rider$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitReview$submitReview$rider$media(
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SubmitReview$submitReview$rider$media<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview$rider$media<TRes> {
  _CopyWithStubImpl$Mutation$SubmitReview$submitReview$rider$media(this._res);

  TRes _res;

  call({
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$SubmitReview$submitReview$paymentGateway
    implements Fragment$PaymentGatewayFragment {
  Mutation$SubmitReview$submitReview$paymentGateway({
    required this.id,
    required this.title,
    required this.type,
    required this.linkMethod,
    this.media,
    this.$__typename = 'PaymentGateway',
  });

  factory Mutation$SubmitReview$submitReview$paymentGateway.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$linkMethod = json['linkMethod'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitReview$submitReview$paymentGateway(
      id: (l$id as String),
      title: (l$title as String),
      type: fromJson$Enum$PaymentGatewayType((l$type as String)),
      linkMethod: fromJson$Enum$GatewayLinkMethod((l$linkMethod as String)),
      media: l$media == null
          ? null
          : Mutation$SubmitReview$submitReview$paymentGateway$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final Enum$PaymentGatewayType type;

  final Enum$GatewayLinkMethod linkMethod;

  final Mutation$SubmitReview$submitReview$paymentGateway$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$type = type;
    _resultData['type'] = toJson$Enum$PaymentGatewayType(l$type);
    final l$linkMethod = linkMethod;
    _resultData['linkMethod'] = toJson$Enum$GatewayLinkMethod(l$linkMethod);
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$linkMethod = linkMethod;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$linkMethod,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SubmitReview$submitReview$paymentGateway) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$linkMethod = linkMethod;
    final lOther$linkMethod = other.linkMethod;
    if (l$linkMethod != lOther$linkMethod) {
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

extension UtilityExtension$Mutation$SubmitReview$submitReview$paymentGateway
    on Mutation$SubmitReview$submitReview$paymentGateway {
  CopyWith$Mutation$SubmitReview$submitReview$paymentGateway<
          Mutation$SubmitReview$submitReview$paymentGateway>
      get copyWith =>
          CopyWith$Mutation$SubmitReview$submitReview$paymentGateway(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitReview$submitReview$paymentGateway<
    TRes> {
  factory CopyWith$Mutation$SubmitReview$submitReview$paymentGateway(
    Mutation$SubmitReview$submitReview$paymentGateway instance,
    TRes Function(Mutation$SubmitReview$submitReview$paymentGateway) then,
  ) = _CopyWithImpl$Mutation$SubmitReview$submitReview$paymentGateway;

  factory CopyWith$Mutation$SubmitReview$submitReview$paymentGateway.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SubmitReview$submitReview$paymentGateway;

  TRes call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Mutation$SubmitReview$submitReview$paymentGateway$media? media,
    String? $__typename,
  });
  CopyWith$Mutation$SubmitReview$submitReview$paymentGateway$media<TRes>
      get media;
}

class _CopyWithImpl$Mutation$SubmitReview$submitReview$paymentGateway<TRes>
    implements
        CopyWith$Mutation$SubmitReview$submitReview$paymentGateway<TRes> {
  _CopyWithImpl$Mutation$SubmitReview$submitReview$paymentGateway(
    this._instance,
    this._then,
  );

  final Mutation$SubmitReview$submitReview$paymentGateway _instance;

  final TRes Function(Mutation$SubmitReview$submitReview$paymentGateway) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? linkMethod = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitReview$submitReview$paymentGateway(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$PaymentGatewayType),
        linkMethod: linkMethod == _undefined || linkMethod == null
            ? _instance.linkMethod
            : (linkMethod as Enum$GatewayLinkMethod),
        media: media == _undefined
            ? _instance.media
            : (media
                as Mutation$SubmitReview$submitReview$paymentGateway$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SubmitReview$submitReview$paymentGateway$media<TRes>
      get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Mutation$SubmitReview$submitReview$paymentGateway$media.stub(
            _then(_instance))
        : CopyWith$Mutation$SubmitReview$submitReview$paymentGateway$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Mutation$SubmitReview$submitReview$paymentGateway<TRes>
    implements
        CopyWith$Mutation$SubmitReview$submitReview$paymentGateway<TRes> {
  _CopyWithStubImpl$Mutation$SubmitReview$submitReview$paymentGateway(
      this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Mutation$SubmitReview$submitReview$paymentGateway$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SubmitReview$submitReview$paymentGateway$media<TRes>
      get media =>
          CopyWith$Mutation$SubmitReview$submitReview$paymentGateway$media.stub(
              _res);
}

class Mutation$SubmitReview$submitReview$paymentGateway$media
    implements Fragment$PaymentGatewayFragment$media, Fragment$MediaFragment {
  Mutation$SubmitReview$submitReview$paymentGateway$media({
    required this.id,
    required this.address,
    this.$__typename = 'Media',
  });

  factory Mutation$SubmitReview$submitReview$paymentGateway$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitReview$submitReview$paymentGateway$media(
      id: (l$id as String),
      address: (l$address as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SubmitReview$submitReview$paymentGateway$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$SubmitReview$submitReview$paymentGateway$media
    on Mutation$SubmitReview$submitReview$paymentGateway$media {
  CopyWith$Mutation$SubmitReview$submitReview$paymentGateway$media<
          Mutation$SubmitReview$submitReview$paymentGateway$media>
      get copyWith =>
          CopyWith$Mutation$SubmitReview$submitReview$paymentGateway$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitReview$submitReview$paymentGateway$media<
    TRes> {
  factory CopyWith$Mutation$SubmitReview$submitReview$paymentGateway$media(
    Mutation$SubmitReview$submitReview$paymentGateway$media instance,
    TRes Function(Mutation$SubmitReview$submitReview$paymentGateway$media) then,
  ) = _CopyWithImpl$Mutation$SubmitReview$submitReview$paymentGateway$media;

  factory CopyWith$Mutation$SubmitReview$submitReview$paymentGateway$media.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SubmitReview$submitReview$paymentGateway$media;

  TRes call({
    String? id,
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SubmitReview$submitReview$paymentGateway$media<
        TRes>
    implements
        CopyWith$Mutation$SubmitReview$submitReview$paymentGateway$media<TRes> {
  _CopyWithImpl$Mutation$SubmitReview$submitReview$paymentGateway$media(
    this._instance,
    this._then,
  );

  final Mutation$SubmitReview$submitReview$paymentGateway$media _instance;

  final TRes Function(Mutation$SubmitReview$submitReview$paymentGateway$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitReview$submitReview$paymentGateway$media(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SubmitReview$submitReview$paymentGateway$media<
        TRes>
    implements
        CopyWith$Mutation$SubmitReview$submitReview$paymentGateway$media<TRes> {
  _CopyWithStubImpl$Mutation$SubmitReview$submitReview$paymentGateway$media(
      this._res);

  TRes _res;

  call({
    String? id,
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$SubmitReview$submitReview$savedPaymentMethod
    implements Fragment$SavedPaymentMethodFragment {
  Mutation$SubmitReview$submitReview$savedPaymentMethod({
    required this.id,
    this.providerBrand,
    this.lastFour,
    required this.isEnabled,
    required this.isDefault,
    required this.title,
    this.expiryDate,
    this.holderName,
    this.$__typename = 'SavedPaymentMethod',
  });

  factory Mutation$SubmitReview$submitReview$savedPaymentMethod.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$providerBrand = json['providerBrand'];
    final l$lastFour = json['lastFour'];
    final l$isEnabled = json['isEnabled'];
    final l$isDefault = json['isDefault'];
    final l$title = json['title'];
    final l$expiryDate = json['expiryDate'];
    final l$holderName = json['holderName'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitReview$submitReview$savedPaymentMethod(
      id: (l$id as String),
      providerBrand: l$providerBrand == null
          ? null
          : fromJson$Enum$ProviderBrand((l$providerBrand as String)),
      lastFour: (l$lastFour as String?),
      isEnabled: (l$isEnabled as bool),
      isDefault: (l$isDefault as bool),
      title: (l$title as String),
      expiryDate: l$expiryDate == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$expiryDate),
      holderName: (l$holderName as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$ProviderBrand? providerBrand;

  final String? lastFour;

  final bool isEnabled;

  final bool isDefault;

  final String title;

  final DateTime? expiryDate;

  final String? holderName;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$providerBrand = providerBrand;
    _resultData['providerBrand'] = l$providerBrand == null
        ? null
        : toJson$Enum$ProviderBrand(l$providerBrand);
    final l$lastFour = lastFour;
    _resultData['lastFour'] = l$lastFour;
    final l$isEnabled = isEnabled;
    _resultData['isEnabled'] = l$isEnabled;
    final l$isDefault = isDefault;
    _resultData['isDefault'] = l$isDefault;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$expiryDate = expiryDate;
    _resultData['expiryDate'] = l$expiryDate == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$expiryDate);
    final l$holderName = holderName;
    _resultData['holderName'] = l$holderName;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$providerBrand = providerBrand;
    final l$lastFour = lastFour;
    final l$isEnabled = isEnabled;
    final l$isDefault = isDefault;
    final l$title = title;
    final l$expiryDate = expiryDate;
    final l$holderName = holderName;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$providerBrand,
      l$lastFour,
      l$isEnabled,
      l$isDefault,
      l$title,
      l$expiryDate,
      l$holderName,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SubmitReview$submitReview$savedPaymentMethod) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$providerBrand = providerBrand;
    final lOther$providerBrand = other.providerBrand;
    if (l$providerBrand != lOther$providerBrand) {
      return false;
    }
    final l$lastFour = lastFour;
    final lOther$lastFour = other.lastFour;
    if (l$lastFour != lOther$lastFour) {
      return false;
    }
    final l$isEnabled = isEnabled;
    final lOther$isEnabled = other.isEnabled;
    if (l$isEnabled != lOther$isEnabled) {
      return false;
    }
    final l$isDefault = isDefault;
    final lOther$isDefault = other.isDefault;
    if (l$isDefault != lOther$isDefault) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$expiryDate = expiryDate;
    final lOther$expiryDate = other.expiryDate;
    if (l$expiryDate != lOther$expiryDate) {
      return false;
    }
    final l$holderName = holderName;
    final lOther$holderName = other.holderName;
    if (l$holderName != lOther$holderName) {
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

extension UtilityExtension$Mutation$SubmitReview$submitReview$savedPaymentMethod
    on Mutation$SubmitReview$submitReview$savedPaymentMethod {
  CopyWith$Mutation$SubmitReview$submitReview$savedPaymentMethod<
          Mutation$SubmitReview$submitReview$savedPaymentMethod>
      get copyWith =>
          CopyWith$Mutation$SubmitReview$submitReview$savedPaymentMethod(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitReview$submitReview$savedPaymentMethod<
    TRes> {
  factory CopyWith$Mutation$SubmitReview$submitReview$savedPaymentMethod(
    Mutation$SubmitReview$submitReview$savedPaymentMethod instance,
    TRes Function(Mutation$SubmitReview$submitReview$savedPaymentMethod) then,
  ) = _CopyWithImpl$Mutation$SubmitReview$submitReview$savedPaymentMethod;

  factory CopyWith$Mutation$SubmitReview$submitReview$savedPaymentMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SubmitReview$submitReview$savedPaymentMethod;

  TRes call({
    String? id,
    Enum$ProviderBrand? providerBrand,
    String? lastFour,
    bool? isEnabled,
    bool? isDefault,
    String? title,
    DateTime? expiryDate,
    String? holderName,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SubmitReview$submitReview$savedPaymentMethod<TRes>
    implements
        CopyWith$Mutation$SubmitReview$submitReview$savedPaymentMethod<TRes> {
  _CopyWithImpl$Mutation$SubmitReview$submitReview$savedPaymentMethod(
    this._instance,
    this._then,
  );

  final Mutation$SubmitReview$submitReview$savedPaymentMethod _instance;

  final TRes Function(Mutation$SubmitReview$submitReview$savedPaymentMethod)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? providerBrand = _undefined,
    Object? lastFour = _undefined,
    Object? isEnabled = _undefined,
    Object? isDefault = _undefined,
    Object? title = _undefined,
    Object? expiryDate = _undefined,
    Object? holderName = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitReview$submitReview$savedPaymentMethod(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        providerBrand: providerBrand == _undefined
            ? _instance.providerBrand
            : (providerBrand as Enum$ProviderBrand?),
        lastFour:
            lastFour == _undefined ? _instance.lastFour : (lastFour as String?),
        isEnabled: isEnabled == _undefined || isEnabled == null
            ? _instance.isEnabled
            : (isEnabled as bool),
        isDefault: isDefault == _undefined || isDefault == null
            ? _instance.isDefault
            : (isDefault as bool),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        expiryDate: expiryDate == _undefined
            ? _instance.expiryDate
            : (expiryDate as DateTime?),
        holderName: holderName == _undefined
            ? _instance.holderName
            : (holderName as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SubmitReview$submitReview$savedPaymentMethod<
        TRes>
    implements
        CopyWith$Mutation$SubmitReview$submitReview$savedPaymentMethod<TRes> {
  _CopyWithStubImpl$Mutation$SubmitReview$submitReview$savedPaymentMethod(
      this._res);

  TRes _res;

  call({
    String? id,
    Enum$ProviderBrand? providerBrand,
    String? lastFour,
    bool? isEnabled,
    bool? isDefault,
    String? title,
    DateTime? expiryDate,
    String? holderName,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$SubmitReview$submitReview$points implements Fragment$Point {
  Mutation$SubmitReview$submitReview$points({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Mutation$SubmitReview$submitReview$points.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitReview$submitReview$points(
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
    if (!(other is Mutation$SubmitReview$submitReview$points) ||
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

extension UtilityExtension$Mutation$SubmitReview$submitReview$points
    on Mutation$SubmitReview$submitReview$points {
  CopyWith$Mutation$SubmitReview$submitReview$points<
          Mutation$SubmitReview$submitReview$points>
      get copyWith => CopyWith$Mutation$SubmitReview$submitReview$points(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitReview$submitReview$points<TRes> {
  factory CopyWith$Mutation$SubmitReview$submitReview$points(
    Mutation$SubmitReview$submitReview$points instance,
    TRes Function(Mutation$SubmitReview$submitReview$points) then,
  ) = _CopyWithImpl$Mutation$SubmitReview$submitReview$points;

  factory CopyWith$Mutation$SubmitReview$submitReview$points.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitReview$submitReview$points;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SubmitReview$submitReview$points<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview$points<TRes> {
  _CopyWithImpl$Mutation$SubmitReview$submitReview$points(
    this._instance,
    this._then,
  );

  final Mutation$SubmitReview$submitReview$points _instance;

  final TRes Function(Mutation$SubmitReview$submitReview$points) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitReview$submitReview$points(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SubmitReview$submitReview$points<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview$points<TRes> {
  _CopyWithStubImpl$Mutation$SubmitReview$submitReview$points(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$SubmitReview$submitReview$directions
    implements Fragment$CurrentOrder$directions, Fragment$Point {
  Mutation$SubmitReview$submitReview$directions({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Mutation$SubmitReview$submitReview$directions.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitReview$submitReview$directions(
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
    if (!(other is Mutation$SubmitReview$submitReview$directions) ||
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

extension UtilityExtension$Mutation$SubmitReview$submitReview$directions
    on Mutation$SubmitReview$submitReview$directions {
  CopyWith$Mutation$SubmitReview$submitReview$directions<
          Mutation$SubmitReview$submitReview$directions>
      get copyWith => CopyWith$Mutation$SubmitReview$submitReview$directions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitReview$submitReview$directions<TRes> {
  factory CopyWith$Mutation$SubmitReview$submitReview$directions(
    Mutation$SubmitReview$submitReview$directions instance,
    TRes Function(Mutation$SubmitReview$submitReview$directions) then,
  ) = _CopyWithImpl$Mutation$SubmitReview$submitReview$directions;

  factory CopyWith$Mutation$SubmitReview$submitReview$directions.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SubmitReview$submitReview$directions;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SubmitReview$submitReview$directions<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview$directions<TRes> {
  _CopyWithImpl$Mutation$SubmitReview$submitReview$directions(
    this._instance,
    this._then,
  );

  final Mutation$SubmitReview$submitReview$directions _instance;

  final TRes Function(Mutation$SubmitReview$submitReview$directions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitReview$submitReview$directions(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SubmitReview$submitReview$directions<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview$directions<TRes> {
  _CopyWithStubImpl$Mutation$SubmitReview$submitReview$directions(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$SubmitReview$submitReview$driverDirections
    implements Fragment$Point {
  Mutation$SubmitReview$submitReview$driverDirections({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Mutation$SubmitReview$submitReview$driverDirections.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitReview$submitReview$driverDirections(
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
    if (!(other is Mutation$SubmitReview$submitReview$driverDirections) ||
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

extension UtilityExtension$Mutation$SubmitReview$submitReview$driverDirections
    on Mutation$SubmitReview$submitReview$driverDirections {
  CopyWith$Mutation$SubmitReview$submitReview$driverDirections<
          Mutation$SubmitReview$submitReview$driverDirections>
      get copyWith =>
          CopyWith$Mutation$SubmitReview$submitReview$driverDirections(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitReview$submitReview$driverDirections<
    TRes> {
  factory CopyWith$Mutation$SubmitReview$submitReview$driverDirections(
    Mutation$SubmitReview$submitReview$driverDirections instance,
    TRes Function(Mutation$SubmitReview$submitReview$driverDirections) then,
  ) = _CopyWithImpl$Mutation$SubmitReview$submitReview$driverDirections;

  factory CopyWith$Mutation$SubmitReview$submitReview$driverDirections.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SubmitReview$submitReview$driverDirections;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SubmitReview$submitReview$driverDirections<TRes>
    implements
        CopyWith$Mutation$SubmitReview$submitReview$driverDirections<TRes> {
  _CopyWithImpl$Mutation$SubmitReview$submitReview$driverDirections(
    this._instance,
    this._then,
  );

  final Mutation$SubmitReview$submitReview$driverDirections _instance;

  final TRes Function(Mutation$SubmitReview$submitReview$driverDirections)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitReview$submitReview$driverDirections(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SubmitReview$submitReview$driverDirections<
        TRes>
    implements
        CopyWith$Mutation$SubmitReview$submitReview$driverDirections<TRes> {
  _CopyWithStubImpl$Mutation$SubmitReview$submitReview$driverDirections(
      this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$SubmitReview$submitReview$service
    implements Fragment$CurrentOrder$service {
  Mutation$SubmitReview$submitReview$service({
    required this.name,
    required this.paymentMethod,
    this.$__typename = 'Service',
  });

  factory Mutation$SubmitReview$submitReview$service.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$paymentMethod = json['paymentMethod'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitReview$submitReview$service(
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
    if (!(other is Mutation$SubmitReview$submitReview$service) ||
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

extension UtilityExtension$Mutation$SubmitReview$submitReview$service
    on Mutation$SubmitReview$submitReview$service {
  CopyWith$Mutation$SubmitReview$submitReview$service<
          Mutation$SubmitReview$submitReview$service>
      get copyWith => CopyWith$Mutation$SubmitReview$submitReview$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitReview$submitReview$service<TRes> {
  factory CopyWith$Mutation$SubmitReview$submitReview$service(
    Mutation$SubmitReview$submitReview$service instance,
    TRes Function(Mutation$SubmitReview$submitReview$service) then,
  ) = _CopyWithImpl$Mutation$SubmitReview$submitReview$service;

  factory CopyWith$Mutation$SubmitReview$submitReview$service.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitReview$submitReview$service;

  TRes call({
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SubmitReview$submitReview$service<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview$service<TRes> {
  _CopyWithImpl$Mutation$SubmitReview$submitReview$service(
    this._instance,
    this._then,
  );

  final Mutation$SubmitReview$submitReview$service _instance;

  final TRes Function(Mutation$SubmitReview$submitReview$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? paymentMethod = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitReview$submitReview$service(
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

class _CopyWithStubImpl$Mutation$SubmitReview$submitReview$service<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview$service<TRes> {
  _CopyWithStubImpl$Mutation$SubmitReview$submitReview$service(this._res);

  TRes _res;

  call({
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$SubmitReview$submitReview$options
    implements Fragment$RideOption {
  Mutation$SubmitReview$submitReview$options({
    required this.id,
    required this.name,
    this.description,
    required this.type,
    this.additionalFee,
    required this.icon,
    this.$__typename = 'ServiceOption',
  });

  factory Mutation$SubmitReview$submitReview$options.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$type = json['type'];
    final l$additionalFee = json['additionalFee'];
    final l$icon = json['icon'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitReview$submitReview$options(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String?),
      type: fromJson$Enum$ServiceOptionType((l$type as String)),
      additionalFee: (l$additionalFee as num?)?.toDouble(),
      icon: fromJson$Enum$ServiceOptionIcon((l$icon as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? description;

  final Enum$ServiceOptionType type;

  final double? additionalFee;

  final Enum$ServiceOptionIcon icon;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$type = type;
    _resultData['type'] = toJson$Enum$ServiceOptionType(l$type);
    final l$additionalFee = additionalFee;
    _resultData['additionalFee'] = l$additionalFee;
    final l$icon = icon;
    _resultData['icon'] = toJson$Enum$ServiceOptionIcon(l$icon);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$type = type;
    final l$additionalFee = additionalFee;
    final l$icon = icon;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
      l$type,
      l$additionalFee,
      l$icon,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SubmitReview$submitReview$options) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$additionalFee = additionalFee;
    final lOther$additionalFee = other.additionalFee;
    if (l$additionalFee != lOther$additionalFee) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
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

extension UtilityExtension$Mutation$SubmitReview$submitReview$options
    on Mutation$SubmitReview$submitReview$options {
  CopyWith$Mutation$SubmitReview$submitReview$options<
          Mutation$SubmitReview$submitReview$options>
      get copyWith => CopyWith$Mutation$SubmitReview$submitReview$options(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitReview$submitReview$options<TRes> {
  factory CopyWith$Mutation$SubmitReview$submitReview$options(
    Mutation$SubmitReview$submitReview$options instance,
    TRes Function(Mutation$SubmitReview$submitReview$options) then,
  ) = _CopyWithImpl$Mutation$SubmitReview$submitReview$options;

  factory CopyWith$Mutation$SubmitReview$submitReview$options.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitReview$submitReview$options;

  TRes call({
    String? id,
    String? name,
    String? description,
    Enum$ServiceOptionType? type,
    double? additionalFee,
    Enum$ServiceOptionIcon? icon,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SubmitReview$submitReview$options<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview$options<TRes> {
  _CopyWithImpl$Mutation$SubmitReview$submitReview$options(
    this._instance,
    this._then,
  );

  final Mutation$SubmitReview$submitReview$options _instance;

  final TRes Function(Mutation$SubmitReview$submitReview$options) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? type = _undefined,
    Object? additionalFee = _undefined,
    Object? icon = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitReview$submitReview$options(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$ServiceOptionType),
        additionalFee: additionalFee == _undefined
            ? _instance.additionalFee
            : (additionalFee as double?),
        icon: icon == _undefined || icon == null
            ? _instance.icon
            : (icon as Enum$ServiceOptionIcon),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SubmitReview$submitReview$options<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview$options<TRes> {
  _CopyWithStubImpl$Mutation$SubmitReview$submitReview$options(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    Enum$ServiceOptionType? type,
    double? additionalFee,
    Enum$ServiceOptionIcon? icon,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$SubmitReview$submitReview$conversations
    implements Fragment$ChatMessage {
  Mutation$SubmitReview$submitReview$conversations({
    required this.id,
    required this.sentAt,
    required this.requestId,
    required this.content,
    required this.status,
    required this.sentByDriver,
    this.$__typename = 'OrderMessage',
  });

  factory Mutation$SubmitReview$submitReview$conversations.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$sentAt = json['sentAt'];
    final l$requestId = json['requestId'];
    final l$content = json['content'];
    final l$status = json['status'];
    final l$sentByDriver = json['sentByDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitReview$submitReview$conversations(
      id: (l$id as String),
      sentAt: fromGraphQLTimestampToDartDateTime(l$sentAt),
      requestId: (l$requestId as String),
      content: (l$content as String),
      status: fromJson$Enum$MessageStatus((l$status as String)),
      sentByDriver: (l$sentByDriver as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime sentAt;

  final String requestId;

  final String content;

  final Enum$MessageStatus status;

  final bool sentByDriver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$sentAt = sentAt;
    _resultData['sentAt'] = fromDartDateTimeToGraphQLTimestamp(l$sentAt);
    final l$requestId = requestId;
    _resultData['requestId'] = l$requestId;
    final l$content = content;
    _resultData['content'] = l$content;
    final l$status = status;
    _resultData['status'] = toJson$Enum$MessageStatus(l$status);
    final l$sentByDriver = sentByDriver;
    _resultData['sentByDriver'] = l$sentByDriver;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$sentAt = sentAt;
    final l$requestId = requestId;
    final l$content = content;
    final l$status = status;
    final l$sentByDriver = sentByDriver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$sentAt,
      l$requestId,
      l$content,
      l$status,
      l$sentByDriver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SubmitReview$submitReview$conversations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$sentAt = sentAt;
    final lOther$sentAt = other.sentAt;
    if (l$sentAt != lOther$sentAt) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (l$requestId != lOther$requestId) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$sentByDriver = sentByDriver;
    final lOther$sentByDriver = other.sentByDriver;
    if (l$sentByDriver != lOther$sentByDriver) {
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

extension UtilityExtension$Mutation$SubmitReview$submitReview$conversations
    on Mutation$SubmitReview$submitReview$conversations {
  CopyWith$Mutation$SubmitReview$submitReview$conversations<
          Mutation$SubmitReview$submitReview$conversations>
      get copyWith => CopyWith$Mutation$SubmitReview$submitReview$conversations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitReview$submitReview$conversations<TRes> {
  factory CopyWith$Mutation$SubmitReview$submitReview$conversations(
    Mutation$SubmitReview$submitReview$conversations instance,
    TRes Function(Mutation$SubmitReview$submitReview$conversations) then,
  ) = _CopyWithImpl$Mutation$SubmitReview$submitReview$conversations;

  factory CopyWith$Mutation$SubmitReview$submitReview$conversations.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SubmitReview$submitReview$conversations;

  TRes call({
    String? id,
    DateTime? sentAt,
    String? requestId,
    String? content,
    Enum$MessageStatus? status,
    bool? sentByDriver,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SubmitReview$submitReview$conversations<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview$conversations<TRes> {
  _CopyWithImpl$Mutation$SubmitReview$submitReview$conversations(
    this._instance,
    this._then,
  );

  final Mutation$SubmitReview$submitReview$conversations _instance;

  final TRes Function(Mutation$SubmitReview$submitReview$conversations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? sentAt = _undefined,
    Object? requestId = _undefined,
    Object? content = _undefined,
    Object? status = _undefined,
    Object? sentByDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitReview$submitReview$conversations(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        sentAt: sentAt == _undefined || sentAt == null
            ? _instance.sentAt
            : (sentAt as DateTime),
        requestId: requestId == _undefined || requestId == null
            ? _instance.requestId
            : (requestId as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$MessageStatus),
        sentByDriver: sentByDriver == _undefined || sentByDriver == null
            ? _instance.sentByDriver
            : (sentByDriver as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SubmitReview$submitReview$conversations<TRes>
    implements CopyWith$Mutation$SubmitReview$submitReview$conversations<TRes> {
  _CopyWithStubImpl$Mutation$SubmitReview$submitReview$conversations(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? sentAt,
    String? requestId,
    String? content,
    Enum$MessageStatus? status,
    bool? sentByDriver,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$SendSOS {
  factory Variables$Mutation$SendSOS({required String id}) =>
      Variables$Mutation$SendSOS._({
        r'id': id,
      });

  Variables$Mutation$SendSOS._(this._$data);

  factory Variables$Mutation$SendSOS.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$SendSOS._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$SendSOS<Variables$Mutation$SendSOS>
      get copyWith => CopyWith$Variables$Mutation$SendSOS(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SendSOS) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$SendSOS<TRes> {
  factory CopyWith$Variables$Mutation$SendSOS(
    Variables$Mutation$SendSOS instance,
    TRes Function(Variables$Mutation$SendSOS) then,
  ) = _CopyWithImpl$Variables$Mutation$SendSOS;

  factory CopyWith$Variables$Mutation$SendSOS.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SendSOS;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$SendSOS<TRes>
    implements CopyWith$Variables$Mutation$SendSOS<TRes> {
  _CopyWithImpl$Variables$Mutation$SendSOS(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SendSOS _instance;

  final TRes Function(Variables$Mutation$SendSOS) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Mutation$SendSOS._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SendSOS<TRes>
    implements CopyWith$Variables$Mutation$SendSOS<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SendSOS(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$SendSOS {
  Mutation$SendSOS({
    required this.sosSignal,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SendSOS.fromJson(Map<String, dynamic> json) {
    final l$sosSignal = json['sosSignal'];
    final l$$__typename = json['__typename'];
    return Mutation$SendSOS(
      sosSignal: Mutation$SendSOS$sosSignal.fromJson(
          (l$sosSignal as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SendSOS$sosSignal sosSignal;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sosSignal = sosSignal;
    _resultData['sosSignal'] = l$sosSignal.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sosSignal = sosSignal;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sosSignal,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SendSOS) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sosSignal = sosSignal;
    final lOther$sosSignal = other.sosSignal;
    if (l$sosSignal != lOther$sosSignal) {
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

extension UtilityExtension$Mutation$SendSOS on Mutation$SendSOS {
  CopyWith$Mutation$SendSOS<Mutation$SendSOS> get copyWith =>
      CopyWith$Mutation$SendSOS(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SendSOS<TRes> {
  factory CopyWith$Mutation$SendSOS(
    Mutation$SendSOS instance,
    TRes Function(Mutation$SendSOS) then,
  ) = _CopyWithImpl$Mutation$SendSOS;

  factory CopyWith$Mutation$SendSOS.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendSOS;

  TRes call({
    Mutation$SendSOS$sosSignal? sosSignal,
    String? $__typename,
  });
  CopyWith$Mutation$SendSOS$sosSignal<TRes> get sosSignal;
}

class _CopyWithImpl$Mutation$SendSOS<TRes>
    implements CopyWith$Mutation$SendSOS<TRes> {
  _CopyWithImpl$Mutation$SendSOS(
    this._instance,
    this._then,
  );

  final Mutation$SendSOS _instance;

  final TRes Function(Mutation$SendSOS) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sosSignal = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SendSOS(
        sosSignal: sosSignal == _undefined || sosSignal == null
            ? _instance.sosSignal
            : (sosSignal as Mutation$SendSOS$sosSignal),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SendSOS$sosSignal<TRes> get sosSignal {
    final local$sosSignal = _instance.sosSignal;
    return CopyWith$Mutation$SendSOS$sosSignal(
        local$sosSignal, (e) => call(sosSignal: e));
  }
}

class _CopyWithStubImpl$Mutation$SendSOS<TRes>
    implements CopyWith$Mutation$SendSOS<TRes> {
  _CopyWithStubImpl$Mutation$SendSOS(this._res);

  TRes _res;

  call({
    Mutation$SendSOS$sosSignal? sosSignal,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SendSOS$sosSignal<TRes> get sosSignal =>
      CopyWith$Mutation$SendSOS$sosSignal.stub(_res);
}

const documentNodeMutationSendSOS = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SendSOS'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'sosSignal'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'orderId'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
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
]);
Mutation$SendSOS _parserFn$Mutation$SendSOS(Map<String, dynamic> data) =>
    Mutation$SendSOS.fromJson(data);
typedef OnMutationCompleted$Mutation$SendSOS = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SendSOS?,
);

class Options$Mutation$SendSOS
    extends graphql.MutationOptions<Mutation$SendSOS> {
  Options$Mutation$SendSOS({
    String? operationName,
    required Variables$Mutation$SendSOS variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendSOS? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SendSOS? onCompleted,
    graphql.OnMutationUpdate<Mutation$SendSOS>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$SendSOS(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSendSOS,
          parserFn: _parserFn$Mutation$SendSOS,
        );

  final OnMutationCompleted$Mutation$SendSOS? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SendSOS
    extends graphql.WatchQueryOptions<Mutation$SendSOS> {
  WatchOptions$Mutation$SendSOS({
    String? operationName,
    required Variables$Mutation$SendSOS variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendSOS? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationSendSOS,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SendSOS,
        );
}

extension ClientExtension$Mutation$SendSOS on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SendSOS>> mutate$SendSOS(
          Options$Mutation$SendSOS options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SendSOS> watchMutation$SendSOS(
          WatchOptions$Mutation$SendSOS options) =>
      this.watchMutation(options);
}

class Mutation$SendSOS$sosSignal {
  Mutation$SendSOS$sosSignal({
    required this.id,
    this.$__typename = 'SOS',
  });

  factory Mutation$SendSOS$sosSignal.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$SendSOS$sosSignal(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SendSOS$sosSignal) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$SendSOS$sosSignal
    on Mutation$SendSOS$sosSignal {
  CopyWith$Mutation$SendSOS$sosSignal<Mutation$SendSOS$sosSignal>
      get copyWith => CopyWith$Mutation$SendSOS$sosSignal(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SendSOS$sosSignal<TRes> {
  factory CopyWith$Mutation$SendSOS$sosSignal(
    Mutation$SendSOS$sosSignal instance,
    TRes Function(Mutation$SendSOS$sosSignal) then,
  ) = _CopyWithImpl$Mutation$SendSOS$sosSignal;

  factory CopyWith$Mutation$SendSOS$sosSignal.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendSOS$sosSignal;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SendSOS$sosSignal<TRes>
    implements CopyWith$Mutation$SendSOS$sosSignal<TRes> {
  _CopyWithImpl$Mutation$SendSOS$sosSignal(
    this._instance,
    this._then,
  );

  final Mutation$SendSOS$sosSignal _instance;

  final TRes Function(Mutation$SendSOS$sosSignal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SendSOS$sosSignal(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SendSOS$sosSignal<TRes>
    implements CopyWith$Mutation$SendSOS$sosSignal<TRes> {
  _CopyWithStubImpl$Mutation$SendSOS$sosSignal(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
