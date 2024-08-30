import '../schema.gql.dart';
import 'dart:async';
import 'package:flutter_common/core/graphql/scalars/datetime.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$Earnings {
  factory Variables$Query$Earnings({
    required Enum$TimeQuery timeFrame,
    required DateTime startDate,
    required DateTime endDate,
  }) =>
      Variables$Query$Earnings._({
        r'timeFrame': timeFrame,
        r'startDate': startDate,
        r'endDate': endDate,
      });

  Variables$Query$Earnings._(this._$data);

  factory Variables$Query$Earnings.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$timeFrame = data['timeFrame'];
    result$data['timeFrame'] = fromJson$Enum$TimeQuery((l$timeFrame as String));
    final l$startDate = data['startDate'];
    result$data['startDate'] = fromGraphQLDateTimeToDartDateTime(l$startDate);
    final l$endDate = data['endDate'];
    result$data['endDate'] = fromGraphQLDateTimeToDartDateTime(l$endDate);
    return Variables$Query$Earnings._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$TimeQuery get timeFrame => (_$data['timeFrame'] as Enum$TimeQuery);

  DateTime get startDate => (_$data['startDate'] as DateTime);

  DateTime get endDate => (_$data['endDate'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$timeFrame = timeFrame;
    result$data['timeFrame'] = toJson$Enum$TimeQuery(l$timeFrame);
    final l$startDate = startDate;
    result$data['startDate'] = fromDartDateTimeToGraphQLDateTime(l$startDate);
    final l$endDate = endDate;
    result$data['endDate'] = fromDartDateTimeToGraphQLDateTime(l$endDate);
    return result$data;
  }

  CopyWith$Variables$Query$Earnings<Variables$Query$Earnings> get copyWith =>
      CopyWith$Variables$Query$Earnings(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Earnings) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$timeFrame = timeFrame;
    final lOther$timeFrame = other.timeFrame;
    if (l$timeFrame != lOther$timeFrame) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$timeFrame = timeFrame;
    final l$startDate = startDate;
    final l$endDate = endDate;
    return Object.hashAll([
      l$timeFrame,
      l$startDate,
      l$endDate,
    ]);
  }
}

abstract class CopyWith$Variables$Query$Earnings<TRes> {
  factory CopyWith$Variables$Query$Earnings(
    Variables$Query$Earnings instance,
    TRes Function(Variables$Query$Earnings) then,
  ) = _CopyWithImpl$Variables$Query$Earnings;

  factory CopyWith$Variables$Query$Earnings.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Earnings;

  TRes call({
    Enum$TimeQuery? timeFrame,
    DateTime? startDate,
    DateTime? endDate,
  });
}

class _CopyWithImpl$Variables$Query$Earnings<TRes>
    implements CopyWith$Variables$Query$Earnings<TRes> {
  _CopyWithImpl$Variables$Query$Earnings(
    this._instance,
    this._then,
  );

  final Variables$Query$Earnings _instance;

  final TRes Function(Variables$Query$Earnings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? timeFrame = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
  }) =>
      _then(Variables$Query$Earnings._({
        ..._instance._$data,
        if (timeFrame != _undefined && timeFrame != null)
          'timeFrame': (timeFrame as Enum$TimeQuery),
        if (startDate != _undefined && startDate != null)
          'startDate': (startDate as DateTime),
        if (endDate != _undefined && endDate != null)
          'endDate': (endDate as DateTime),
      }));
}

class _CopyWithStubImpl$Variables$Query$Earnings<TRes>
    implements CopyWith$Variables$Query$Earnings<TRes> {
  _CopyWithStubImpl$Variables$Query$Earnings(this._res);

  TRes _res;

  call({
    Enum$TimeQuery? timeFrame,
    DateTime? startDate,
    DateTime? endDate,
  }) =>
      _res;
}

class Query$Earnings {
  Query$Earnings({
    required this.getStatsNew,
    this.$__typename = 'Query',
  });

