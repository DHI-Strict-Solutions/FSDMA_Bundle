import '../schema.gql.dart';
import 'media.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'payment_gateway.fragment.graphql.dart';
import 'point.fragment.graphql.dart';
import 'ride_option.fragment.graphql.dart';
import 'saved_payment_method.fragment.graphql.dart';

class Fragment$OrderRequest {
  Fragment$OrderRequest({
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

  factory Fragment$OrderRequest.fromJson(Map<String, dynamic> json) {
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
    return Fragment$OrderRequest(
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
          : Fragment$OrderRequest$service.fromJson(
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

  final Fragment$OrderRequest$service? service;

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
    if (!(other is Fragment$OrderRequest) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$OrderRequest on Fragment$OrderRequest {
  CopyWith$Fragment$OrderRequest<Fragment$OrderRequest> get copyWith =>
      CopyWith$Fragment$OrderRequest(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$OrderRequest<TRes> {
  factory CopyWith$Fragment$OrderRequest(
    Fragment$OrderRequest instance,
    TRes Function(Fragment$OrderRequest) then,
  ) = _CopyWithImpl$Fragment$OrderRequest;

  factory CopyWith$Fragment$OrderRequest.stub(TRes res) =
      _CopyWithStubImpl$Fragment$OrderRequest;

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
    Fragment$OrderRequest$service? service,
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
  CopyWith$Fragment$OrderRequest$service<TRes> get service;
  TRes points(
      Iterable<Fragment$Point> Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
          _fn);
}

class _CopyWithImpl$Fragment$OrderRequest<TRes>
    implements CopyWith$Fragment$OrderRequest<TRes> {
  _CopyWithImpl$Fragment$OrderRequest(
    this._instance,
    this._then,
  );

  final Fragment$OrderRequest _instance;

  final TRes Function(Fragment$OrderRequest) _then;

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
      _then(Fragment$OrderRequest(
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
            : (service as Fragment$OrderRequest$service?),
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

  CopyWith$Fragment$OrderRequest$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Fragment$OrderRequest$service.stub(_then(_instance))
        : CopyWith$Fragment$OrderRequest$service(
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

class _CopyWithStubImpl$Fragment$OrderRequest<TRes>
    implements CopyWith$Fragment$OrderRequest<TRes> {
  _CopyWithStubImpl$Fragment$OrderRequest(this._res);

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
    Fragment$OrderRequest$service? service,
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

  CopyWith$Fragment$OrderRequest$service<TRes> get service =>
      CopyWith$Fragment$OrderRequest$service.stub(_res);

  points(_fn) => _res;
}

const fragmentDefinitionOrderRequest = FragmentDefinitionNode(
  name: NameNode(value: 'OrderRequest'),
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
      name: NameNode(value: 'status'),
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
      name: NameNode(value: 'costBest'),
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
      name: NameNode(value: 'addresses'),
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
      name: NameNode(value: 'waitMinutes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentOrderRequest = DocumentNode(definitions: [
  fragmentDefinitionOrderRequest,
  fragmentDefinitionSavedPaymentMethodFragment,
  fragmentDefinitionPaymentGatewayFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionPoint,
  fragmentDefinitionRideOption,
]);

extension ClientExtension$Fragment$OrderRequest on graphql.GraphQLClient {
  void writeFragment$OrderRequest({
    required Fragment$OrderRequest data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'OrderRequest',
            document: documentNodeFragmentOrderRequest,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$OrderRequest? readFragment$OrderRequest({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'OrderRequest',
          document: documentNodeFragmentOrderRequest,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$OrderRequest.fromJson(result);
  }
}

class Fragment$OrderRequest$service {
  Fragment$OrderRequest$service({
    required this.name,
    this.$__typename = 'Service',
  });

  factory Fragment$OrderRequest$service.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$OrderRequest$service(
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
    if (!(other is Fragment$OrderRequest$service) ||
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

extension UtilityExtension$Fragment$OrderRequest$service
    on Fragment$OrderRequest$service {
  CopyWith$Fragment$OrderRequest$service<Fragment$OrderRequest$service>
      get copyWith => CopyWith$Fragment$OrderRequest$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$OrderRequest$service<TRes> {
  factory CopyWith$Fragment$OrderRequest$service(
    Fragment$OrderRequest$service instance,
    TRes Function(Fragment$OrderRequest$service) then,
  ) = _CopyWithImpl$Fragment$OrderRequest$service;

  factory CopyWith$Fragment$OrderRequest$service.stub(TRes res) =
      _CopyWithStubImpl$Fragment$OrderRequest$service;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$OrderRequest$service<TRes>
    implements CopyWith$Fragment$OrderRequest$service<TRes> {
  _CopyWithImpl$Fragment$OrderRequest$service(
    this._instance,
    this._then,
  );

  final Fragment$OrderRequest$service _instance;

  final TRes Function(Fragment$OrderRequest$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$OrderRequest$service(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$OrderRequest$service<TRes>
    implements CopyWith$Fragment$OrderRequest$service<TRes> {
  _CopyWithStubImpl$Fragment$OrderRequest$service(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
