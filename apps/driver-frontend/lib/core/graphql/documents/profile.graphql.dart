import '../fragments/chat_message.fragment.graphql.dart';
import '../fragments/current_order.fragment.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
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

class Query$ProfileAggregations {
  Query$ProfileAggregations({
    required this.driver,
    this.$__typename = 'Query',
  });

  factory Query$ProfileAggregations.fromJson(Map<String, dynamic> json) {
    final l$driver = json['driver'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations(
      driver: Query$ProfileAggregations$driver.fromJson(
          (l$driver as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ProfileAggregations$driver driver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$driver = driver;
    _resultData['driver'] = l$driver.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$driver = driver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$driver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ProfileAggregations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$driver = driver;
    final lOther$driver = other.driver;
    if (l$driver != lOther$driver) {
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

extension UtilityExtension$Query$ProfileAggregations
    on Query$ProfileAggregations {
  CopyWith$Query$ProfileAggregations<Query$ProfileAggregations> get copyWith =>
      CopyWith$Query$ProfileAggregations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProfileAggregations<TRes> {
  factory CopyWith$Query$ProfileAggregations(
    Query$ProfileAggregations instance,
    TRes Function(Query$ProfileAggregations) then,
  ) = _CopyWithImpl$Query$ProfileAggregations;

  factory CopyWith$Query$ProfileAggregations.stub(TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations;

  TRes call({
    Query$ProfileAggregations$driver? driver,
    String? $__typename,
  });
  CopyWith$Query$ProfileAggregations$driver<TRes> get driver;
}

class _CopyWithImpl$Query$ProfileAggregations<TRes>
    implements CopyWith$Query$ProfileAggregations<TRes> {
  _CopyWithImpl$Query$ProfileAggregations(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations _instance;

  final TRes Function(Query$ProfileAggregations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? driver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations(
        driver: driver == _undefined || driver == null
            ? _instance.driver
            : (driver as Query$ProfileAggregations$driver),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ProfileAggregations$driver<TRes> get driver {
    final local$driver = _instance.driver;
    return CopyWith$Query$ProfileAggregations$driver(
        local$driver, (e) => call(driver: e));
  }
}

class _CopyWithStubImpl$Query$ProfileAggregations<TRes>
    implements CopyWith$Query$ProfileAggregations<TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations(this._res);

  TRes _res;

  call({
    Query$ProfileAggregations$driver? driver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ProfileAggregations$driver<TRes> get driver =>
      CopyWith$Query$ProfileAggregations$driver.stub(_res);
}

const documentNodeQueryProfileAggregations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ProfileAggregations'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'driver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: StringValueNode(
              value: '1',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'historyOrdersAggregate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'count'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'sum'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'distanceBest'),
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
            name: NameNode(value: 'rating'),
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
Query$ProfileAggregations _parserFn$Query$ProfileAggregations(
        Map<String, dynamic> data) =>
    Query$ProfileAggregations.fromJson(data);
typedef OnQueryComplete$Query$ProfileAggregations = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ProfileAggregations?,
);

class Options$Query$ProfileAggregations
    extends graphql.QueryOptions<Query$ProfileAggregations> {
  Options$Query$ProfileAggregations({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ProfileAggregations? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ProfileAggregations? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$ProfileAggregations(data),
                  ),
          onError: onError,
          document: documentNodeQueryProfileAggregations,
          parserFn: _parserFn$Query$ProfileAggregations,
        );

  final OnQueryComplete$Query$ProfileAggregations? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ProfileAggregations
    extends graphql.WatchQueryOptions<Query$ProfileAggregations> {
  WatchOptions$Query$ProfileAggregations({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ProfileAggregations? typedOptimisticResult,
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
          document: documentNodeQueryProfileAggregations,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ProfileAggregations,
        );
}

class FetchMoreOptions$Query$ProfileAggregations
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ProfileAggregations(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryProfileAggregations,
        );
}

extension ClientExtension$Query$ProfileAggregations on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ProfileAggregations>>
      query$ProfileAggregations(
              [Options$Query$ProfileAggregations? options]) async =>
          await this.query(options ?? Options$Query$ProfileAggregations());
  graphql.ObservableQuery<Query$ProfileAggregations>
      watchQuery$ProfileAggregations(
              [WatchOptions$Query$ProfileAggregations? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$ProfileAggregations());
  void writeQuery$ProfileAggregations({
    required Query$ProfileAggregations data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryProfileAggregations)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ProfileAggregations? readQuery$ProfileAggregations(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryProfileAggregations)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ProfileAggregations.fromJson(result);
  }
}

class Query$ProfileAggregations$driver {
  Query$ProfileAggregations$driver({
    required this.historyOrdersAggregate,
    this.rating,
    this.$__typename = 'Driver',
  });

  factory Query$ProfileAggregations$driver.fromJson(Map<String, dynamic> json) {
    final l$historyOrdersAggregate = json['historyOrdersAggregate'];
    final l$rating = json['rating'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations$driver(
      historyOrdersAggregate: (l$historyOrdersAggregate as List<dynamic>)
          .map((e) =>
              Query$ProfileAggregations$driver$historyOrdersAggregate.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      rating: (l$rating as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ProfileAggregations$driver$historyOrdersAggregate>
      historyOrdersAggregate;

  final double? rating;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyOrdersAggregate = historyOrdersAggregate;
    _resultData['historyOrdersAggregate'] =
        l$historyOrdersAggregate.map((e) => e.toJson()).toList();
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyOrdersAggregate = historyOrdersAggregate;
    final l$rating = rating;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$historyOrdersAggregate.map((v) => v)),
      l$rating,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ProfileAggregations$driver) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyOrdersAggregate = historyOrdersAggregate;
    final lOther$historyOrdersAggregate = other.historyOrdersAggregate;
    if (l$historyOrdersAggregate.length !=
        lOther$historyOrdersAggregate.length) {
      return false;
    }
    for (int i = 0; i < l$historyOrdersAggregate.length; i++) {
      final l$historyOrdersAggregate$entry = l$historyOrdersAggregate[i];
      final lOther$historyOrdersAggregate$entry =
          lOther$historyOrdersAggregate[i];
      if (l$historyOrdersAggregate$entry !=
          lOther$historyOrdersAggregate$entry) {
        return false;
      }
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
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

extension UtilityExtension$Query$ProfileAggregations$driver
    on Query$ProfileAggregations$driver {
  CopyWith$Query$ProfileAggregations$driver<Query$ProfileAggregations$driver>
      get copyWith => CopyWith$Query$ProfileAggregations$driver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProfileAggregations$driver<TRes> {
  factory CopyWith$Query$ProfileAggregations$driver(
    Query$ProfileAggregations$driver instance,
    TRes Function(Query$ProfileAggregations$driver) then,
  ) = _CopyWithImpl$Query$ProfileAggregations$driver;

  factory CopyWith$Query$ProfileAggregations$driver.stub(TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations$driver;

  TRes call({
    List<Query$ProfileAggregations$driver$historyOrdersAggregate>?
        historyOrdersAggregate,
    double? rating,
    String? $__typename,
  });
  TRes historyOrdersAggregate(
      Iterable<Query$ProfileAggregations$driver$historyOrdersAggregate> Function(
              Iterable<
                  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate<
                      Query$ProfileAggregations$driver$historyOrdersAggregate>>)
          _fn);
}

class _CopyWithImpl$Query$ProfileAggregations$driver<TRes>
    implements CopyWith$Query$ProfileAggregations$driver<TRes> {
  _CopyWithImpl$Query$ProfileAggregations$driver(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations$driver _instance;

  final TRes Function(Query$ProfileAggregations$driver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyOrdersAggregate = _undefined,
    Object? rating = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations$driver(
        historyOrdersAggregate: historyOrdersAggregate == _undefined ||
                historyOrdersAggregate == null
            ? _instance.historyOrdersAggregate
            : (historyOrdersAggregate as List<
                Query$ProfileAggregations$driver$historyOrdersAggregate>),
        rating: rating == _undefined ? _instance.rating : (rating as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes historyOrdersAggregate(
          Iterable<Query$ProfileAggregations$driver$historyOrdersAggregate> Function(
                  Iterable<
                      CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate<
                          Query$ProfileAggregations$driver$historyOrdersAggregate>>)
              _fn) =>
      call(
          historyOrdersAggregate: _fn(_instance.historyOrdersAggregate.map((e) =>
              CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$ProfileAggregations$driver<TRes>
    implements CopyWith$Query$ProfileAggregations$driver<TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations$driver(this._res);

  TRes _res;

  call({
    List<Query$ProfileAggregations$driver$historyOrdersAggregate>?
        historyOrdersAggregate,
    double? rating,
    String? $__typename,
  }) =>
      _res;

  historyOrdersAggregate(_fn) => _res;
}

class Query$ProfileAggregations$driver$historyOrdersAggregate {
  Query$ProfileAggregations$driver$historyOrdersAggregate({
    this.count,
    this.sum,
    this.$__typename = 'DriverHistoryOrdersAggregateResponse',
  });

  factory Query$ProfileAggregations$driver$historyOrdersAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$sum = json['sum'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations$driver$historyOrdersAggregate(
      count: l$count == null
          ? null
          : Query$ProfileAggregations$driver$historyOrdersAggregate$count
              .fromJson((l$count as Map<String, dynamic>)),
      sum: l$sum == null
          ? null
          : Query$ProfileAggregations$driver$historyOrdersAggregate$sum
              .fromJson((l$sum as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ProfileAggregations$driver$historyOrdersAggregate$count? count;

  final Query$ProfileAggregations$driver$historyOrdersAggregate$sum? sum;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count?.toJson();
    final l$sum = sum;
    _resultData['sum'] = l$sum?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$sum = sum;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$sum,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ProfileAggregations$driver$historyOrdersAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$sum = sum;
    final lOther$sum = other.sum;
    if (l$sum != lOther$sum) {
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

extension UtilityExtension$Query$ProfileAggregations$driver$historyOrdersAggregate
    on Query$ProfileAggregations$driver$historyOrdersAggregate {
  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate<
          Query$ProfileAggregations$driver$historyOrdersAggregate>
      get copyWith =>
          CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate<
    TRes> {
  factory CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate(
    Query$ProfileAggregations$driver$historyOrdersAggregate instance,
    TRes Function(Query$ProfileAggregations$driver$historyOrdersAggregate) then,
  ) = _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate;

  factory CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate;

  TRes call({
    Query$ProfileAggregations$driver$historyOrdersAggregate$count? count,
    Query$ProfileAggregations$driver$historyOrdersAggregate$sum? sum,
    String? $__typename,
  });
  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count<TRes>
      get count;
  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<TRes>
      get sum;
}

class _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate<TRes> {
  _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations$driver$historyOrdersAggregate _instance;

  final TRes Function(Query$ProfileAggregations$driver$historyOrdersAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? sum = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations$driver$historyOrdersAggregate(
        count: count == _undefined
            ? _instance.count
            : (count
                as Query$ProfileAggregations$driver$historyOrdersAggregate$count?),
        sum: sum == _undefined
            ? _instance.sum
            : (sum
                as Query$ProfileAggregations$driver$historyOrdersAggregate$sum?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count<TRes>
      get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count
            .stub(_then(_instance))
        : CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count(
            local$count, (e) => call(count: e));
  }

  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<TRes>
      get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum
            .stub(_then(_instance))
        : CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum(
            local$sum, (e) => call(sum: e));
  }
}

class _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate<TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate(
      this._res);

  TRes _res;

  call({
    Query$ProfileAggregations$driver$historyOrdersAggregate$count? count,
    Query$ProfileAggregations$driver$historyOrdersAggregate$sum? sum,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count<TRes>
      get count =>
          CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count
              .stub(_res);

  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<TRes>
      get sum =>
          CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum
              .stub(_res);
}

class Query$ProfileAggregations$driver$historyOrdersAggregate$count {
  Query$ProfileAggregations$driver$historyOrdersAggregate$count({
    this.id,
    this.$__typename = 'DriverHistoryOrdersCountAggregate',
  });

  factory Query$ProfileAggregations$driver$historyOrdersAggregate$count.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations$driver$historyOrdersAggregate$count(
      id: (l$id as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

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
    if (!(other
            is Query$ProfileAggregations$driver$historyOrdersAggregate$count) ||
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

extension UtilityExtension$Query$ProfileAggregations$driver$historyOrdersAggregate$count
    on Query$ProfileAggregations$driver$historyOrdersAggregate$count {
  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count<
          Query$ProfileAggregations$driver$historyOrdersAggregate$count>
      get copyWith =>
          CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count<
    TRes> {
  factory CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count(
    Query$ProfileAggregations$driver$historyOrdersAggregate$count instance,
    TRes Function(Query$ProfileAggregations$driver$historyOrdersAggregate$count)
        then,
  ) = _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$count;

  factory CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$count;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$count<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count<
            TRes> {
  _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$count(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations$driver$historyOrdersAggregate$count _instance;

  final TRes Function(
      Query$ProfileAggregations$driver$historyOrdersAggregate$count) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations$driver$historyOrdersAggregate$count(
        id: id == _undefined ? _instance.id : (id as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$count<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count<
            TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$count(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$ProfileAggregations$driver$historyOrdersAggregate$sum {
  Query$ProfileAggregations$driver$historyOrdersAggregate$sum({
    this.distanceBest,
    this.$__typename = 'DriverHistoryOrdersSumAggregate',
  });

  factory Query$ProfileAggregations$driver$historyOrdersAggregate$sum.fromJson(
      Map<String, dynamic> json) {
    final l$distanceBest = json['distanceBest'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations$driver$historyOrdersAggregate$sum(
      distanceBest: (l$distanceBest as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double? distanceBest;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$distanceBest = distanceBest;
    _resultData['distanceBest'] = l$distanceBest;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$distanceBest = distanceBest;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$distanceBest,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$ProfileAggregations$driver$historyOrdersAggregate$sum) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$distanceBest = distanceBest;
    final lOther$distanceBest = other.distanceBest;
    if (l$distanceBest != lOther$distanceBest) {
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

extension UtilityExtension$Query$ProfileAggregations$driver$historyOrdersAggregate$sum
    on Query$ProfileAggregations$driver$historyOrdersAggregate$sum {
  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<
          Query$ProfileAggregations$driver$historyOrdersAggregate$sum>
      get copyWith =>
          CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<
    TRes> {
  factory CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum(
    Query$ProfileAggregations$driver$historyOrdersAggregate$sum instance,
    TRes Function(Query$ProfileAggregations$driver$historyOrdersAggregate$sum)
        then,
  ) = _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$sum;

  factory CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$sum;

  TRes call({
    double? distanceBest,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<
            TRes> {
  _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$sum(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations$driver$historyOrdersAggregate$sum _instance;

  final TRes Function(
      Query$ProfileAggregations$driver$historyOrdersAggregate$sum) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? distanceBest = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations$driver$historyOrdersAggregate$sum(
        distanceBest: distanceBest == _undefined
            ? _instance.distanceBest
            : (distanceBest as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<
            TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$sum(
      this._res);

  TRes _res;

  call({
    double? distanceBest,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateProfileImage {
  factory Variables$Mutation$UpdateProfileImage({required String mediaId}) =>
      Variables$Mutation$UpdateProfileImage._({
        r'mediaId': mediaId,
      });

  Variables$Mutation$UpdateProfileImage._(this._$data);

  factory Variables$Mutation$UpdateProfileImage.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mediaId = data['mediaId'];
    result$data['mediaId'] = (l$mediaId as String);
    return Variables$Mutation$UpdateProfileImage._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mediaId => (_$data['mediaId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mediaId = mediaId;
    result$data['mediaId'] = l$mediaId;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateProfileImage<
          Variables$Mutation$UpdateProfileImage>
      get copyWith => CopyWith$Variables$Mutation$UpdateProfileImage(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateProfileImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    return Object.hashAll([l$mediaId]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateProfileImage<TRes> {
  factory CopyWith$Variables$Mutation$UpdateProfileImage(
    Variables$Mutation$UpdateProfileImage instance,
    TRes Function(Variables$Mutation$UpdateProfileImage) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateProfileImage;

  factory CopyWith$Variables$Mutation$UpdateProfileImage.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateProfileImage;

  TRes call({String? mediaId});
}

class _CopyWithImpl$Variables$Mutation$UpdateProfileImage<TRes>
    implements CopyWith$Variables$Mutation$UpdateProfileImage<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateProfileImage(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateProfileImage _instance;

  final TRes Function(Variables$Mutation$UpdateProfileImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? mediaId = _undefined}) =>
      _then(Variables$Mutation$UpdateProfileImage._({
        ..._instance._$data,
        if (mediaId != _undefined && mediaId != null)
          'mediaId': (mediaId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateProfileImage<TRes>
    implements CopyWith$Variables$Mutation$UpdateProfileImage<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateProfileImage(this._res);

  TRes _res;

  call({String? mediaId}) => _res;
}

class Mutation$UpdateProfileImage {
  Mutation$UpdateProfileImage({
    required this.updateOneDriver,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateProfileImage.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProfileImage(
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
    if (!(other is Mutation$UpdateProfileImage) ||
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

extension UtilityExtension$Mutation$UpdateProfileImage
    on Mutation$UpdateProfileImage {
  CopyWith$Mutation$UpdateProfileImage<Mutation$UpdateProfileImage>
      get copyWith => CopyWith$Mutation$UpdateProfileImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProfileImage<TRes> {
  factory CopyWith$Mutation$UpdateProfileImage(
    Mutation$UpdateProfileImage instance,
    TRes Function(Mutation$UpdateProfileImage) then,
  ) = _CopyWithImpl$Mutation$UpdateProfileImage;

  factory CopyWith$Mutation$UpdateProfileImage.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfileImage;

  TRes call({
    Fragment$ProfileFragment? updateOneDriver,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFragment<TRes> get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateProfileImage<TRes>
    implements CopyWith$Mutation$UpdateProfileImage<TRes> {
  _CopyWithImpl$Mutation$UpdateProfileImage(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfileImage _instance;

  final TRes Function(Mutation$UpdateProfileImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateProfileImage(
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

class _CopyWithStubImpl$Mutation$UpdateProfileImage<TRes>
    implements CopyWith$Mutation$UpdateProfileImage<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfileImage(this._res);

  TRes _res;

  call({
    Fragment$ProfileFragment? updateOneDriver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFragment<TRes> get updateOneDriver =>
      CopyWith$Fragment$ProfileFragment.stub(_res);
}

const documentNodeMutationUpdateProfileImage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateProfileImage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaId')),
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
                    name: NameNode(value: 'mediaId'),
                    value: VariableNode(name: NameNode(value: 'mediaId')),
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
Mutation$UpdateProfileImage _parserFn$Mutation$UpdateProfileImage(
        Map<String, dynamic> data) =>
    Mutation$UpdateProfileImage.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateProfileImage = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateProfileImage?,
);

class Options$Mutation$UpdateProfileImage
    extends graphql.MutationOptions<Mutation$UpdateProfileImage> {
  Options$Mutation$UpdateProfileImage({
    String? operationName,
    required Variables$Mutation$UpdateProfileImage variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfileImage? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProfileImage? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProfileImage>? update,
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
                        : _parserFn$Mutation$UpdateProfileImage(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProfileImage,
          parserFn: _parserFn$Mutation$UpdateProfileImage,
        );

  final OnMutationCompleted$Mutation$UpdateProfileImage? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateProfileImage
    extends graphql.WatchQueryOptions<Mutation$UpdateProfileImage> {
  WatchOptions$Mutation$UpdateProfileImage({
    String? operationName,
    required Variables$Mutation$UpdateProfileImage variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfileImage? typedOptimisticResult,
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
          document: documentNodeMutationUpdateProfileImage,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateProfileImage,
        );
}

extension ClientExtension$Mutation$UpdateProfileImage on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateProfileImage>>
      mutate$UpdateProfileImage(
              Options$Mutation$UpdateProfileImage options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateProfileImage>
      watchMutation$UpdateProfileImage(
              WatchOptions$Mutation$UpdateProfileImage options) =>
          this.watchMutation(options);
}

class Query$Profile {
  Query$Profile({
    required this.driver,
    this.$__typename = 'Query',
  });

  factory Query$Profile.fromJson(Map<String, dynamic> json) {
    final l$driver = json['driver'];
    final l$$__typename = json['__typename'];
    return Query$Profile(
      driver: Query$Profile$driver.fromJson((l$driver as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Profile$driver driver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$driver = driver;
    _resultData['driver'] = l$driver.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$driver = driver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$driver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Profile) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$driver = driver;
    final lOther$driver = other.driver;
    if (l$driver != lOther$driver) {
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

extension UtilityExtension$Query$Profile on Query$Profile {
  CopyWith$Query$Profile<Query$Profile> get copyWith => CopyWith$Query$Profile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Profile<TRes> {
  factory CopyWith$Query$Profile(
    Query$Profile instance,
    TRes Function(Query$Profile) then,
  ) = _CopyWithImpl$Query$Profile;

  factory CopyWith$Query$Profile.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile;

  TRes call({
    Query$Profile$driver? driver,
    String? $__typename,
  });
  CopyWith$Query$Profile$driver<TRes> get driver;
}

class _CopyWithImpl$Query$Profile<TRes>
    implements CopyWith$Query$Profile<TRes> {
  _CopyWithImpl$Query$Profile(
    this._instance,
    this._then,
  );

  final Query$Profile _instance;

  final TRes Function(Query$Profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? driver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile(
        driver: driver == _undefined || driver == null
            ? _instance.driver
            : (driver as Query$Profile$driver),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Profile$driver<TRes> get driver {
    final local$driver = _instance.driver;
    return CopyWith$Query$Profile$driver(local$driver, (e) => call(driver: e));
  }
}

class _CopyWithStubImpl$Query$Profile<TRes>
    implements CopyWith$Query$Profile<TRes> {
  _CopyWithStubImpl$Query$Profile(this._res);

  TRes _res;

  call({
    Query$Profile$driver? driver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Profile$driver<TRes> get driver =>
      CopyWith$Query$Profile$driver.stub(_res);
}

const documentNodeQueryProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Profile'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'driver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: StringValueNode(
              value: '1',
              isBlock: false,
            ),
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
Query$Profile _parserFn$Query$Profile(Map<String, dynamic> data) =>
    Query$Profile.fromJson(data);
typedef OnQueryComplete$Query$Profile = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Profile?,
);

class Options$Query$Profile extends graphql.QueryOptions<Query$Profile> {
  Options$Query$Profile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Profile? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Profile? onComplete,
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
                    data == null ? null : _parserFn$Query$Profile(data),
                  ),
          onError: onError,
          document: documentNodeQueryProfile,
          parserFn: _parserFn$Query$Profile,
        );

  final OnQueryComplete$Query$Profile? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Profile
    extends graphql.WatchQueryOptions<Query$Profile> {
  WatchOptions$Query$Profile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Profile? typedOptimisticResult,
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
          document: documentNodeQueryProfile,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Profile,
        );
}

class FetchMoreOptions$Query$Profile extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Profile({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryProfile,
        );
}

extension ClientExtension$Query$Profile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Profile>> query$Profile(
          [Options$Query$Profile? options]) async =>
      await this.query(options ?? Options$Query$Profile());
  graphql.ObservableQuery<Query$Profile> watchQuery$Profile(
          [WatchOptions$Query$Profile? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Profile());
  void writeQuery$Profile({
    required Query$Profile data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryProfile)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Profile? readQuery$Profile({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryProfile)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Profile.fromJson(result);
  }
}

class Query$Profile$driver implements Fragment$ProfileFragment {
  Query$Profile$driver({
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

  factory Query$Profile$driver.fromJson(Map<String, dynamic> json) {
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
    return Query$Profile$driver(
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
          : Query$Profile$driver$media.fromJson(
              (l$media as Map<String, dynamic>)),
      wallets: (l$wallets as List<dynamic>)
          .map((e) => Query$Profile$driver$wallets.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      currentOrders: (l$currentOrders as List<dynamic>)
          .map((e) => Query$Profile$driver$currentOrders.fromJson(
              (e as Map<String, dynamic>)))
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

  final Query$Profile$driver$media? media;

  final List<Query$Profile$driver$wallets> wallets;

  final List<Query$Profile$driver$currentOrders> currentOrders;

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
    if (!(other is Query$Profile$driver) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Profile$driver on Query$Profile$driver {
  CopyWith$Query$Profile$driver<Query$Profile$driver> get copyWith =>
      CopyWith$Query$Profile$driver(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Profile$driver<TRes> {
  factory CopyWith$Query$Profile$driver(
    Query$Profile$driver instance,
    TRes Function(Query$Profile$driver) then,
  ) = _CopyWithImpl$Query$Profile$driver;

  factory CopyWith$Query$Profile$driver.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$driver;

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
    Query$Profile$driver$media? media,
    List<Query$Profile$driver$wallets>? wallets,
    List<Query$Profile$driver$currentOrders>? currentOrders,
    String? $__typename,
  });
  CopyWith$Query$Profile$driver$media<TRes> get media;
  TRes wallets(
      Iterable<Query$Profile$driver$wallets> Function(
              Iterable<
                  CopyWith$Query$Profile$driver$wallets<
                      Query$Profile$driver$wallets>>)
          _fn);
  TRes currentOrders(
      Iterable<Query$Profile$driver$currentOrders> Function(
              Iterable<
                  CopyWith$Query$Profile$driver$currentOrders<
                      Query$Profile$driver$currentOrders>>)
          _fn);
}

class _CopyWithImpl$Query$Profile$driver<TRes>
    implements CopyWith$Query$Profile$driver<TRes> {
  _CopyWithImpl$Query$Profile$driver(
    this._instance,
    this._then,
  );

  final Query$Profile$driver _instance;

  final TRes Function(Query$Profile$driver) _then;

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
      _then(Query$Profile$driver(
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
            : (media as Query$Profile$driver$media?),
        wallets: wallets == _undefined || wallets == null
            ? _instance.wallets
            : (wallets as List<Query$Profile$driver$wallets>),
        currentOrders: currentOrders == _undefined || currentOrders == null
            ? _instance.currentOrders
            : (currentOrders as List<Query$Profile$driver$currentOrders>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Profile$driver$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$Profile$driver$media.stub(_then(_instance))
        : CopyWith$Query$Profile$driver$media(
            local$media, (e) => call(media: e));
  }

  TRes wallets(
          Iterable<Query$Profile$driver$wallets> Function(
                  Iterable<
                      CopyWith$Query$Profile$driver$wallets<
                          Query$Profile$driver$wallets>>)
              _fn) =>
      call(
          wallets: _fn(_instance.wallets
              .map((e) => CopyWith$Query$Profile$driver$wallets(
                    e,
                    (i) => i,
                  ))).toList());

  TRes currentOrders(
          Iterable<Query$Profile$driver$currentOrders> Function(
                  Iterable<
                      CopyWith$Query$Profile$driver$currentOrders<
                          Query$Profile$driver$currentOrders>>)
              _fn) =>
      call(
          currentOrders: _fn(_instance.currentOrders
              .map((e) => CopyWith$Query$Profile$driver$currentOrders(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Profile$driver<TRes>
    implements CopyWith$Query$Profile$driver<TRes> {
  _CopyWithStubImpl$Query$Profile$driver(this._res);

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
    Query$Profile$driver$media? media,
    List<Query$Profile$driver$wallets>? wallets,
    List<Query$Profile$driver$currentOrders>? currentOrders,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Profile$driver$media<TRes> get media =>
      CopyWith$Query$Profile$driver$media.stub(_res);

  wallets(_fn) => _res;

  currentOrders(_fn) => _res;
}

class Query$Profile$driver$media implements Fragment$MediaFragment {
  Query$Profile$driver$media({
    required this.id,
    required this.address,
    this.$__typename = 'Media',
  });

  factory Query$Profile$driver$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Query$Profile$driver$media(
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
    if (!(other is Query$Profile$driver$media) ||
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

extension UtilityExtension$Query$Profile$driver$media
    on Query$Profile$driver$media {
  CopyWith$Query$Profile$driver$media<Query$Profile$driver$media>
      get copyWith => CopyWith$Query$Profile$driver$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$driver$media<TRes> {
  factory CopyWith$Query$Profile$driver$media(
    Query$Profile$driver$media instance,
    TRes Function(Query$Profile$driver$media) then,
  ) = _CopyWithImpl$Query$Profile$driver$media;

  factory CopyWith$Query$Profile$driver$media.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$driver$media;

  TRes call({
    String? id,
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Profile$driver$media<TRes>
    implements CopyWith$Query$Profile$driver$media<TRes> {
  _CopyWithImpl$Query$Profile$driver$media(
    this._instance,
    this._then,
  );

  final Query$Profile$driver$media _instance;

  final TRes Function(Query$Profile$driver$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile$driver$media(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Profile$driver$media<TRes>
    implements CopyWith$Query$Profile$driver$media<TRes> {
  _CopyWithStubImpl$Query$Profile$driver$media(this._res);

  TRes _res;

  call({
    String? id,
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Query$Profile$driver$wallets implements Fragment$WalletFragment {
  Query$Profile$driver$wallets({
    required this.balance,
    required this.currency,
    this.$__typename = 'DriverWallet',
  });

  factory Query$Profile$driver$wallets.fromJson(Map<String, dynamic> json) {
    final l$balance = json['balance'];
    final l$currency = json['currency'];
    final l$$__typename = json['__typename'];
    return Query$Profile$driver$wallets(
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
    if (!(other is Query$Profile$driver$wallets) ||
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

extension UtilityExtension$Query$Profile$driver$wallets
    on Query$Profile$driver$wallets {
  CopyWith$Query$Profile$driver$wallets<Query$Profile$driver$wallets>
      get copyWith => CopyWith$Query$Profile$driver$wallets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$driver$wallets<TRes> {
  factory CopyWith$Query$Profile$driver$wallets(
    Query$Profile$driver$wallets instance,
    TRes Function(Query$Profile$driver$wallets) then,
  ) = _CopyWithImpl$Query$Profile$driver$wallets;

  factory CopyWith$Query$Profile$driver$wallets.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$driver$wallets;

  TRes call({
    double? balance,
    String? currency,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Profile$driver$wallets<TRes>
    implements CopyWith$Query$Profile$driver$wallets<TRes> {
  _CopyWithImpl$Query$Profile$driver$wallets(
    this._instance,
    this._then,
  );

  final Query$Profile$driver$wallets _instance;

  final TRes Function(Query$Profile$driver$wallets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? balance = _undefined,
    Object? currency = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile$driver$wallets(
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

class _CopyWithStubImpl$Query$Profile$driver$wallets<TRes>
    implements CopyWith$Query$Profile$driver$wallets<TRes> {
  _CopyWithStubImpl$Query$Profile$driver$wallets(this._res);

  TRes _res;

  call({
    double? balance,
    String? currency,
    String? $__typename,
  }) =>
      _res;
}

class Query$Profile$driver$currentOrders implements Fragment$CurrentOrder {
  Query$Profile$driver$currentOrders({
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

  factory Query$Profile$driver$currentOrders.fromJson(
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
    return Query$Profile$driver$currentOrders(
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
          : Query$Profile$driver$currentOrders$rider.fromJson(
              (l$rider as Map<String, dynamic>)),
      paymentGateway: l$paymentGateway == null
          ? null
          : Query$Profile$driver$currentOrders$paymentGateway.fromJson(
              (l$paymentGateway as Map<String, dynamic>)),
      savedPaymentMethod: l$savedPaymentMethod == null
          ? null
          : Query$Profile$driver$currentOrders$savedPaymentMethod.fromJson(
              (l$savedPaymentMethod as Map<String, dynamic>)),
      points: (l$points as List<dynamic>)
          .map((e) => Query$Profile$driver$currentOrders$points.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) => Query$Profile$driver$currentOrders$directions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      driverDirections: (l$driverDirections as List<dynamic>?)
          ?.map((e) =>
              Query$Profile$driver$currentOrders$driverDirections.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Query$Profile$driver$currentOrders$service.fromJson(
              (l$service as Map<String, dynamic>)),
      options: (l$options as List<dynamic>)
          .map((e) => Query$Profile$driver$currentOrders$options.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      conversations: (l$conversations as List<dynamic>)
          .map((e) => Query$Profile$driver$currentOrders$conversations.fromJson(
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

  final Query$Profile$driver$currentOrders$rider? rider;

  final Query$Profile$driver$currentOrders$paymentGateway? paymentGateway;

  final Query$Profile$driver$currentOrders$savedPaymentMethod?
      savedPaymentMethod;

  final List<Query$Profile$driver$currentOrders$points> points;

  final List<Query$Profile$driver$currentOrders$directions>? directions;

  final List<Query$Profile$driver$currentOrders$driverDirections>?
      driverDirections;

  final Query$Profile$driver$currentOrders$service? service;

  final List<Query$Profile$driver$currentOrders$options> options;

  final List<Query$Profile$driver$currentOrders$conversations> conversations;

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
    if (!(other is Query$Profile$driver$currentOrders) ||
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

extension UtilityExtension$Query$Profile$driver$currentOrders
    on Query$Profile$driver$currentOrders {
  CopyWith$Query$Profile$driver$currentOrders<
          Query$Profile$driver$currentOrders>
      get copyWith => CopyWith$Query$Profile$driver$currentOrders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$driver$currentOrders<TRes> {
  factory CopyWith$Query$Profile$driver$currentOrders(
    Query$Profile$driver$currentOrders instance,
    TRes Function(Query$Profile$driver$currentOrders) then,
  ) = _CopyWithImpl$Query$Profile$driver$currentOrders;

  factory CopyWith$Query$Profile$driver$currentOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$driver$currentOrders;

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
    Query$Profile$driver$currentOrders$rider? rider,
    Query$Profile$driver$currentOrders$paymentGateway? paymentGateway,
    Query$Profile$driver$currentOrders$savedPaymentMethod? savedPaymentMethod,
    List<Query$Profile$driver$currentOrders$points>? points,
    List<Query$Profile$driver$currentOrders$directions>? directions,
    List<Query$Profile$driver$currentOrders$driverDirections>? driverDirections,
    Query$Profile$driver$currentOrders$service? service,
    List<Query$Profile$driver$currentOrders$options>? options,
    List<Query$Profile$driver$currentOrders$conversations>? conversations,
    String? $__typename,
    DateTime? riderLastSeenMessagesAt,
  });
  CopyWith$Query$Profile$driver$currentOrders$rider<TRes> get rider;
  CopyWith$Query$Profile$driver$currentOrders$paymentGateway<TRes>
      get paymentGateway;
  CopyWith$Query$Profile$driver$currentOrders$savedPaymentMethod<TRes>
      get savedPaymentMethod;
  TRes points(
      Iterable<Query$Profile$driver$currentOrders$points> Function(
              Iterable<
                  CopyWith$Query$Profile$driver$currentOrders$points<
                      Query$Profile$driver$currentOrders$points>>)
          _fn);
  TRes directions(
      Iterable<Query$Profile$driver$currentOrders$directions>? Function(
              Iterable<
                  CopyWith$Query$Profile$driver$currentOrders$directions<
                      Query$Profile$driver$currentOrders$directions>>?)
          _fn);
  TRes driverDirections(
      Iterable<Query$Profile$driver$currentOrders$driverDirections>? Function(
              Iterable<
                  CopyWith$Query$Profile$driver$currentOrders$driverDirections<
                      Query$Profile$driver$currentOrders$driverDirections>>?)
          _fn);
  CopyWith$Query$Profile$driver$currentOrders$service<TRes> get service;
  TRes options(
      Iterable<Query$Profile$driver$currentOrders$options> Function(
              Iterable<
                  CopyWith$Query$Profile$driver$currentOrders$options<
                      Query$Profile$driver$currentOrders$options>>)
          _fn);
  TRes conversations(
      Iterable<Query$Profile$driver$currentOrders$conversations> Function(
              Iterable<
                  CopyWith$Query$Profile$driver$currentOrders$conversations<
                      Query$Profile$driver$currentOrders$conversations>>)
          _fn);
}

class _CopyWithImpl$Query$Profile$driver$currentOrders<TRes>
    implements CopyWith$Query$Profile$driver$currentOrders<TRes> {
  _CopyWithImpl$Query$Profile$driver$currentOrders(
    this._instance,
    this._then,
  );

  final Query$Profile$driver$currentOrders _instance;

  final TRes Function(Query$Profile$driver$currentOrders) _then;

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
      _then(Query$Profile$driver$currentOrders(
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
            : (rider as Query$Profile$driver$currentOrders$rider?),
        paymentGateway: paymentGateway == _undefined
            ? _instance.paymentGateway
            : (paymentGateway
                as Query$Profile$driver$currentOrders$paymentGateway?),
        savedPaymentMethod: savedPaymentMethod == _undefined
            ? _instance.savedPaymentMethod
            : (savedPaymentMethod
                as Query$Profile$driver$currentOrders$savedPaymentMethod?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Query$Profile$driver$currentOrders$points>),
        directions: directions == _undefined
            ? _instance.directions
            : (directions
                as List<Query$Profile$driver$currentOrders$directions>?),
        driverDirections: driverDirections == _undefined
            ? _instance.driverDirections
            : (driverDirections
                as List<Query$Profile$driver$currentOrders$driverDirections>?),
        service: service == _undefined
            ? _instance.service
            : (service as Query$Profile$driver$currentOrders$service?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<Query$Profile$driver$currentOrders$options>),
        conversations: conversations == _undefined || conversations == null
            ? _instance.conversations
            : (conversations
                as List<Query$Profile$driver$currentOrders$conversations>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        riderLastSeenMessagesAt: riderLastSeenMessagesAt == _undefined ||
                riderLastSeenMessagesAt == null
            ? _instance.riderLastSeenMessagesAt
            : (riderLastSeenMessagesAt as DateTime),
      ));

  CopyWith$Query$Profile$driver$currentOrders$rider<TRes> get rider {
    final local$rider = _instance.rider;
    return local$rider == null
        ? CopyWith$Query$Profile$driver$currentOrders$rider.stub(
            _then(_instance))
        : CopyWith$Query$Profile$driver$currentOrders$rider(
            local$rider, (e) => call(rider: e));
  }

  CopyWith$Query$Profile$driver$currentOrders$paymentGateway<TRes>
      get paymentGateway {
    final local$paymentGateway = _instance.paymentGateway;
    return local$paymentGateway == null
        ? CopyWith$Query$Profile$driver$currentOrders$paymentGateway.stub(
            _then(_instance))
        : CopyWith$Query$Profile$driver$currentOrders$paymentGateway(
            local$paymentGateway, (e) => call(paymentGateway: e));
  }

  CopyWith$Query$Profile$driver$currentOrders$savedPaymentMethod<TRes>
      get savedPaymentMethod {
    final local$savedPaymentMethod = _instance.savedPaymentMethod;
    return local$savedPaymentMethod == null
        ? CopyWith$Query$Profile$driver$currentOrders$savedPaymentMethod.stub(
            _then(_instance))
        : CopyWith$Query$Profile$driver$currentOrders$savedPaymentMethod(
            local$savedPaymentMethod, (e) => call(savedPaymentMethod: e));
  }

  TRes points(
          Iterable<Query$Profile$driver$currentOrders$points> Function(
                  Iterable<
                      CopyWith$Query$Profile$driver$currentOrders$points<
                          Query$Profile$driver$currentOrders$points>>)
              _fn) =>
      call(
          points: _fn(_instance.points
              .map((e) => CopyWith$Query$Profile$driver$currentOrders$points(
                    e,
                    (i) => i,
                  ))).toList());

  TRes directions(
          Iterable<Query$Profile$driver$currentOrders$directions>? Function(
                  Iterable<
                      CopyWith$Query$Profile$driver$currentOrders$directions<
                          Query$Profile$driver$currentOrders$directions>>?)
              _fn) =>
      call(
          directions: _fn(_instance.directions?.map(
              (e) => CopyWith$Query$Profile$driver$currentOrders$directions(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes driverDirections(
          Iterable<Query$Profile$driver$currentOrders$driverDirections>? Function(
                  Iterable<
                      CopyWith$Query$Profile$driver$currentOrders$driverDirections<
                          Query$Profile$driver$currentOrders$driverDirections>>?)
              _fn) =>
      call(
          driverDirections: _fn(_instance.driverDirections?.map((e) =>
              CopyWith$Query$Profile$driver$currentOrders$driverDirections(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Query$Profile$driver$currentOrders$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Query$Profile$driver$currentOrders$service.stub(
            _then(_instance))
        : CopyWith$Query$Profile$driver$currentOrders$service(
            local$service, (e) => call(service: e));
  }

  TRes options(
          Iterable<Query$Profile$driver$currentOrders$options> Function(
                  Iterable<
                      CopyWith$Query$Profile$driver$currentOrders$options<
                          Query$Profile$driver$currentOrders$options>>)
              _fn) =>
      call(
          options: _fn(_instance.options
              .map((e) => CopyWith$Query$Profile$driver$currentOrders$options(
                    e,
                    (i) => i,
                  ))).toList());

  TRes conversations(
          Iterable<Query$Profile$driver$currentOrders$conversations> Function(
                  Iterable<
                      CopyWith$Query$Profile$driver$currentOrders$conversations<
                          Query$Profile$driver$currentOrders$conversations>>)
              _fn) =>
      call(
          conversations: _fn(_instance.conversations.map(
              (e) => CopyWith$Query$Profile$driver$currentOrders$conversations(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Profile$driver$currentOrders<TRes>
    implements CopyWith$Query$Profile$driver$currentOrders<TRes> {
  _CopyWithStubImpl$Query$Profile$driver$currentOrders(this._res);

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
    Query$Profile$driver$currentOrders$rider? rider,
    Query$Profile$driver$currentOrders$paymentGateway? paymentGateway,
    Query$Profile$driver$currentOrders$savedPaymentMethod? savedPaymentMethod,
    List<Query$Profile$driver$currentOrders$points>? points,
    List<Query$Profile$driver$currentOrders$directions>? directions,
    List<Query$Profile$driver$currentOrders$driverDirections>? driverDirections,
    Query$Profile$driver$currentOrders$service? service,
    List<Query$Profile$driver$currentOrders$options>? options,
    List<Query$Profile$driver$currentOrders$conversations>? conversations,
    String? $__typename,
    DateTime? riderLastSeenMessagesAt,
  }) =>
      _res;

  CopyWith$Query$Profile$driver$currentOrders$rider<TRes> get rider =>
      CopyWith$Query$Profile$driver$currentOrders$rider.stub(_res);

  CopyWith$Query$Profile$driver$currentOrders$paymentGateway<TRes>
      get paymentGateway =>
          CopyWith$Query$Profile$driver$currentOrders$paymentGateway.stub(_res);

  CopyWith$Query$Profile$driver$currentOrders$savedPaymentMethod<TRes>
      get savedPaymentMethod =>
          CopyWith$Query$Profile$driver$currentOrders$savedPaymentMethod.stub(
              _res);

  points(_fn) => _res;

  directions(_fn) => _res;

  driverDirections(_fn) => _res;

  CopyWith$Query$Profile$driver$currentOrders$service<TRes> get service =>
      CopyWith$Query$Profile$driver$currentOrders$service.stub(_res);

  options(_fn) => _res;

  conversations(_fn) => _res;
}

class Query$Profile$driver$currentOrders$rider
    implements Fragment$CurrentOrder$rider {
  Query$Profile$driver$currentOrders$rider({
    this.firstName,
    this.lastName,
    required this.mobileNumber,
    this.presetAvatarNumber,
    this.media,
    this.$__typename = 'Rider',
  });

  factory Query$Profile$driver$currentOrders$rider.fromJson(
      Map<String, dynamic> json) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$mobileNumber = json['mobileNumber'];
    final l$presetAvatarNumber = json['presetAvatarNumber'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Profile$driver$currentOrders$rider(
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      mobileNumber: (l$mobileNumber as String),
      presetAvatarNumber: (l$presetAvatarNumber as int?),
      media: l$media == null
          ? null
          : Query$Profile$driver$currentOrders$rider$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? firstName;

  final String? lastName;

  final String mobileNumber;

  final int? presetAvatarNumber;

  final Query$Profile$driver$currentOrders$rider$media? media;

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
    if (!(other is Query$Profile$driver$currentOrders$rider) ||
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

extension UtilityExtension$Query$Profile$driver$currentOrders$rider
    on Query$Profile$driver$currentOrders$rider {
  CopyWith$Query$Profile$driver$currentOrders$rider<
          Query$Profile$driver$currentOrders$rider>
      get copyWith => CopyWith$Query$Profile$driver$currentOrders$rider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$driver$currentOrders$rider<TRes> {
  factory CopyWith$Query$Profile$driver$currentOrders$rider(
    Query$Profile$driver$currentOrders$rider instance,
    TRes Function(Query$Profile$driver$currentOrders$rider) then,
  ) = _CopyWithImpl$Query$Profile$driver$currentOrders$rider;

  factory CopyWith$Query$Profile$driver$currentOrders$rider.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$driver$currentOrders$rider;

  TRes call({
    String? firstName,
    String? lastName,
    String? mobileNumber,
    int? presetAvatarNumber,
    Query$Profile$driver$currentOrders$rider$media? media,
    String? $__typename,
  });
  CopyWith$Query$Profile$driver$currentOrders$rider$media<TRes> get media;
}

class _CopyWithImpl$Query$Profile$driver$currentOrders$rider<TRes>
    implements CopyWith$Query$Profile$driver$currentOrders$rider<TRes> {
  _CopyWithImpl$Query$Profile$driver$currentOrders$rider(
    this._instance,
    this._then,
  );

  final Query$Profile$driver$currentOrders$rider _instance;

  final TRes Function(Query$Profile$driver$currentOrders$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? mobileNumber = _undefined,
    Object? presetAvatarNumber = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile$driver$currentOrders$rider(
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
            : (media as Query$Profile$driver$currentOrders$rider$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Profile$driver$currentOrders$rider$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$Profile$driver$currentOrders$rider$media.stub(
            _then(_instance))
        : CopyWith$Query$Profile$driver$currentOrders$rider$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$Profile$driver$currentOrders$rider<TRes>
    implements CopyWith$Query$Profile$driver$currentOrders$rider<TRes> {
  _CopyWithStubImpl$Query$Profile$driver$currentOrders$rider(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? mobileNumber,
    int? presetAvatarNumber,
    Query$Profile$driver$currentOrders$rider$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Profile$driver$currentOrders$rider$media<TRes> get media =>
      CopyWith$Query$Profile$driver$currentOrders$rider$media.stub(_res);
}

class Query$Profile$driver$currentOrders$rider$media
    implements Fragment$CurrentOrder$rider$media {
  Query$Profile$driver$currentOrders$rider$media({
    required this.address,
    this.$__typename = 'Media',
  });

  factory Query$Profile$driver$currentOrders$rider$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Query$Profile$driver$currentOrders$rider$media(
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
    if (!(other is Query$Profile$driver$currentOrders$rider$media) ||
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

extension UtilityExtension$Query$Profile$driver$currentOrders$rider$media
    on Query$Profile$driver$currentOrders$rider$media {
  CopyWith$Query$Profile$driver$currentOrders$rider$media<
          Query$Profile$driver$currentOrders$rider$media>
      get copyWith => CopyWith$Query$Profile$driver$currentOrders$rider$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$driver$currentOrders$rider$media<TRes> {
  factory CopyWith$Query$Profile$driver$currentOrders$rider$media(
    Query$Profile$driver$currentOrders$rider$media instance,
    TRes Function(Query$Profile$driver$currentOrders$rider$media) then,
  ) = _CopyWithImpl$Query$Profile$driver$currentOrders$rider$media;

  factory CopyWith$Query$Profile$driver$currentOrders$rider$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Profile$driver$currentOrders$rider$media;

  TRes call({
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Profile$driver$currentOrders$rider$media<TRes>
    implements CopyWith$Query$Profile$driver$currentOrders$rider$media<TRes> {
  _CopyWithImpl$Query$Profile$driver$currentOrders$rider$media(
    this._instance,
    this._then,
  );

  final Query$Profile$driver$currentOrders$rider$media _instance;

  final TRes Function(Query$Profile$driver$currentOrders$rider$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile$driver$currentOrders$rider$media(
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Profile$driver$currentOrders$rider$media<TRes>
    implements CopyWith$Query$Profile$driver$currentOrders$rider$media<TRes> {
  _CopyWithStubImpl$Query$Profile$driver$currentOrders$rider$media(this._res);

  TRes _res;

  call({
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Query$Profile$driver$currentOrders$paymentGateway
    implements Fragment$PaymentGatewayFragment {
  Query$Profile$driver$currentOrders$paymentGateway({
    required this.id,
    required this.title,
    required this.type,
    required this.linkMethod,
    this.media,
    this.$__typename = 'PaymentGateway',
  });

  factory Query$Profile$driver$currentOrders$paymentGateway.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$linkMethod = json['linkMethod'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$Profile$driver$currentOrders$paymentGateway(
      id: (l$id as String),
      title: (l$title as String),
      type: fromJson$Enum$PaymentGatewayType((l$type as String)),
      linkMethod: fromJson$Enum$GatewayLinkMethod((l$linkMethod as String)),
      media: l$media == null
          ? null
          : Query$Profile$driver$currentOrders$paymentGateway$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final Enum$PaymentGatewayType type;

  final Enum$GatewayLinkMethod linkMethod;

  final Query$Profile$driver$currentOrders$paymentGateway$media? media;

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
    if (!(other is Query$Profile$driver$currentOrders$paymentGateway) ||
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

extension UtilityExtension$Query$Profile$driver$currentOrders$paymentGateway
    on Query$Profile$driver$currentOrders$paymentGateway {
  CopyWith$Query$Profile$driver$currentOrders$paymentGateway<
          Query$Profile$driver$currentOrders$paymentGateway>
      get copyWith =>
          CopyWith$Query$Profile$driver$currentOrders$paymentGateway(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$driver$currentOrders$paymentGateway<
    TRes> {
  factory CopyWith$Query$Profile$driver$currentOrders$paymentGateway(
    Query$Profile$driver$currentOrders$paymentGateway instance,
    TRes Function(Query$Profile$driver$currentOrders$paymentGateway) then,
  ) = _CopyWithImpl$Query$Profile$driver$currentOrders$paymentGateway;

  factory CopyWith$Query$Profile$driver$currentOrders$paymentGateway.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Profile$driver$currentOrders$paymentGateway;

  TRes call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Query$Profile$driver$currentOrders$paymentGateway$media? media,
    String? $__typename,
  });
  CopyWith$Query$Profile$driver$currentOrders$paymentGateway$media<TRes>
      get media;
}

class _CopyWithImpl$Query$Profile$driver$currentOrders$paymentGateway<TRes>
    implements
        CopyWith$Query$Profile$driver$currentOrders$paymentGateway<TRes> {
  _CopyWithImpl$Query$Profile$driver$currentOrders$paymentGateway(
    this._instance,
    this._then,
  );

  final Query$Profile$driver$currentOrders$paymentGateway _instance;

  final TRes Function(Query$Profile$driver$currentOrders$paymentGateway) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? linkMethod = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile$driver$currentOrders$paymentGateway(
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
                as Query$Profile$driver$currentOrders$paymentGateway$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Profile$driver$currentOrders$paymentGateway$media<TRes>
      get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$Profile$driver$currentOrders$paymentGateway$media.stub(
            _then(_instance))
        : CopyWith$Query$Profile$driver$currentOrders$paymentGateway$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$Profile$driver$currentOrders$paymentGateway<TRes>
    implements
        CopyWith$Query$Profile$driver$currentOrders$paymentGateway<TRes> {
  _CopyWithStubImpl$Query$Profile$driver$currentOrders$paymentGateway(
      this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Query$Profile$driver$currentOrders$paymentGateway$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Profile$driver$currentOrders$paymentGateway$media<TRes>
      get media =>
          CopyWith$Query$Profile$driver$currentOrders$paymentGateway$media.stub(
              _res);
}

class Query$Profile$driver$currentOrders$paymentGateway$media
    implements Fragment$PaymentGatewayFragment$media, Fragment$MediaFragment {
  Query$Profile$driver$currentOrders$paymentGateway$media({
    required this.id,
    required this.address,
    this.$__typename = 'Media',
  });

  factory Query$Profile$driver$currentOrders$paymentGateway$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Query$Profile$driver$currentOrders$paymentGateway$media(
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
    if (!(other is Query$Profile$driver$currentOrders$paymentGateway$media) ||
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

extension UtilityExtension$Query$Profile$driver$currentOrders$paymentGateway$media
    on Query$Profile$driver$currentOrders$paymentGateway$media {
  CopyWith$Query$Profile$driver$currentOrders$paymentGateway$media<
          Query$Profile$driver$currentOrders$paymentGateway$media>
      get copyWith =>
          CopyWith$Query$Profile$driver$currentOrders$paymentGateway$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$driver$currentOrders$paymentGateway$media<
    TRes> {
  factory CopyWith$Query$Profile$driver$currentOrders$paymentGateway$media(
    Query$Profile$driver$currentOrders$paymentGateway$media instance,
    TRes Function(Query$Profile$driver$currentOrders$paymentGateway$media) then,
  ) = _CopyWithImpl$Query$Profile$driver$currentOrders$paymentGateway$media;

  factory CopyWith$Query$Profile$driver$currentOrders$paymentGateway$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Profile$driver$currentOrders$paymentGateway$media;

  TRes call({
    String? id,
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Profile$driver$currentOrders$paymentGateway$media<
        TRes>
    implements
        CopyWith$Query$Profile$driver$currentOrders$paymentGateway$media<TRes> {
  _CopyWithImpl$Query$Profile$driver$currentOrders$paymentGateway$media(
    this._instance,
    this._then,
  );

  final Query$Profile$driver$currentOrders$paymentGateway$media _instance;

  final TRes Function(Query$Profile$driver$currentOrders$paymentGateway$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile$driver$currentOrders$paymentGateway$media(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Profile$driver$currentOrders$paymentGateway$media<
        TRes>
    implements
        CopyWith$Query$Profile$driver$currentOrders$paymentGateway$media<TRes> {
  _CopyWithStubImpl$Query$Profile$driver$currentOrders$paymentGateway$media(
      this._res);

  TRes _res;

  call({
    String? id,
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Query$Profile$driver$currentOrders$savedPaymentMethod
    implements Fragment$SavedPaymentMethodFragment {
  Query$Profile$driver$currentOrders$savedPaymentMethod({
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

  factory Query$Profile$driver$currentOrders$savedPaymentMethod.fromJson(
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
    return Query$Profile$driver$currentOrders$savedPaymentMethod(
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
    if (!(other is Query$Profile$driver$currentOrders$savedPaymentMethod) ||
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

extension UtilityExtension$Query$Profile$driver$currentOrders$savedPaymentMethod
    on Query$Profile$driver$currentOrders$savedPaymentMethod {
  CopyWith$Query$Profile$driver$currentOrders$savedPaymentMethod<
          Query$Profile$driver$currentOrders$savedPaymentMethod>
      get copyWith =>
          CopyWith$Query$Profile$driver$currentOrders$savedPaymentMethod(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$driver$currentOrders$savedPaymentMethod<
    TRes> {
  factory CopyWith$Query$Profile$driver$currentOrders$savedPaymentMethod(
    Query$Profile$driver$currentOrders$savedPaymentMethod instance,
    TRes Function(Query$Profile$driver$currentOrders$savedPaymentMethod) then,
  ) = _CopyWithImpl$Query$Profile$driver$currentOrders$savedPaymentMethod;

  factory CopyWith$Query$Profile$driver$currentOrders$savedPaymentMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Profile$driver$currentOrders$savedPaymentMethod;

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

class _CopyWithImpl$Query$Profile$driver$currentOrders$savedPaymentMethod<TRes>
    implements
        CopyWith$Query$Profile$driver$currentOrders$savedPaymentMethod<TRes> {
  _CopyWithImpl$Query$Profile$driver$currentOrders$savedPaymentMethod(
    this._instance,
    this._then,
  );

  final Query$Profile$driver$currentOrders$savedPaymentMethod _instance;

  final TRes Function(Query$Profile$driver$currentOrders$savedPaymentMethod)
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
      _then(Query$Profile$driver$currentOrders$savedPaymentMethod(
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

class _CopyWithStubImpl$Query$Profile$driver$currentOrders$savedPaymentMethod<
        TRes>
    implements
        CopyWith$Query$Profile$driver$currentOrders$savedPaymentMethod<TRes> {
  _CopyWithStubImpl$Query$Profile$driver$currentOrders$savedPaymentMethod(
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

class Query$Profile$driver$currentOrders$points implements Fragment$Point {
  Query$Profile$driver$currentOrders$points({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Query$Profile$driver$currentOrders$points.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Query$Profile$driver$currentOrders$points(
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
    if (!(other is Query$Profile$driver$currentOrders$points) ||
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

extension UtilityExtension$Query$Profile$driver$currentOrders$points
    on Query$Profile$driver$currentOrders$points {
  CopyWith$Query$Profile$driver$currentOrders$points<
          Query$Profile$driver$currentOrders$points>
      get copyWith => CopyWith$Query$Profile$driver$currentOrders$points(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$driver$currentOrders$points<TRes> {
  factory CopyWith$Query$Profile$driver$currentOrders$points(
    Query$Profile$driver$currentOrders$points instance,
    TRes Function(Query$Profile$driver$currentOrders$points) then,
  ) = _CopyWithImpl$Query$Profile$driver$currentOrders$points;

  factory CopyWith$Query$Profile$driver$currentOrders$points.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$driver$currentOrders$points;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Profile$driver$currentOrders$points<TRes>
    implements CopyWith$Query$Profile$driver$currentOrders$points<TRes> {
  _CopyWithImpl$Query$Profile$driver$currentOrders$points(
    this._instance,
    this._then,
  );

  final Query$Profile$driver$currentOrders$points _instance;

  final TRes Function(Query$Profile$driver$currentOrders$points) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile$driver$currentOrders$points(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Profile$driver$currentOrders$points<TRes>
    implements CopyWith$Query$Profile$driver$currentOrders$points<TRes> {
  _CopyWithStubImpl$Query$Profile$driver$currentOrders$points(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Query$Profile$driver$currentOrders$directions
    implements Fragment$CurrentOrder$directions, Fragment$Point {
  Query$Profile$driver$currentOrders$directions({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Query$Profile$driver$currentOrders$directions.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Query$Profile$driver$currentOrders$directions(
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
    if (!(other is Query$Profile$driver$currentOrders$directions) ||
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

extension UtilityExtension$Query$Profile$driver$currentOrders$directions
    on Query$Profile$driver$currentOrders$directions {
  CopyWith$Query$Profile$driver$currentOrders$directions<
          Query$Profile$driver$currentOrders$directions>
      get copyWith => CopyWith$Query$Profile$driver$currentOrders$directions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$driver$currentOrders$directions<TRes> {
  factory CopyWith$Query$Profile$driver$currentOrders$directions(
    Query$Profile$driver$currentOrders$directions instance,
    TRes Function(Query$Profile$driver$currentOrders$directions) then,
  ) = _CopyWithImpl$Query$Profile$driver$currentOrders$directions;

  factory CopyWith$Query$Profile$driver$currentOrders$directions.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Profile$driver$currentOrders$directions;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Profile$driver$currentOrders$directions<TRes>
    implements CopyWith$Query$Profile$driver$currentOrders$directions<TRes> {
  _CopyWithImpl$Query$Profile$driver$currentOrders$directions(
    this._instance,
    this._then,
  );

  final Query$Profile$driver$currentOrders$directions _instance;

  final TRes Function(Query$Profile$driver$currentOrders$directions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile$driver$currentOrders$directions(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Profile$driver$currentOrders$directions<TRes>
    implements CopyWith$Query$Profile$driver$currentOrders$directions<TRes> {
  _CopyWithStubImpl$Query$Profile$driver$currentOrders$directions(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Query$Profile$driver$currentOrders$driverDirections
    implements Fragment$Point {
  Query$Profile$driver$currentOrders$driverDirections({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Query$Profile$driver$currentOrders$driverDirections.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Query$Profile$driver$currentOrders$driverDirections(
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
    if (!(other is Query$Profile$driver$currentOrders$driverDirections) ||
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

extension UtilityExtension$Query$Profile$driver$currentOrders$driverDirections
    on Query$Profile$driver$currentOrders$driverDirections {
  CopyWith$Query$Profile$driver$currentOrders$driverDirections<
          Query$Profile$driver$currentOrders$driverDirections>
      get copyWith =>
          CopyWith$Query$Profile$driver$currentOrders$driverDirections(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$driver$currentOrders$driverDirections<
    TRes> {
  factory CopyWith$Query$Profile$driver$currentOrders$driverDirections(
    Query$Profile$driver$currentOrders$driverDirections instance,
    TRes Function(Query$Profile$driver$currentOrders$driverDirections) then,
  ) = _CopyWithImpl$Query$Profile$driver$currentOrders$driverDirections;

  factory CopyWith$Query$Profile$driver$currentOrders$driverDirections.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Profile$driver$currentOrders$driverDirections;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Profile$driver$currentOrders$driverDirections<TRes>
    implements
        CopyWith$Query$Profile$driver$currentOrders$driverDirections<TRes> {
  _CopyWithImpl$Query$Profile$driver$currentOrders$driverDirections(
    this._instance,
    this._then,
  );

  final Query$Profile$driver$currentOrders$driverDirections _instance;

  final TRes Function(Query$Profile$driver$currentOrders$driverDirections)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile$driver$currentOrders$driverDirections(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Profile$driver$currentOrders$driverDirections<
        TRes>
    implements
        CopyWith$Query$Profile$driver$currentOrders$driverDirections<TRes> {
  _CopyWithStubImpl$Query$Profile$driver$currentOrders$driverDirections(
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

class Query$Profile$driver$currentOrders$service
    implements Fragment$CurrentOrder$service {
  Query$Profile$driver$currentOrders$service({
    required this.name,
    required this.paymentMethod,
    this.$__typename = 'Service',
  });

  factory Query$Profile$driver$currentOrders$service.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$paymentMethod = json['paymentMethod'];
    final l$$__typename = json['__typename'];
    return Query$Profile$driver$currentOrders$service(
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
    if (!(other is Query$Profile$driver$currentOrders$service) ||
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

extension UtilityExtension$Query$Profile$driver$currentOrders$service
    on Query$Profile$driver$currentOrders$service {
  CopyWith$Query$Profile$driver$currentOrders$service<
          Query$Profile$driver$currentOrders$service>
      get copyWith => CopyWith$Query$Profile$driver$currentOrders$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$driver$currentOrders$service<TRes> {
  factory CopyWith$Query$Profile$driver$currentOrders$service(
    Query$Profile$driver$currentOrders$service instance,
    TRes Function(Query$Profile$driver$currentOrders$service) then,
  ) = _CopyWithImpl$Query$Profile$driver$currentOrders$service;

  factory CopyWith$Query$Profile$driver$currentOrders$service.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$driver$currentOrders$service;

  TRes call({
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Profile$driver$currentOrders$service<TRes>
    implements CopyWith$Query$Profile$driver$currentOrders$service<TRes> {
  _CopyWithImpl$Query$Profile$driver$currentOrders$service(
    this._instance,
    this._then,
  );

  final Query$Profile$driver$currentOrders$service _instance;

  final TRes Function(Query$Profile$driver$currentOrders$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? paymentMethod = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile$driver$currentOrders$service(
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

class _CopyWithStubImpl$Query$Profile$driver$currentOrders$service<TRes>
    implements CopyWith$Query$Profile$driver$currentOrders$service<TRes> {
  _CopyWithStubImpl$Query$Profile$driver$currentOrders$service(this._res);

  TRes _res;

  call({
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    String? $__typename,
  }) =>
      _res;
}

class Query$Profile$driver$currentOrders$options
    implements Fragment$RideOption {
  Query$Profile$driver$currentOrders$options({
    required this.id,
    required this.name,
    this.description,
    required this.type,
    this.additionalFee,
    required this.icon,
    this.$__typename = 'ServiceOption',
  });

  factory Query$Profile$driver$currentOrders$options.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$type = json['type'];
    final l$additionalFee = json['additionalFee'];
    final l$icon = json['icon'];
    final l$$__typename = json['__typename'];
    return Query$Profile$driver$currentOrders$options(
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
    if (!(other is Query$Profile$driver$currentOrders$options) ||
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

extension UtilityExtension$Query$Profile$driver$currentOrders$options
    on Query$Profile$driver$currentOrders$options {
  CopyWith$Query$Profile$driver$currentOrders$options<
          Query$Profile$driver$currentOrders$options>
      get copyWith => CopyWith$Query$Profile$driver$currentOrders$options(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$driver$currentOrders$options<TRes> {
  factory CopyWith$Query$Profile$driver$currentOrders$options(
    Query$Profile$driver$currentOrders$options instance,
    TRes Function(Query$Profile$driver$currentOrders$options) then,
  ) = _CopyWithImpl$Query$Profile$driver$currentOrders$options;

  factory CopyWith$Query$Profile$driver$currentOrders$options.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile$driver$currentOrders$options;

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

class _CopyWithImpl$Query$Profile$driver$currentOrders$options<TRes>
    implements CopyWith$Query$Profile$driver$currentOrders$options<TRes> {
  _CopyWithImpl$Query$Profile$driver$currentOrders$options(
    this._instance,
    this._then,
  );

  final Query$Profile$driver$currentOrders$options _instance;

  final TRes Function(Query$Profile$driver$currentOrders$options) _then;

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
      _then(Query$Profile$driver$currentOrders$options(
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

class _CopyWithStubImpl$Query$Profile$driver$currentOrders$options<TRes>
    implements CopyWith$Query$Profile$driver$currentOrders$options<TRes> {
  _CopyWithStubImpl$Query$Profile$driver$currentOrders$options(this._res);

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

class Query$Profile$driver$currentOrders$conversations
    implements Fragment$ChatMessage {
  Query$Profile$driver$currentOrders$conversations({
    required this.id,
    required this.sentAt,
    required this.requestId,
    required this.content,
    required this.status,
    required this.sentByDriver,
    this.$__typename = 'OrderMessage',
  });

  factory Query$Profile$driver$currentOrders$conversations.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$sentAt = json['sentAt'];
    final l$requestId = json['requestId'];
    final l$content = json['content'];
    final l$status = json['status'];
    final l$sentByDriver = json['sentByDriver'];
    final l$$__typename = json['__typename'];
    return Query$Profile$driver$currentOrders$conversations(
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
    if (!(other is Query$Profile$driver$currentOrders$conversations) ||
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

extension UtilityExtension$Query$Profile$driver$currentOrders$conversations
    on Query$Profile$driver$currentOrders$conversations {
  CopyWith$Query$Profile$driver$currentOrders$conversations<
          Query$Profile$driver$currentOrders$conversations>
      get copyWith => CopyWith$Query$Profile$driver$currentOrders$conversations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Profile$driver$currentOrders$conversations<TRes> {
  factory CopyWith$Query$Profile$driver$currentOrders$conversations(
    Query$Profile$driver$currentOrders$conversations instance,
    TRes Function(Query$Profile$driver$currentOrders$conversations) then,
  ) = _CopyWithImpl$Query$Profile$driver$currentOrders$conversations;

  factory CopyWith$Query$Profile$driver$currentOrders$conversations.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Profile$driver$currentOrders$conversations;

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

class _CopyWithImpl$Query$Profile$driver$currentOrders$conversations<TRes>
    implements CopyWith$Query$Profile$driver$currentOrders$conversations<TRes> {
  _CopyWithImpl$Query$Profile$driver$currentOrders$conversations(
    this._instance,
    this._then,
  );

  final Query$Profile$driver$currentOrders$conversations _instance;

  final TRes Function(Query$Profile$driver$currentOrders$conversations) _then;

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
      _then(Query$Profile$driver$currentOrders$conversations(
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

class _CopyWithStubImpl$Query$Profile$driver$currentOrders$conversations<TRes>
    implements CopyWith$Query$Profile$driver$currentOrders$conversations<TRes> {
  _CopyWithStubImpl$Query$Profile$driver$currentOrders$conversations(this._res);

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

class Query$FeedbacksSummary {
  Query$FeedbacksSummary({
    required this.feedbacksSummary,
    this.$__typename = 'Query',
  });

  factory Query$FeedbacksSummary.fromJson(Map<String, dynamic> json) {
    final l$feedbacksSummary = json['feedbacksSummary'];
    final l$$__typename = json['__typename'];
    return Query$FeedbacksSummary(
      feedbacksSummary: Query$FeedbacksSummary$feedbacksSummary.fromJson(
          (l$feedbacksSummary as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FeedbacksSummary$feedbacksSummary feedbacksSummary;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$feedbacksSummary = feedbacksSummary;
    _resultData['feedbacksSummary'] = l$feedbacksSummary.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$feedbacksSummary = feedbacksSummary;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$feedbacksSummary,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FeedbacksSummary) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$feedbacksSummary = feedbacksSummary;
    final lOther$feedbacksSummary = other.feedbacksSummary;
    if (l$feedbacksSummary != lOther$feedbacksSummary) {
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

extension UtilityExtension$Query$FeedbacksSummary on Query$FeedbacksSummary {
  CopyWith$Query$FeedbacksSummary<Query$FeedbacksSummary> get copyWith =>
      CopyWith$Query$FeedbacksSummary(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FeedbacksSummary<TRes> {
  factory CopyWith$Query$FeedbacksSummary(
    Query$FeedbacksSummary instance,
    TRes Function(Query$FeedbacksSummary) then,
  ) = _CopyWithImpl$Query$FeedbacksSummary;

  factory CopyWith$Query$FeedbacksSummary.stub(TRes res) =
      _CopyWithStubImpl$Query$FeedbacksSummary;

  TRes call({
    Query$FeedbacksSummary$feedbacksSummary? feedbacksSummary,
    String? $__typename,
  });
  CopyWith$Query$FeedbacksSummary$feedbacksSummary<TRes> get feedbacksSummary;
}

class _CopyWithImpl$Query$FeedbacksSummary<TRes>
    implements CopyWith$Query$FeedbacksSummary<TRes> {
  _CopyWithImpl$Query$FeedbacksSummary(
    this._instance,
    this._then,
  );

  final Query$FeedbacksSummary _instance;

  final TRes Function(Query$FeedbacksSummary) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? feedbacksSummary = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FeedbacksSummary(
        feedbacksSummary:
            feedbacksSummary == _undefined || feedbacksSummary == null
                ? _instance.feedbacksSummary
                : (feedbacksSummary as Query$FeedbacksSummary$feedbacksSummary),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FeedbacksSummary$feedbacksSummary<TRes> get feedbacksSummary {
    final local$feedbacksSummary = _instance.feedbacksSummary;
    return CopyWith$Query$FeedbacksSummary$feedbacksSummary(
        local$feedbacksSummary, (e) => call(feedbacksSummary: e));
  }
}

class _CopyWithStubImpl$Query$FeedbacksSummary<TRes>
    implements CopyWith$Query$FeedbacksSummary<TRes> {
  _CopyWithStubImpl$Query$FeedbacksSummary(this._res);

  TRes _res;

  call({
    Query$FeedbacksSummary$feedbacksSummary? feedbacksSummary,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FeedbacksSummary$feedbacksSummary<TRes> get feedbacksSummary =>
      CopyWith$Query$FeedbacksSummary$feedbacksSummary.stub(_res);
}

const documentNodeQueryFeedbacksSummary = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FeedbacksSummary'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'feedbacksSummary'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'averageRating'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'goodPoints'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'badPoints'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'goodReviews'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'serviceName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'rating'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'review'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'goodPoints'),
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
]);
Query$FeedbacksSummary _parserFn$Query$FeedbacksSummary(
        Map<String, dynamic> data) =>
    Query$FeedbacksSummary.fromJson(data);
typedef OnQueryComplete$Query$FeedbacksSummary = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FeedbacksSummary?,
);

class Options$Query$FeedbacksSummary
    extends graphql.QueryOptions<Query$FeedbacksSummary> {
  Options$Query$FeedbacksSummary({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FeedbacksSummary? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FeedbacksSummary? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$FeedbacksSummary(data),
                  ),
          onError: onError,
          document: documentNodeQueryFeedbacksSummary,
          parserFn: _parserFn$Query$FeedbacksSummary,
        );

  final OnQueryComplete$Query$FeedbacksSummary? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FeedbacksSummary
    extends graphql.WatchQueryOptions<Query$FeedbacksSummary> {
  WatchOptions$Query$FeedbacksSummary({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FeedbacksSummary? typedOptimisticResult,
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
          document: documentNodeQueryFeedbacksSummary,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FeedbacksSummary,
        );
}

class FetchMoreOptions$Query$FeedbacksSummary extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FeedbacksSummary(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFeedbacksSummary,
        );
}

extension ClientExtension$Query$FeedbacksSummary on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FeedbacksSummary>> query$FeedbacksSummary(
          [Options$Query$FeedbacksSummary? options]) async =>
      await this.query(options ?? Options$Query$FeedbacksSummary());
  graphql.ObservableQuery<Query$FeedbacksSummary> watchQuery$FeedbacksSummary(
          [WatchOptions$Query$FeedbacksSummary? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FeedbacksSummary());
  void writeQuery$FeedbacksSummary({
    required Query$FeedbacksSummary data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryFeedbacksSummary)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FeedbacksSummary? readQuery$FeedbacksSummary({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFeedbacksSummary)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FeedbacksSummary.fromJson(result);
  }
}

class Query$FeedbacksSummary$feedbacksSummary {
  Query$FeedbacksSummary$feedbacksSummary({
    this.averageRating,
    required this.goodPoints,
    required this.badPoints,
    required this.goodReviews,
    this.$__typename = 'FeedbacksSummary',
  });

  factory Query$FeedbacksSummary$feedbacksSummary.fromJson(
      Map<String, dynamic> json) {
    final l$averageRating = json['averageRating'];
    final l$goodPoints = json['goodPoints'];
    final l$badPoints = json['badPoints'];
    final l$goodReviews = json['goodReviews'];
    final l$$__typename = json['__typename'];
    return Query$FeedbacksSummary$feedbacksSummary(
      averageRating: (l$averageRating as num?)?.toDouble(),
      goodPoints:
          (l$goodPoints as List<dynamic>).map((e) => (e as String)).toList(),
      badPoints:
          (l$badPoints as List<dynamic>).map((e) => (e as String)).toList(),
      goodReviews: (l$goodReviews as List<dynamic>)
          .map((e) =>
              Query$FeedbacksSummary$feedbacksSummary$goodReviews.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final double? averageRating;

  final List<String> goodPoints;

  final List<String> badPoints;

  final List<Query$FeedbacksSummary$feedbacksSummary$goodReviews> goodReviews;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$averageRating = averageRating;
    _resultData['averageRating'] = l$averageRating;
    final l$goodPoints = goodPoints;
    _resultData['goodPoints'] = l$goodPoints.map((e) => e).toList();
    final l$badPoints = badPoints;
    _resultData['badPoints'] = l$badPoints.map((e) => e).toList();
    final l$goodReviews = goodReviews;
    _resultData['goodReviews'] = l$goodReviews.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$averageRating = averageRating;
    final l$goodPoints = goodPoints;
    final l$badPoints = badPoints;
    final l$goodReviews = goodReviews;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$averageRating,
      Object.hashAll(l$goodPoints.map((v) => v)),
      Object.hashAll(l$badPoints.map((v) => v)),
      Object.hashAll(l$goodReviews.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FeedbacksSummary$feedbacksSummary) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$averageRating = averageRating;
    final lOther$averageRating = other.averageRating;
    if (l$averageRating != lOther$averageRating) {
      return false;
    }
    final l$goodPoints = goodPoints;
    final lOther$goodPoints = other.goodPoints;
    if (l$goodPoints.length != lOther$goodPoints.length) {
      return false;
    }
    for (int i = 0; i < l$goodPoints.length; i++) {
      final l$goodPoints$entry = l$goodPoints[i];
      final lOther$goodPoints$entry = lOther$goodPoints[i];
      if (l$goodPoints$entry != lOther$goodPoints$entry) {
        return false;
      }
    }
    final l$badPoints = badPoints;
    final lOther$badPoints = other.badPoints;
    if (l$badPoints.length != lOther$badPoints.length) {
      return false;
    }
    for (int i = 0; i < l$badPoints.length; i++) {
      final l$badPoints$entry = l$badPoints[i];
      final lOther$badPoints$entry = lOther$badPoints[i];
      if (l$badPoints$entry != lOther$badPoints$entry) {
        return false;
      }
    }
    final l$goodReviews = goodReviews;
    final lOther$goodReviews = other.goodReviews;
    if (l$goodReviews.length != lOther$goodReviews.length) {
      return false;
    }
    for (int i = 0; i < l$goodReviews.length; i++) {
      final l$goodReviews$entry = l$goodReviews[i];
      final lOther$goodReviews$entry = lOther$goodReviews[i];
      if (l$goodReviews$entry != lOther$goodReviews$entry) {
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

extension UtilityExtension$Query$FeedbacksSummary$feedbacksSummary
    on Query$FeedbacksSummary$feedbacksSummary {
  CopyWith$Query$FeedbacksSummary$feedbacksSummary<
          Query$FeedbacksSummary$feedbacksSummary>
      get copyWith => CopyWith$Query$FeedbacksSummary$feedbacksSummary(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FeedbacksSummary$feedbacksSummary<TRes> {
  factory CopyWith$Query$FeedbacksSummary$feedbacksSummary(
    Query$FeedbacksSummary$feedbacksSummary instance,
    TRes Function(Query$FeedbacksSummary$feedbacksSummary) then,
  ) = _CopyWithImpl$Query$FeedbacksSummary$feedbacksSummary;

  factory CopyWith$Query$FeedbacksSummary$feedbacksSummary.stub(TRes res) =
      _CopyWithStubImpl$Query$FeedbacksSummary$feedbacksSummary;

  TRes call({
    double? averageRating,
    List<String>? goodPoints,
    List<String>? badPoints,
    List<Query$FeedbacksSummary$feedbacksSummary$goodReviews>? goodReviews,
    String? $__typename,
  });
  TRes goodReviews(
      Iterable<Query$FeedbacksSummary$feedbacksSummary$goodReviews> Function(
              Iterable<
                  CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews<
                      Query$FeedbacksSummary$feedbacksSummary$goodReviews>>)
          _fn);
}

class _CopyWithImpl$Query$FeedbacksSummary$feedbacksSummary<TRes>
    implements CopyWith$Query$FeedbacksSummary$feedbacksSummary<TRes> {
  _CopyWithImpl$Query$FeedbacksSummary$feedbacksSummary(
    this._instance,
    this._then,
  );

  final Query$FeedbacksSummary$feedbacksSummary _instance;

  final TRes Function(Query$FeedbacksSummary$feedbacksSummary) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? averageRating = _undefined,
    Object? goodPoints = _undefined,
    Object? badPoints = _undefined,
    Object? goodReviews = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FeedbacksSummary$feedbacksSummary(
        averageRating: averageRating == _undefined
            ? _instance.averageRating
            : (averageRating as double?),
        goodPoints: goodPoints == _undefined || goodPoints == null
            ? _instance.goodPoints
            : (goodPoints as List<String>),
        badPoints: badPoints == _undefined || badPoints == null
            ? _instance.badPoints
            : (badPoints as List<String>),
        goodReviews: goodReviews == _undefined || goodReviews == null
            ? _instance.goodReviews
            : (goodReviews
                as List<Query$FeedbacksSummary$feedbacksSummary$goodReviews>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes goodReviews(
          Iterable<Query$FeedbacksSummary$feedbacksSummary$goodReviews> Function(
                  Iterable<
                      CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews<
                          Query$FeedbacksSummary$feedbacksSummary$goodReviews>>)
              _fn) =>
      call(
          goodReviews: _fn(_instance.goodReviews.map((e) =>
              CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FeedbacksSummary$feedbacksSummary<TRes>
    implements CopyWith$Query$FeedbacksSummary$feedbacksSummary<TRes> {
  _CopyWithStubImpl$Query$FeedbacksSummary$feedbacksSummary(this._res);

  TRes _res;

  call({
    double? averageRating,
    List<String>? goodPoints,
    List<String>? badPoints,
    List<Query$FeedbacksSummary$feedbacksSummary$goodReviews>? goodReviews,
    String? $__typename,
  }) =>
      _res;

  goodReviews(_fn) => _res;
}

class Query$FeedbacksSummary$feedbacksSummary$goodReviews {
  Query$FeedbacksSummary$feedbacksSummary$goodReviews({
    required this.serviceName,
    required this.rating,
    required this.review,
    required this.goodPoints,
    this.$__typename = 'Review',
  });

  factory Query$FeedbacksSummary$feedbacksSummary$goodReviews.fromJson(
      Map<String, dynamic> json) {
    final l$serviceName = json['serviceName'];
    final l$rating = json['rating'];
    final l$review = json['review'];
    final l$goodPoints = json['goodPoints'];
    final l$$__typename = json['__typename'];
    return Query$FeedbacksSummary$feedbacksSummary$goodReviews(
      serviceName: (l$serviceName as String),
      rating: (l$rating as num).toDouble(),
      review: (l$review as String),
      goodPoints:
          (l$goodPoints as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String serviceName;

  final double rating;

  final String review;

  final List<String> goodPoints;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$serviceName = serviceName;
    _resultData['serviceName'] = l$serviceName;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$review = review;
    _resultData['review'] = l$review;
    final l$goodPoints = goodPoints;
    _resultData['goodPoints'] = l$goodPoints.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$serviceName = serviceName;
    final l$rating = rating;
    final l$review = review;
    final l$goodPoints = goodPoints;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$serviceName,
      l$rating,
      l$review,
      Object.hashAll(l$goodPoints.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FeedbacksSummary$feedbacksSummary$goodReviews) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceName = serviceName;
    final lOther$serviceName = other.serviceName;
    if (l$serviceName != lOther$serviceName) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$review = review;
    final lOther$review = other.review;
    if (l$review != lOther$review) {
      return false;
    }
    final l$goodPoints = goodPoints;
    final lOther$goodPoints = other.goodPoints;
    if (l$goodPoints.length != lOther$goodPoints.length) {
      return false;
    }
    for (int i = 0; i < l$goodPoints.length; i++) {
      final l$goodPoints$entry = l$goodPoints[i];
      final lOther$goodPoints$entry = lOther$goodPoints[i];
      if (l$goodPoints$entry != lOther$goodPoints$entry) {
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

extension UtilityExtension$Query$FeedbacksSummary$feedbacksSummary$goodReviews
    on Query$FeedbacksSummary$feedbacksSummary$goodReviews {
  CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews<
          Query$FeedbacksSummary$feedbacksSummary$goodReviews>
      get copyWith =>
          CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews<
    TRes> {
  factory CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews(
    Query$FeedbacksSummary$feedbacksSummary$goodReviews instance,
    TRes Function(Query$FeedbacksSummary$feedbacksSummary$goodReviews) then,
  ) = _CopyWithImpl$Query$FeedbacksSummary$feedbacksSummary$goodReviews;

  factory CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FeedbacksSummary$feedbacksSummary$goodReviews;

  TRes call({
    String? serviceName,
    double? rating,
    String? review,
    List<String>? goodPoints,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FeedbacksSummary$feedbacksSummary$goodReviews<TRes>
    implements
        CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews<TRes> {
  _CopyWithImpl$Query$FeedbacksSummary$feedbacksSummary$goodReviews(
    this._instance,
    this._then,
  );

  final Query$FeedbacksSummary$feedbacksSummary$goodReviews _instance;

  final TRes Function(Query$FeedbacksSummary$feedbacksSummary$goodReviews)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? serviceName = _undefined,
    Object? rating = _undefined,
    Object? review = _undefined,
    Object? goodPoints = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FeedbacksSummary$feedbacksSummary$goodReviews(
        serviceName: serviceName == _undefined || serviceName == null
            ? _instance.serviceName
            : (serviceName as String),
        rating: rating == _undefined || rating == null
            ? _instance.rating
            : (rating as double),
        review: review == _undefined || review == null
            ? _instance.review
            : (review as String),
        goodPoints: goodPoints == _undefined || goodPoints == null
            ? _instance.goodPoints
            : (goodPoints as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FeedbacksSummary$feedbacksSummary$goodReviews<
        TRes>
    implements
        CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews<TRes> {
  _CopyWithStubImpl$Query$FeedbacksSummary$feedbacksSummary$goodReviews(
      this._res);

  TRes _res;

  call({
    String? serviceName,
    double? rating,
    String? review,
    List<String>? goodPoints,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateFcmToken {
  factory Variables$Mutation$UpdateFcmToken({required String token}) =>
      Variables$Mutation$UpdateFcmToken._({
        r'token': token,
      });

  Variables$Mutation$UpdateFcmToken._(this._$data);

  factory Variables$Mutation$UpdateFcmToken.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$token = data['token'];
    result$data['token'] = (l$token as String);
    return Variables$Mutation$UpdateFcmToken._(result$data);
  }

  Map<String, dynamic> _$data;

  String get token => (_$data['token'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$token = token;
    result$data['token'] = l$token;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateFcmToken<Variables$Mutation$UpdateFcmToken>
      get copyWith => CopyWith$Variables$Mutation$UpdateFcmToken(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateFcmToken) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$token = token;
    return Object.hashAll([l$token]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateFcmToken<TRes> {
  factory CopyWith$Variables$Mutation$UpdateFcmToken(
    Variables$Mutation$UpdateFcmToken instance,
    TRes Function(Variables$Mutation$UpdateFcmToken) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateFcmToken;

  factory CopyWith$Variables$Mutation$UpdateFcmToken.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateFcmToken;

  TRes call({String? token});
}

class _CopyWithImpl$Variables$Mutation$UpdateFcmToken<TRes>
    implements CopyWith$Variables$Mutation$UpdateFcmToken<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateFcmToken(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateFcmToken _instance;

  final TRes Function(Variables$Mutation$UpdateFcmToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? token = _undefined}) =>
      _then(Variables$Mutation$UpdateFcmToken._({
        ..._instance._$data,
        if (token != _undefined && token != null) 'token': (token as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateFcmToken<TRes>
    implements CopyWith$Variables$Mutation$UpdateFcmToken<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateFcmToken(this._res);

  TRes _res;

  call({String? token}) => _res;
}

class Mutation$UpdateFcmToken {
  Mutation$UpdateFcmToken({
    required this.updateOneDriver,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateFcmToken.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateFcmToken(
      updateOneDriver: Mutation$UpdateFcmToken$updateOneDriver.fromJson(
          (l$updateOneDriver as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateFcmToken$updateOneDriver updateOneDriver;

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
    if (!(other is Mutation$UpdateFcmToken) ||
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

extension UtilityExtension$Mutation$UpdateFcmToken on Mutation$UpdateFcmToken {
  CopyWith$Mutation$UpdateFcmToken<Mutation$UpdateFcmToken> get copyWith =>
      CopyWith$Mutation$UpdateFcmToken(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateFcmToken<TRes> {
  factory CopyWith$Mutation$UpdateFcmToken(
    Mutation$UpdateFcmToken instance,
    TRes Function(Mutation$UpdateFcmToken) then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken;

  factory CopyWith$Mutation$UpdateFcmToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken;

  TRes call({
    Mutation$UpdateFcmToken$updateOneDriver? updateOneDriver,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver<TRes> get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateFcmToken<TRes>
    implements CopyWith$Mutation$UpdateFcmToken<TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken _instance;

  final TRes Function(Mutation$UpdateFcmToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateFcmToken(
        updateOneDriver:
            updateOneDriver == _undefined || updateOneDriver == null
                ? _instance.updateOneDriver
                : (updateOneDriver as Mutation$UpdateFcmToken$updateOneDriver),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateFcmToken$updateOneDriver<TRes> get updateOneDriver {
    final local$updateOneDriver = _instance.updateOneDriver;
    return CopyWith$Mutation$UpdateFcmToken$updateOneDriver(
        local$updateOneDriver, (e) => call(updateOneDriver: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateFcmToken<TRes>
    implements CopyWith$Mutation$UpdateFcmToken<TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken(this._res);

  TRes _res;

  call({
    Mutation$UpdateFcmToken$updateOneDriver? updateOneDriver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateFcmToken$updateOneDriver<TRes> get updateOneDriver =>
      CopyWith$Mutation$UpdateFcmToken$updateOneDriver.stub(_res);
}

const documentNodeMutationUpdateFcmToken = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateFcmToken'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'token')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
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
                    value: VariableNode(name: NameNode(value: 'token')),
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
Mutation$UpdateFcmToken _parserFn$Mutation$UpdateFcmToken(
        Map<String, dynamic> data) =>
    Mutation$UpdateFcmToken.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateFcmToken = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateFcmToken?,
);

class Options$Mutation$UpdateFcmToken
    extends graphql.MutationOptions<Mutation$UpdateFcmToken> {
  Options$Mutation$UpdateFcmToken({
    String? operationName,
    required Variables$Mutation$UpdateFcmToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateFcmToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateFcmToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateFcmToken>? update,
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
                        : _parserFn$Mutation$UpdateFcmToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateFcmToken,
          parserFn: _parserFn$Mutation$UpdateFcmToken,
        );

  final OnMutationCompleted$Mutation$UpdateFcmToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateFcmToken
    extends graphql.WatchQueryOptions<Mutation$UpdateFcmToken> {
  WatchOptions$Mutation$UpdateFcmToken({
    String? operationName,
    required Variables$Mutation$UpdateFcmToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateFcmToken? typedOptimisticResult,
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
          document: documentNodeMutationUpdateFcmToken,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateFcmToken,
        );
}

extension ClientExtension$Mutation$UpdateFcmToken on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateFcmToken>> mutate$UpdateFcmToken(
          Options$Mutation$UpdateFcmToken options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateFcmToken> watchMutation$UpdateFcmToken(
          WatchOptions$Mutation$UpdateFcmToken options) =>
      this.watchMutation(options);
}

class Mutation$UpdateFcmToken$updateOneDriver
    implements Fragment$ProfileFragment {
  Mutation$UpdateFcmToken$updateOneDriver({
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

  factory Mutation$UpdateFcmToken$updateOneDriver.fromJson(
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
    return Mutation$UpdateFcmToken$updateOneDriver(
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
          : Mutation$UpdateFcmToken$updateOneDriver$media.fromJson(
              (l$media as Map<String, dynamic>)),
      wallets: (l$wallets as List<dynamic>)
          .map((e) => Mutation$UpdateFcmToken$updateOneDriver$wallets.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      currentOrders: (l$currentOrders as List<dynamic>)
          .map((e) =>
              Mutation$UpdateFcmToken$updateOneDriver$currentOrders.fromJson(
                  (e as Map<String, dynamic>)))
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

  final Mutation$UpdateFcmToken$updateOneDriver$media? media;

  final List<Mutation$UpdateFcmToken$updateOneDriver$wallets> wallets;

  final List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders>
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
    if (!(other is Mutation$UpdateFcmToken$updateOneDriver) ||
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

extension UtilityExtension$Mutation$UpdateFcmToken$updateOneDriver
    on Mutation$UpdateFcmToken$updateOneDriver {
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver<
          Mutation$UpdateFcmToken$updateOneDriver>
      get copyWith => CopyWith$Mutation$UpdateFcmToken$updateOneDriver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateFcmToken$updateOneDriver<TRes> {
  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver(
    Mutation$UpdateFcmToken$updateOneDriver instance,
    TRes Function(Mutation$UpdateFcmToken$updateOneDriver) then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver;

  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver;

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
    Mutation$UpdateFcmToken$updateOneDriver$media? media,
    List<Mutation$UpdateFcmToken$updateOneDriver$wallets>? wallets,
    List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders>? currentOrders,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$media<TRes> get media;
  TRes wallets(
      Iterable<Mutation$UpdateFcmToken$updateOneDriver$wallets> Function(
              Iterable<
                  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$wallets<
                      Mutation$UpdateFcmToken$updateOneDriver$wallets>>)
          _fn);
  TRes currentOrders(
      Iterable<Mutation$UpdateFcmToken$updateOneDriver$currentOrders> Function(
              Iterable<
                  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders<
                      Mutation$UpdateFcmToken$updateOneDriver$currentOrders>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver<TRes>
    implements CopyWith$Mutation$UpdateFcmToken$updateOneDriver<TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken$updateOneDriver _instance;

  final TRes Function(Mutation$UpdateFcmToken$updateOneDriver) _then;

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
      _then(Mutation$UpdateFcmToken$updateOneDriver(
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
            : (media as Mutation$UpdateFcmToken$updateOneDriver$media?),
        wallets: wallets == _undefined || wallets == null
            ? _instance.wallets
            : (wallets
                as List<Mutation$UpdateFcmToken$updateOneDriver$wallets>),
        currentOrders: currentOrders == _undefined || currentOrders == null
            ? _instance.currentOrders
            : (currentOrders
                as List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Mutation$UpdateFcmToken$updateOneDriver$media.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateFcmToken$updateOneDriver$media(
            local$media, (e) => call(media: e));
  }

  TRes wallets(
          Iterable<Mutation$UpdateFcmToken$updateOneDriver$wallets> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateFcmToken$updateOneDriver$wallets<
                          Mutation$UpdateFcmToken$updateOneDriver$wallets>>)
              _fn) =>
      call(
          wallets: _fn(_instance.wallets.map(
              (e) => CopyWith$Mutation$UpdateFcmToken$updateOneDriver$wallets(
                    e,
                    (i) => i,
                  ))).toList());

  TRes currentOrders(
          Iterable<Mutation$UpdateFcmToken$updateOneDriver$currentOrders> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders<
                          Mutation$UpdateFcmToken$updateOneDriver$currentOrders>>)
              _fn) =>
      call(
          currentOrders: _fn(_instance.currentOrders.map((e) =>
              CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver<TRes>
    implements CopyWith$Mutation$UpdateFcmToken$updateOneDriver<TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver(this._res);

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
    Mutation$UpdateFcmToken$updateOneDriver$media? media,
    List<Mutation$UpdateFcmToken$updateOneDriver$wallets>? wallets,
    List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders>? currentOrders,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$media<TRes> get media =>
      CopyWith$Mutation$UpdateFcmToken$updateOneDriver$media.stub(_res);

  wallets(_fn) => _res;

  currentOrders(_fn) => _res;
}

class Mutation$UpdateFcmToken$updateOneDriver$media
    implements Fragment$MediaFragment {
  Mutation$UpdateFcmToken$updateOneDriver$media({
    required this.id,
    required this.address,
    this.$__typename = 'Media',
  });

  factory Mutation$UpdateFcmToken$updateOneDriver$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateFcmToken$updateOneDriver$media(
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
    if (!(other is Mutation$UpdateFcmToken$updateOneDriver$media) ||
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

extension UtilityExtension$Mutation$UpdateFcmToken$updateOneDriver$media
    on Mutation$UpdateFcmToken$updateOneDriver$media {
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$media<
          Mutation$UpdateFcmToken$updateOneDriver$media>
      get copyWith => CopyWith$Mutation$UpdateFcmToken$updateOneDriver$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateFcmToken$updateOneDriver$media<TRes> {
  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$media(
    Mutation$UpdateFcmToken$updateOneDriver$media instance,
    TRes Function(Mutation$UpdateFcmToken$updateOneDriver$media) then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$media;

  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$media.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$media;

  TRes call({
    String? id,
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$media<TRes>
    implements CopyWith$Mutation$UpdateFcmToken$updateOneDriver$media<TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$media(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken$updateOneDriver$media _instance;

  final TRes Function(Mutation$UpdateFcmToken$updateOneDriver$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateFcmToken$updateOneDriver$media(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$media<TRes>
    implements CopyWith$Mutation$UpdateFcmToken$updateOneDriver$media<TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$media(this._res);

  TRes _res;

  call({
    String? id,
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateFcmToken$updateOneDriver$wallets
    implements Fragment$WalletFragment {
  Mutation$UpdateFcmToken$updateOneDriver$wallets({
    required this.balance,
    required this.currency,
    this.$__typename = 'DriverWallet',
  });

  factory Mutation$UpdateFcmToken$updateOneDriver$wallets.fromJson(
      Map<String, dynamic> json) {
    final l$balance = json['balance'];
    final l$currency = json['currency'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateFcmToken$updateOneDriver$wallets(
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
    if (!(other is Mutation$UpdateFcmToken$updateOneDriver$wallets) ||
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

extension UtilityExtension$Mutation$UpdateFcmToken$updateOneDriver$wallets
    on Mutation$UpdateFcmToken$updateOneDriver$wallets {
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$wallets<
          Mutation$UpdateFcmToken$updateOneDriver$wallets>
      get copyWith => CopyWith$Mutation$UpdateFcmToken$updateOneDriver$wallets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateFcmToken$updateOneDriver$wallets<TRes> {
  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$wallets(
    Mutation$UpdateFcmToken$updateOneDriver$wallets instance,
    TRes Function(Mutation$UpdateFcmToken$updateOneDriver$wallets) then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$wallets;

  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$wallets.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$wallets;

  TRes call({
    double? balance,
    String? currency,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$wallets<TRes>
    implements CopyWith$Mutation$UpdateFcmToken$updateOneDriver$wallets<TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$wallets(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken$updateOneDriver$wallets _instance;

  final TRes Function(Mutation$UpdateFcmToken$updateOneDriver$wallets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? balance = _undefined,
    Object? currency = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateFcmToken$updateOneDriver$wallets(
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

class _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$wallets<TRes>
    implements CopyWith$Mutation$UpdateFcmToken$updateOneDriver$wallets<TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$wallets(this._res);

  TRes _res;

  call({
    double? balance,
    String? currency,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateFcmToken$updateOneDriver$currentOrders
    implements Fragment$CurrentOrder {
  Mutation$UpdateFcmToken$updateOneDriver$currentOrders({
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

  factory Mutation$UpdateFcmToken$updateOneDriver$currentOrders.fromJson(
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
    return Mutation$UpdateFcmToken$updateOneDriver$currentOrders(
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
          : Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider
              .fromJson((l$rider as Map<String, dynamic>)),
      paymentGateway: l$paymentGateway == null
          ? null
          : Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway
              .fromJson((l$paymentGateway as Map<String, dynamic>)),
      savedPaymentMethod: l$savedPaymentMethod == null
          ? null
          : Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod
              .fromJson((l$savedPaymentMethod as Map<String, dynamic>)),
      points: (l$points as List<dynamic>)
          .map((e) =>
              Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) =>
              Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      driverDirections: (l$driverDirections as List<dynamic>?)
          ?.map((e) =>
              Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service
              .fromJson((l$service as Map<String, dynamic>)),
      options: (l$options as List<dynamic>)
          .map((e) =>
              Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      conversations: (l$conversations as List<dynamic>)
          .map((e) =>
              Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations
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

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider? rider;

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway?
      paymentGateway;

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod?
      savedPaymentMethod;

  final List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points>
      points;

  final List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions>?
      directions;

  final List<
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections>?
      driverDirections;

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service? service;

  final List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options>
      options;

  final List<
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations>
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
    if (!(other is Mutation$UpdateFcmToken$updateOneDriver$currentOrders) ||
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

extension UtilityExtension$Mutation$UpdateFcmToken$updateOneDriver$currentOrders
    on Mutation$UpdateFcmToken$updateOneDriver$currentOrders {
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders<
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders>
      get copyWith =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders<
    TRes> {
  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders(
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders instance,
    TRes Function(Mutation$UpdateFcmToken$updateOneDriver$currentOrders) then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders;

  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders;

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
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider? rider,
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway?
        paymentGateway,
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod?
        savedPaymentMethod,
    List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points>? points,
    List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions>?
        directions,
    List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections>?
        driverDirections,
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service? service,
    List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options>?
        options,
    List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations>?
        conversations,
    String? $__typename,
    DateTime? riderLastSeenMessagesAt,
  });
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider<TRes>
      get rider;
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway<
      TRes> get paymentGateway;
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod<
      TRes> get savedPaymentMethod;
  TRes points(
      Iterable<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points> Function(
              Iterable<
                  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points<
                      Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points>>)
          _fn);
  TRes directions(
      Iterable<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions>? Function(
              Iterable<
                  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions<
                      Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions>>?)
          _fn);
  TRes driverDirections(
      Iterable<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections>? Function(
              Iterable<
                  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections<
                      Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections>>?)
          _fn);
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service<TRes>
      get service;
  TRes options(
      Iterable<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options> Function(
              Iterable<
                  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options<
                      Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options>>)
          _fn);
  TRes conversations(
      Iterable<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations> Function(
              Iterable<
                  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations<
                      Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders<TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders<TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders _instance;

  final TRes Function(Mutation$UpdateFcmToken$updateOneDriver$currentOrders)
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
      _then(Mutation$UpdateFcmToken$updateOneDriver$currentOrders(
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
                as Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider?),
        paymentGateway: paymentGateway == _undefined
            ? _instance.paymentGateway
            : (paymentGateway
                as Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway?),
        savedPaymentMethod: savedPaymentMethod == _undefined
            ? _instance.savedPaymentMethod
            : (savedPaymentMethod
                as Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<
                Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points>),
        directions: directions == _undefined
            ? _instance.directions
            : (directions as List<
                Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions>?),
        driverDirections: driverDirections == _undefined
            ? _instance.driverDirections
            : (driverDirections as List<
                Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections>?),
        service: service == _undefined
            ? _instance.service
            : (service
                as Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<
                Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options>),
        conversations: conversations == _undefined || conversations == null
            ? _instance.conversations
            : (conversations as List<
                Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        riderLastSeenMessagesAt: riderLastSeenMessagesAt == _undefined ||
                riderLastSeenMessagesAt == null
            ? _instance.riderLastSeenMessagesAt
            : (riderLastSeenMessagesAt as DateTime),
      ));

  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider<TRes>
      get rider {
    final local$rider = _instance.rider;
    return local$rider == null
        ? CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider(
            local$rider, (e) => call(rider: e));
  }

  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway<
      TRes> get paymentGateway {
    final local$paymentGateway = _instance.paymentGateway;
    return local$paymentGateway == null
        ? CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway(
            local$paymentGateway, (e) => call(paymentGateway: e));
  }

  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod<
      TRes> get savedPaymentMethod {
    final local$savedPaymentMethod = _instance.savedPaymentMethod;
    return local$savedPaymentMethod == null
        ? CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod(
            local$savedPaymentMethod, (e) => call(savedPaymentMethod: e));
  }

  TRes points(
          Iterable<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points<
                          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points>>)
              _fn) =>
      call(
          points: _fn(_instance.points.map((e) =>
              CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points(
                e,
                (i) => i,
              ))).toList());

  TRes directions(
          Iterable<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions>? Function(
                  Iterable<
                      CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions<
                          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions>>?)
              _fn) =>
      call(
          directions: _fn(_instance.directions?.map((e) =>
              CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions(
                e,
                (i) => i,
              )))?.toList());

  TRes driverDirections(
          Iterable<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections>? Function(
                  Iterable<
                      CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections<
                          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections>>?)
              _fn) =>
      call(
          driverDirections: _fn(_instance.driverDirections?.map((e) =>
              CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service<TRes>
      get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service(
            local$service, (e) => call(service: e));
  }

  TRes options(
          Iterable<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options<
                          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options>>)
              _fn) =>
      call(
          options: _fn(_instance.options.map((e) =>
              CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options(
                e,
                (i) => i,
              ))).toList());

  TRes conversations(
          Iterable<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations> Function(
                  Iterable<
                      CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations<
                          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations>>)
              _fn) =>
      call(
          conversations: _fn(_instance.conversations.map((e) =>
              CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders<TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders(
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
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider? rider,
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway?
        paymentGateway,
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod?
        savedPaymentMethod,
    List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points>? points,
    List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions>?
        directions,
    List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections>?
        driverDirections,
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service? service,
    List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options>?
        options,
    List<Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations>?
        conversations,
    String? $__typename,
    DateTime? riderLastSeenMessagesAt,
  }) =>
      _res;

  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider<TRes>
      get rider =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider
              .stub(_res);

  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway<
          TRes>
      get paymentGateway =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway
              .stub(_res);

  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod<
          TRes>
      get savedPaymentMethod =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod
              .stub(_res);

  points(_fn) => _res;

  directions(_fn) => _res;

  driverDirections(_fn) => _res;

  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service<TRes>
      get service =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service
              .stub(_res);

  options(_fn) => _res;

  conversations(_fn) => _res;
}

class Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider
    implements Fragment$CurrentOrder$rider {
  Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider({
    this.firstName,
    this.lastName,
    required this.mobileNumber,
    this.presetAvatarNumber,
    this.media,
    this.$__typename = 'Rider',
  });

  factory Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider.fromJson(
      Map<String, dynamic> json) {
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$mobileNumber = json['mobileNumber'];
    final l$presetAvatarNumber = json['presetAvatarNumber'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider(
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      mobileNumber: (l$mobileNumber as String),
      presetAvatarNumber: (l$presetAvatarNumber as int?),
      media: l$media == null
          ? null
          : Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media
              .fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? firstName;

  final String? lastName;

  final String mobileNumber;

  final int? presetAvatarNumber;

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media?
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
            is Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider) ||
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

extension UtilityExtension$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider
    on Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider {
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider<
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider>
      get copyWith =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider<
    TRes> {
  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider(
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider instance,
    TRes Function(Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider)
        then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider;

  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider;

  TRes call({
    String? firstName,
    String? lastName,
    String? mobileNumber,
    int? presetAvatarNumber,
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media? media,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media<
      TRes> get media;
}

class _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider<
            TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider _instance;

  final TRes Function(
      Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? mobileNumber = _undefined,
    Object? presetAvatarNumber = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider(
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
                as Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media<
      TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider(
      this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? mobileNumber,
    int? presetAvatarNumber,
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media<
          TRes>
      get media =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media
              .stub(_res);
}

class Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media
    implements Fragment$CurrentOrder$rider$media {
  Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media({
    required this.address,
    this.$__typename = 'Media',
  });

  factory Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media.fromJson(
      Map<String, dynamic> json) {
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media(
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
            is Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media) ||
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

extension UtilityExtension$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media
    on Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media {
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media<
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media>
      get copyWith =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media<
    TRes> {
  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media(
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media instance,
    TRes Function(
            Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media)
        then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media;

  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media;

  TRes call({
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media<
            TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media
      _instance;

  final TRes Function(
      Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media(
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$rider$media(
      this._res);

  TRes _res;

  call({
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway
    implements Fragment$PaymentGatewayFragment {
  Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway({
    required this.id,
    required this.title,
    required this.type,
    required this.linkMethod,
    this.media,
    this.$__typename = 'PaymentGateway',
  });

  factory Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$linkMethod = json['linkMethod'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway(
      id: (l$id as String),
      title: (l$title as String),
      type: fromJson$Enum$PaymentGatewayType((l$type as String)),
      linkMethod: fromJson$Enum$GatewayLinkMethod((l$linkMethod as String)),
      media: l$media == null
          ? null
          : Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media
              .fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final Enum$PaymentGatewayType type;

  final Enum$GatewayLinkMethod linkMethod;

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media?
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
            is Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway) ||
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

extension UtilityExtension$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway
    on Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway {
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway<
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway>
      get copyWith =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway<
    TRes> {
  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway(
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway
        instance,
    TRes Function(
            Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway)
        then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway;

  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway;

  TRes call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media?
        media,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media<
      TRes> get media;
}

class _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway<
            TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway
      _instance;

  final TRes Function(
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway)
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
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway(
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
                as Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media<
      TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway(
      this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media?
        media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media<
          TRes>
      get media =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media
              .stub(_res);
}

class Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media
    implements Fragment$PaymentGatewayFragment$media, Fragment$MediaFragment {
  Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media({
    required this.id,
    required this.address,
    this.$__typename = 'Media',
  });

  factory Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media(
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
            is Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media) ||
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

extension UtilityExtension$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media
    on Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media {
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media<
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media>
      get copyWith =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media<
    TRes> {
  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media(
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media
        instance,
    TRes Function(
            Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media)
        then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media;

  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media;

  TRes call({
    String? id,
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media<
            TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media
      _instance;

  final TRes Function(
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$paymentGateway$media(
      this._res);

  TRes _res;

  call({
    String? id,
    String? address,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod
    implements Fragment$SavedPaymentMethodFragment {
  Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod({
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

  factory Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod.fromJson(
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
    return Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod(
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
            is Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod) ||
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

extension UtilityExtension$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod
    on Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod {
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod<
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod>
      get copyWith =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod<
    TRes> {
  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod(
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod
        instance,
    TRes Function(
            Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod)
        then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod;

  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod;

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

class _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod<
            TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod
      _instance;

  final TRes Function(
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod)
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
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod(
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

class _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$savedPaymentMethod(
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

class Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points
    implements Fragment$Point {
  Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points(
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
            is Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points) ||
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

extension UtilityExtension$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points
    on Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points {
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points<
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points>
      get copyWith =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points<
    TRes> {
  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points(
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points instance,
    TRes Function(Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points)
        then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points;

  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points<
            TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points _instance;

  final TRes Function(
      Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$points(
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

class Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions
    implements Fragment$CurrentOrder$directions, Fragment$Point {
  Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions(
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
            is Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions) ||
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

extension UtilityExtension$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions
    on Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions {
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions<
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions>
      get copyWith =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions<
    TRes> {
  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions(
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions instance,
    TRes Function(
            Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions)
        then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions;

  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions<
            TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions
      _instance;

  final TRes Function(
      Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$directions(
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

class Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections
    implements Fragment$Point {
  Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections(
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
            is Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections) ||
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

extension UtilityExtension$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections
    on Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections {
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections<
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections>
      get copyWith =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections<
    TRes> {
  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections(
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections
        instance,
    TRes Function(
            Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections)
        then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections;

  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections<
            TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections
      _instance;

  final TRes Function(
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$driverDirections(
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

class Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service
    implements Fragment$CurrentOrder$service {
  Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service({
    required this.name,
    required this.paymentMethod,
    this.$__typename = 'Service',
  });

  factory Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$paymentMethod = json['paymentMethod'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service(
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
            is Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service) ||
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

extension UtilityExtension$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service
    on Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service {
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service<
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service>
      get copyWith =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service<
    TRes> {
  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service(
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service instance,
    TRes Function(Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service)
        then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service;

  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service;

  TRes call({
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service<
            TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service _instance;

  final TRes Function(
      Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? paymentMethod = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service(
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

class _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$service(
      this._res);

  TRes _res;

  call({
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options
    implements Fragment$RideOption {
  Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options({
    required this.id,
    required this.name,
    this.description,
    required this.type,
    this.additionalFee,
    required this.icon,
    this.$__typename = 'ServiceOption',
  });

  factory Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$type = json['type'];
    final l$additionalFee = json['additionalFee'];
    final l$icon = json['icon'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options(
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
            is Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options) ||
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

extension UtilityExtension$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options
    on Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options {
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options<
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options>
      get copyWith =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options<
    TRes> {
  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options(
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options instance,
    TRes Function(Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options)
        then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options;

  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options;

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

class _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options<
            TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options _instance;

  final TRes Function(
      Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options) _then;

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
      _then(Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options(
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

class _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$options(
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

class Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations
    implements Fragment$ChatMessage {
  Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations({
    required this.id,
    required this.sentAt,
    required this.requestId,
    required this.content,
    required this.status,
    required this.sentByDriver,
    this.$__typename = 'OrderMessage',
  });

  factory Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$sentAt = json['sentAt'];
    final l$requestId = json['requestId'];
    final l$content = json['content'];
    final l$status = json['status'];
    final l$sentByDriver = json['sentByDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations(
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
            is Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations) ||
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

extension UtilityExtension$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations
    on Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations {
  CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations<
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations>
      get copyWith =>
          CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations<
    TRes> {
  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations(
    Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations
        instance,
    TRes Function(
            Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations)
        then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations;

  factory CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations;

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

class _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations<
            TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations
      _instance;

  final TRes Function(
          Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations)
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
      _then(Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations(
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

class _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations<
        TRes>
    implements
        CopyWith$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken$updateOneDriver$currentOrders$conversations(
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

class Mutation$DeleteAccount {
  Mutation$DeleteAccount({
    required this.deleteUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteAccount.fromJson(Map<String, dynamic> json) {
    final l$deleteUser = json['deleteUser'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccount(
      deleteUser: Mutation$DeleteAccount$deleteUser.fromJson(
          (l$deleteUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteAccount$deleteUser deleteUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteUser = deleteUser;
    _resultData['deleteUser'] = l$deleteUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteUser = deleteUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteAccount) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteUser = deleteUser;
    final lOther$deleteUser = other.deleteUser;
    if (l$deleteUser != lOther$deleteUser) {
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

extension UtilityExtension$Mutation$DeleteAccount on Mutation$DeleteAccount {
  CopyWith$Mutation$DeleteAccount<Mutation$DeleteAccount> get copyWith =>
      CopyWith$Mutation$DeleteAccount(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAccount<TRes> {
  factory CopyWith$Mutation$DeleteAccount(
    Mutation$DeleteAccount instance,
    TRes Function(Mutation$DeleteAccount) then,
  ) = _CopyWithImpl$Mutation$DeleteAccount;

  factory CopyWith$Mutation$DeleteAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAccount;

  TRes call({
    Mutation$DeleteAccount$deleteUser? deleteUser,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteAccount$deleteUser<TRes> get deleteUser;
}

class _CopyWithImpl$Mutation$DeleteAccount<TRes>
    implements CopyWith$Mutation$DeleteAccount<TRes> {
  _CopyWithImpl$Mutation$DeleteAccount(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccount _instance;

  final TRes Function(Mutation$DeleteAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteAccount(
        deleteUser: deleteUser == _undefined || deleteUser == null
            ? _instance.deleteUser
            : (deleteUser as Mutation$DeleteAccount$deleteUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteAccount$deleteUser<TRes> get deleteUser {
    final local$deleteUser = _instance.deleteUser;
    return CopyWith$Mutation$DeleteAccount$deleteUser(
        local$deleteUser, (e) => call(deleteUser: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteAccount<TRes>
    implements CopyWith$Mutation$DeleteAccount<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAccount(this._res);

  TRes _res;

  call({
    Mutation$DeleteAccount$deleteUser? deleteUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteAccount$deleteUser<TRes> get deleteUser =>
      CopyWith$Mutation$DeleteAccount$deleteUser.stub(_res);
}

const documentNodeMutationDeleteAccount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteAccount'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteUser'),
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
Mutation$DeleteAccount _parserFn$Mutation$DeleteAccount(
        Map<String, dynamic> data) =>
    Mutation$DeleteAccount.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteAccount = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteAccount?,
);

class Options$Mutation$DeleteAccount
    extends graphql.MutationOptions<Mutation$DeleteAccount> {
  Options$Mutation$DeleteAccount({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteAccount? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteAccount? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteAccount>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
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
                        : _parserFn$Mutation$DeleteAccount(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteAccount,
          parserFn: _parserFn$Mutation$DeleteAccount,
        );

  final OnMutationCompleted$Mutation$DeleteAccount? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteAccount
    extends graphql.WatchQueryOptions<Mutation$DeleteAccount> {
  WatchOptions$Mutation$DeleteAccount({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteAccount? typedOptimisticResult,
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
          document: documentNodeMutationDeleteAccount,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteAccount,
        );
}

extension ClientExtension$Mutation$DeleteAccount on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteAccount>> mutate$DeleteAccount(
          [Options$Mutation$DeleteAccount? options]) async =>
      await this.mutate(options ?? Options$Mutation$DeleteAccount());
  graphql.ObservableQuery<Mutation$DeleteAccount> watchMutation$DeleteAccount(
          [WatchOptions$Mutation$DeleteAccount? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$DeleteAccount());
}

class Mutation$DeleteAccount$deleteUser {
  Mutation$DeleteAccount$deleteUser({
    required this.id,
    this.$__typename = 'Driver',
  });

  factory Mutation$DeleteAccount$deleteUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccount$deleteUser(
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
    if (!(other is Mutation$DeleteAccount$deleteUser) ||
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

extension UtilityExtension$Mutation$DeleteAccount$deleteUser
    on Mutation$DeleteAccount$deleteUser {
  CopyWith$Mutation$DeleteAccount$deleteUser<Mutation$DeleteAccount$deleteUser>
      get copyWith => CopyWith$Mutation$DeleteAccount$deleteUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteAccount$deleteUser<TRes> {
  factory CopyWith$Mutation$DeleteAccount$deleteUser(
    Mutation$DeleteAccount$deleteUser instance,
    TRes Function(Mutation$DeleteAccount$deleteUser) then,
  ) = _CopyWithImpl$Mutation$DeleteAccount$deleteUser;

  factory CopyWith$Mutation$DeleteAccount$deleteUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAccount$deleteUser;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteAccount$deleteUser<TRes>
    implements CopyWith$Mutation$DeleteAccount$deleteUser<TRes> {
  _CopyWithImpl$Mutation$DeleteAccount$deleteUser(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccount$deleteUser _instance;

  final TRes Function(Mutation$DeleteAccount$deleteUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteAccount$deleteUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteAccount$deleteUser<TRes>
    implements CopyWith$Mutation$DeleteAccount$deleteUser<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAccount$deleteUser(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