  factory Query$Earnings.fromJson(Map<String, dynamic> json) {
    final l$getStatsNew = json['getStatsNew'];
    final l$$__typename = json['__typename'];
    return Query$Earnings(
      getStatsNew: Query$Earnings$getStatsNew.fromJson(
          (l$getStatsNew as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Earnings$getStatsNew getStatsNew;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getStatsNew = getStatsNew;
    _resultData['getStatsNew'] = l$getStatsNew.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getStatsNew = getStatsNew;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getStatsNew,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Earnings) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getStatsNew = getStatsNew;
    final lOther$getStatsNew = other.getStatsNew;
    if (l$getStatsNew != lOther$getStatsNew) {
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

extension UtilityExtension$Query$Earnings on Query$Earnings {
  CopyWith$Query$Earnings<Query$Earnings> get copyWith =>
      CopyWith$Query$Earnings(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Earnings<TRes> {
  factory CopyWith$Query$Earnings(
    Query$Earnings instance,
    TRes Function(Query$Earnings) then,
  ) = _CopyWithImpl$Query$Earnings;

  factory CopyWith$Query$Earnings.stub(TRes res) =
      _CopyWithStubImpl$Query$Earnings;

  TRes call({
    Query$Earnings$getStatsNew? getStatsNew,
    String? $__typename,
  });
  CopyWith$Query$Earnings$getStatsNew<TRes> get getStatsNew;
}

class _CopyWithImpl$Query$Earnings<TRes>
    implements CopyWith$Query$Earnings<TRes> {
  _CopyWithImpl$Query$Earnings(
    this._instance,
    this._then,
  );

  final Query$Earnings _instance;

  final TRes Function(Query$Earnings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getStatsNew = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Earnings(
        getStatsNew: getStatsNew == _undefined || getStatsNew == null
            ? _instance.getStatsNew
            : (getStatsNew as Query$Earnings$getStatsNew),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Earnings$getStatsNew<TRes> get getStatsNew {
    final local$getStatsNew = _instance.getStatsNew;
    return CopyWith$Query$Earnings$getStatsNew(
        local$getStatsNew, (e) => call(getStatsNew: e));
  }
}

class _CopyWithStubImpl$Query$Earnings<TRes>
    implements CopyWith$Query$Earnings<TRes> {
  _CopyWithStubImpl$Query$Earnings(this._res);

  TRes _res;

  call({
    Query$Earnings$getStatsNew? getStatsNew,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Earnings$getStatsNew<TRes> get getStatsNew =>
      CopyWith$Query$Earnings$getStatsNew.stub(_res);
}

const documentNodeQueryEarnings = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Earnings'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'timeFrame')),
        type: NamedTypeNode(
          name: NameNode(value: 'TimeQuery'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'startDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'endDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'DateTime'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getStatsNew'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'timeframe'),
            value: VariableNode(name: NameNode(value: 'timeFrame')),
          ),
          ArgumentNode(
            name: NameNode(value: 'startDate'),
            value: VariableNode(name: NameNode(value: 'startDate')),
          ),
          ArgumentNode(
            name: NameNode(value: 'endDate'),
            value: VariableNode(name: NameNode(value: 'endDate')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'currency'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'dataset'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'earning'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'count'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'time'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'distance'),
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
Query$Earnings _parserFn$Query$Earnings(Map<String, dynamic> data) =>
    Query$Earnings.fromJson(data);
typedef OnQueryComplete$Query$Earnings = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Earnings?,
);

class Options$Query$Earnings extends graphql.QueryOptions<Query$Earnings> {
  Options$Query$Earnings({
    String? operationName,
    required Variables$Query$Earnings variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Earnings? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Earnings? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$Earnings(data),
                  ),
          onError: onError,
          document: documentNodeQueryEarnings,
          parserFn: _parserFn$Query$Earnings,
        );

  final OnQueryComplete$Query$Earnings? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Earnings
    extends graphql.WatchQueryOptions<Query$Earnings> {
  WatchOptions$Query$Earnings({
    String? operationName,
    required Variables$Query$Earnings variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Earnings? typedOptimisticResult,
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
          document: documentNodeQueryEarnings,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Earnings,
        );
}

class FetchMoreOptions$Query$Earnings extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Earnings({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Earnings variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryEarnings,
        );
}

extension ClientExtension$Query$Earnings on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Earnings>> query$Earnings(
          Options$Query$Earnings options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Earnings> watchQuery$Earnings(
          WatchOptions$Query$Earnings options) =>
      this.watchQuery(options);
  void writeQuery$Earnings({
    required Query$Earnings data,
    required Variables$Query$Earnings variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryEarnings),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Earnings? readQuery$Earnings({
    required Variables$Query$Earnings variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryEarnings),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Earnings.fromJson(result);
  }
}

class Query$Earnings$getStatsNew {
  Query$Earnings$getStatsNew({
    required this.currency,
    required this.dataset,
    this.$__typename = 'StatisticsResult',
  });

  factory Query$Earnings$getStatsNew.fromJson(Map<String, dynamic> json) {
    final l$currency = json['currency'];
    final l$dataset = json['dataset'];
    final l$$__typename = json['__typename'];
    return Query$Earnings$getStatsNew(
      currency: (l$currency as String),
      dataset: (l$dataset as List<dynamic>)
          .map((e) => Query$Earnings$getStatsNew$dataset.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String currency;

  final List<Query$Earnings$getStatsNew$dataset> dataset;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$dataset = dataset;
    _resultData['dataset'] = l$dataset.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currency = currency;
    final l$dataset = dataset;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$currency,
      Object.hashAll(l$dataset.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Earnings$getStatsNew) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$dataset = dataset;
    final lOther$dataset = other.dataset;
    if (l$dataset.length != lOther$dataset.length) {
      return false;
    }
    for (int i = 0; i < l$dataset.length; i++) {
      final l$dataset$entry = l$dataset[i];
      final lOther$dataset$entry = lOther$dataset[i];
      if (l$dataset$entry != lOther$dataset$entry) {
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

extension UtilityExtension$Query$Earnings$getStatsNew
    on Query$Earnings$getStatsNew {
  CopyWith$Query$Earnings$getStatsNew<Query$Earnings$getStatsNew>
      get copyWith => CopyWith$Query$Earnings$getStatsNew(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Earnings$getStatsNew<TRes> {
  factory CopyWith$Query$Earnings$getStatsNew(
    Query$Earnings$getStatsNew instance,
    TRes Function(Query$Earnings$getStatsNew) then,
  ) = _CopyWithImpl$Query$Earnings$getStatsNew;

  factory CopyWith$Query$Earnings$getStatsNew.stub(TRes res) =
      _CopyWithStubImpl$Query$Earnings$getStatsNew;

  TRes call({
    String? currency,
    List<Query$Earnings$getStatsNew$dataset>? dataset,
    String? $__typename,
  });
  TRes dataset(
      Iterable<Query$Earnings$getStatsNew$dataset> Function(
              Iterable<
                  CopyWith$Query$Earnings$getStatsNew$dataset<
                      Query$Earnings$getStatsNew$dataset>>)
          _fn);
}

class _CopyWithImpl$Query$Earnings$getStatsNew<TRes>
    implements CopyWith$Query$Earnings$getStatsNew<TRes> {
  _CopyWithImpl$Query$Earnings$getStatsNew(
    this._instance,
    this._then,
  );

  final Query$Earnings$getStatsNew _instance;

  final TRes Function(Query$Earnings$getStatsNew) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currency = _undefined,
    Object? dataset = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Earnings$getStatsNew(
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        dataset: dataset == _undefined || dataset == null
            ? _instance.dataset
            : (dataset as List<Query$Earnings$getStatsNew$dataset>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes dataset(
          Iterable<Query$Earnings$getStatsNew$dataset> Function(
                  Iterable<
                      CopyWith$Query$Earnings$getStatsNew$dataset<
                          Query$Earnings$getStatsNew$dataset>>)
              _fn) =>
      call(
          dataset: _fn(_instance.dataset
              .map((e) => CopyWith$Query$Earnings$getStatsNew$dataset(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Earnings$getStatsNew<TRes>
    implements CopyWith$Query$Earnings$getStatsNew<TRes> {
  _CopyWithStubImpl$Query$Earnings$getStatsNew(this._res);

  TRes _res;

  call({
    String? currency,
    List<Query$Earnings$getStatsNew$dataset>? dataset,
    String? $__typename,
  }) =>
      _res;

  dataset(_fn) => _res;
}

class Query$Earnings$getStatsNew$dataset {
  Query$Earnings$getStatsNew$dataset({
    required this.earning,
    required this.count,
    required this.time,
    required this.distance,
    required this.name,
    this.$__typename = 'Datapoint',
  });

  factory Query$Earnings$getStatsNew$dataset.fromJson(
      Map<String, dynamic> json) {
    final l$earning = json['earning'];
    final l$count = json['count'];
    final l$time = json['time'];
    final l$distance = json['distance'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$Earnings$getStatsNew$dataset(
      earning: (l$earning as num).toDouble(),
      count: (l$count as num).toDouble(),
      time: (l$time as num).toDouble(),
      distance: (l$distance as num).toDouble(),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final double earning;

  final double count;

  final double time;

  final double distance;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$earning = earning;
    _resultData['earning'] = l$earning;
    final l$count = count;
    _resultData['count'] = l$count;
    final l$time = time;
    _resultData['time'] = l$time;
    final l$distance = distance;
    _resultData['distance'] = l$distance;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$earning = earning;
    final l$count = count;
    final l$time = time;
    final l$distance = distance;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$earning,
      l$count,
      l$time,
      l$distance,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Earnings$getStatsNew$dataset) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$earning = earning;
    final lOther$earning = other.earning;
    if (l$earning != lOther$earning) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$time = time;
    final lOther$time = other.time;
    if (l$time != lOther$time) {
      return false;
    }
    final l$distance = distance;
    final lOther$distance = other.distance;
    if (l$distance != lOther$distance) {
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

extension UtilityExtension$Query$Earnings$getStatsNew$dataset
    on Query$Earnings$getStatsNew$dataset {
  CopyWith$Query$Earnings$getStatsNew$dataset<
          Query$Earnings$getStatsNew$dataset>
      get copyWith => CopyWith$Query$Earnings$getStatsNew$dataset(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Earnings$getStatsNew$dataset<TRes> {
  factory CopyWith$Query$Earnings$getStatsNew$dataset(
    Query$Earnings$getStatsNew$dataset instance,
    TRes Function(Query$Earnings$getStatsNew$dataset) then,
  ) = _CopyWithImpl$Query$Earnings$getStatsNew$dataset;

  factory CopyWith$Query$Earnings$getStatsNew$dataset.stub(TRes res) =
      _CopyWithStubImpl$Query$Earnings$getStatsNew$dataset;

  TRes call({
    double? earning,
    double? count,
    double? time,
    double? distance,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Earnings$getStatsNew$dataset<TRes>
    implements CopyWith$Query$Earnings$getStatsNew$dataset<TRes> {
  _CopyWithImpl$Query$Earnings$getStatsNew$dataset(
    this._instance,
    this._then,
  );

  final Query$Earnings$getStatsNew$dataset _instance;

  final TRes Function(Query$Earnings$getStatsNew$dataset) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? earning = _undefined,
    Object? count = _undefined,
    Object? time = _undefined,
    Object? distance = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Earnings$getStatsNew$dataset(
        earning: earning == _undefined || earning == null
            ? _instance.earning
            : (earning as double),
        count: count == _undefined || count == null
            ? _instance.count
            : (count as double),
        time: time == _undefined || time == null
            ? _instance.time
            : (time as double),
        distance: distance == _undefined || distance == null
            ? _instance.distance
            : (distance as double),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Earnings$getStatsNew$dataset<TRes>
    implements CopyWith$Query$Earnings$getStatsNew$dataset<TRes> {
  _CopyWithStubImpl$Query$Earnings$getStatsNew$dataset(this._res);

  TRes _res;

  call({
    double? earning,
    double? count,
    double? time,
    double? distance,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
