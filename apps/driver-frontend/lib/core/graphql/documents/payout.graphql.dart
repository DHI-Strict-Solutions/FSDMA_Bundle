import '../fragments/media.fragment.graphql.dart';
import '../fragments/payout_account.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$PayoutAccounts {
  Query$PayoutAccounts({
    required this.payoutAccounts,
    this.$__typename = 'Query',
  });

  factory Query$PayoutAccounts.fromJson(Map<String, dynamic> json) {
    final l$payoutAccounts = json['payoutAccounts'];
    final l$$__typename = json['__typename'];
    return Query$PayoutAccounts(
      payoutAccounts: (l$payoutAccounts as List<dynamic>)
          .map((e) =>
              Fragment$PayoutAccount.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$PayoutAccount> payoutAccounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$payoutAccounts = payoutAccounts;
    _resultData['payoutAccounts'] =
        l$payoutAccounts.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$payoutAccounts = payoutAccounts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$payoutAccounts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PayoutAccounts) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$payoutAccounts = payoutAccounts;
    final lOther$payoutAccounts = other.payoutAccounts;
    if (l$payoutAccounts.length != lOther$payoutAccounts.length) {
      return false;
    }
    for (int i = 0; i < l$payoutAccounts.length; i++) {
      final l$payoutAccounts$entry = l$payoutAccounts[i];
      final lOther$payoutAccounts$entry = lOther$payoutAccounts[i];
      if (l$payoutAccounts$entry != lOther$payoutAccounts$entry) {
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

extension UtilityExtension$Query$PayoutAccounts on Query$PayoutAccounts {
  CopyWith$Query$PayoutAccounts<Query$PayoutAccounts> get copyWith =>
      CopyWith$Query$PayoutAccounts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PayoutAccounts<TRes> {
  factory CopyWith$Query$PayoutAccounts(
    Query$PayoutAccounts instance,
    TRes Function(Query$PayoutAccounts) then,
  ) = _CopyWithImpl$Query$PayoutAccounts;

  factory CopyWith$Query$PayoutAccounts.stub(TRes res) =
      _CopyWithStubImpl$Query$PayoutAccounts;

  TRes call({
    List<Fragment$PayoutAccount>? payoutAccounts,
    String? $__typename,
  });
  TRes payoutAccounts(
      Iterable<Fragment$PayoutAccount> Function(
              Iterable<CopyWith$Fragment$PayoutAccount<Fragment$PayoutAccount>>)
          _fn);
}

class _CopyWithImpl$Query$PayoutAccounts<TRes>
    implements CopyWith$Query$PayoutAccounts<TRes> {
  _CopyWithImpl$Query$PayoutAccounts(
    this._instance,
    this._then,
  );

  final Query$PayoutAccounts _instance;

  final TRes Function(Query$PayoutAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payoutAccounts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PayoutAccounts(
        payoutAccounts: payoutAccounts == _undefined || payoutAccounts == null
            ? _instance.payoutAccounts
            : (payoutAccounts as List<Fragment$PayoutAccount>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes payoutAccounts(
          Iterable<Fragment$PayoutAccount> Function(
                  Iterable<
                      CopyWith$Fragment$PayoutAccount<Fragment$PayoutAccount>>)
              _fn) =>
      call(
          payoutAccounts: _fn(_instance.payoutAccounts
              .map((e) => CopyWith$Fragment$PayoutAccount(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PayoutAccounts<TRes>
    implements CopyWith$Query$PayoutAccounts<TRes> {
  _CopyWithStubImpl$Query$PayoutAccounts(this._res);

  TRes _res;

  call({
    List<Fragment$PayoutAccount>? payoutAccounts,
    String? $__typename,
  }) =>
      _res;

  payoutAccounts(_fn) => _res;
}

const documentNodeQueryPayoutAccounts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PayoutAccounts'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'payoutAccounts'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PayoutAccount'),
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
  fragmentDefinitionPayoutAccount,
]);
Query$PayoutAccounts _parserFn$Query$PayoutAccounts(
        Map<String, dynamic> data) =>
    Query$PayoutAccounts.fromJson(data);
typedef OnQueryComplete$Query$PayoutAccounts = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PayoutAccounts?,
);

class Options$Query$PayoutAccounts
    extends graphql.QueryOptions<Query$PayoutAccounts> {
  Options$Query$PayoutAccounts({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PayoutAccounts? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PayoutAccounts? onComplete,
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
                    data == null ? null : _parserFn$Query$PayoutAccounts(data),
                  ),
          onError: onError,
          document: documentNodeQueryPayoutAccounts,
          parserFn: _parserFn$Query$PayoutAccounts,
        );

  final OnQueryComplete$Query$PayoutAccounts? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PayoutAccounts
    extends graphql.WatchQueryOptions<Query$PayoutAccounts> {
  WatchOptions$Query$PayoutAccounts({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PayoutAccounts? typedOptimisticResult,
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
          document: documentNodeQueryPayoutAccounts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PayoutAccounts,
        );
}

class FetchMoreOptions$Query$PayoutAccounts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PayoutAccounts(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryPayoutAccounts,
        );
}

extension ClientExtension$Query$PayoutAccounts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PayoutAccounts>> query$PayoutAccounts(
          [Options$Query$PayoutAccounts? options]) async =>
      await this.query(options ?? Options$Query$PayoutAccounts());
  graphql.ObservableQuery<Query$PayoutAccounts> watchQuery$PayoutAccounts(
          [WatchOptions$Query$PayoutAccounts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$PayoutAccounts());
  void writeQuery$PayoutAccounts({
    required Query$PayoutAccounts data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryPayoutAccounts)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PayoutAccounts? readQuery$PayoutAccounts({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryPayoutAccounts)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PayoutAccounts.fromJson(result);
  }
}

class Query$SupportedPayoutMethods {
  Query$SupportedPayoutMethods({
    required this.payoutMethods,
    this.$__typename = 'Query',
  });

  factory Query$SupportedPayoutMethods.fromJson(Map<String, dynamic> json) {
    final l$payoutMethods = json['payoutMethods'];
    final l$$__typename = json['__typename'];
    return Query$SupportedPayoutMethods(
      payoutMethods: (l$payoutMethods as List<dynamic>)
          .map((e) => Query$SupportedPayoutMethods$payoutMethods.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$SupportedPayoutMethods$payoutMethods> payoutMethods;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$payoutMethods = payoutMethods;
    _resultData['payoutMethods'] =
        l$payoutMethods.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$payoutMethods = payoutMethods;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$payoutMethods.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SupportedPayoutMethods) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payoutMethods = payoutMethods;
    final lOther$payoutMethods = other.payoutMethods;
    if (l$payoutMethods.length != lOther$payoutMethods.length) {
      return false;
    }
    for (int i = 0; i < l$payoutMethods.length; i++) {
      final l$payoutMethods$entry = l$payoutMethods[i];
      final lOther$payoutMethods$entry = lOther$payoutMethods[i];
      if (l$payoutMethods$entry != lOther$payoutMethods$entry) {
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

extension UtilityExtension$Query$SupportedPayoutMethods
    on Query$SupportedPayoutMethods {
  CopyWith$Query$SupportedPayoutMethods<Query$SupportedPayoutMethods>
      get copyWith => CopyWith$Query$SupportedPayoutMethods(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SupportedPayoutMethods<TRes> {
  factory CopyWith$Query$SupportedPayoutMethods(
    Query$SupportedPayoutMethods instance,
    TRes Function(Query$SupportedPayoutMethods) then,
  ) = _CopyWithImpl$Query$SupportedPayoutMethods;

  factory CopyWith$Query$SupportedPayoutMethods.stub(TRes res) =
      _CopyWithStubImpl$Query$SupportedPayoutMethods;

  TRes call({
    List<Query$SupportedPayoutMethods$payoutMethods>? payoutMethods,
    String? $__typename,
  });
  TRes payoutMethods(
      Iterable<Query$SupportedPayoutMethods$payoutMethods> Function(
              Iterable<
                  CopyWith$Query$SupportedPayoutMethods$payoutMethods<
                      Query$SupportedPayoutMethods$payoutMethods>>)
          _fn);
}

class _CopyWithImpl$Query$SupportedPayoutMethods<TRes>
    implements CopyWith$Query$SupportedPayoutMethods<TRes> {
  _CopyWithImpl$Query$SupportedPayoutMethods(
    this._instance,
    this._then,
  );

  final Query$SupportedPayoutMethods _instance;

  final TRes Function(Query$SupportedPayoutMethods) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payoutMethods = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SupportedPayoutMethods(
        payoutMethods: payoutMethods == _undefined || payoutMethods == null
            ? _instance.payoutMethods
            : (payoutMethods
                as List<Query$SupportedPayoutMethods$payoutMethods>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes payoutMethods(
          Iterable<Query$SupportedPayoutMethods$payoutMethods> Function(
                  Iterable<
                      CopyWith$Query$SupportedPayoutMethods$payoutMethods<
                          Query$SupportedPayoutMethods$payoutMethods>>)
              _fn) =>
      call(
          payoutMethods: _fn(_instance.payoutMethods
              .map((e) => CopyWith$Query$SupportedPayoutMethods$payoutMethods(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$SupportedPayoutMethods<TRes>
    implements CopyWith$Query$SupportedPayoutMethods<TRes> {
  _CopyWithStubImpl$Query$SupportedPayoutMethods(this._res);

  TRes _res;

  call({
    List<Query$SupportedPayoutMethods$payoutMethods>? payoutMethods,
    String? $__typename,
  }) =>
      _res;

  payoutMethods(_fn) => _res;
}

const documentNodeQuerySupportedPayoutMethods = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SupportedPayoutMethods'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'payoutMethods'),
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
            name: NameNode(value: 'name'),
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
  fragmentDefinitionMediaFragment,
]);
Query$SupportedPayoutMethods _parserFn$Query$SupportedPayoutMethods(
        Map<String, dynamic> data) =>
    Query$SupportedPayoutMethods.fromJson(data);
typedef OnQueryComplete$Query$SupportedPayoutMethods = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SupportedPayoutMethods?,
);

class Options$Query$SupportedPayoutMethods
    extends graphql.QueryOptions<Query$SupportedPayoutMethods> {
  Options$Query$SupportedPayoutMethods({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SupportedPayoutMethods? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SupportedPayoutMethods? onComplete,
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
                        : _parserFn$Query$SupportedPayoutMethods(data),
                  ),
          onError: onError,
          document: documentNodeQuerySupportedPayoutMethods,
          parserFn: _parserFn$Query$SupportedPayoutMethods,
        );

  final OnQueryComplete$Query$SupportedPayoutMethods? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SupportedPayoutMethods
    extends graphql.WatchQueryOptions<Query$SupportedPayoutMethods> {
  WatchOptions$Query$SupportedPayoutMethods({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SupportedPayoutMethods? typedOptimisticResult,
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
          document: documentNodeQuerySupportedPayoutMethods,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SupportedPayoutMethods,
        );
}

class FetchMoreOptions$Query$SupportedPayoutMethods
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SupportedPayoutMethods(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerySupportedPayoutMethods,
        );
}

extension ClientExtension$Query$SupportedPayoutMethods
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SupportedPayoutMethods>>
      query$SupportedPayoutMethods(
              [Options$Query$SupportedPayoutMethods? options]) async =>
          await this.query(options ?? Options$Query$SupportedPayoutMethods());
  graphql.ObservableQuery<
      Query$SupportedPayoutMethods> watchQuery$SupportedPayoutMethods(
          [WatchOptions$Query$SupportedPayoutMethods? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SupportedPayoutMethods());
  void writeQuery$SupportedPayoutMethods({
    required Query$SupportedPayoutMethods data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQuerySupportedPayoutMethods)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SupportedPayoutMethods? readQuery$SupportedPayoutMethods(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerySupportedPayoutMethods)),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$SupportedPayoutMethods.fromJson(result);
  }
}

class Query$SupportedPayoutMethods$payoutMethods {
  Query$SupportedPayoutMethods$payoutMethods({
    required this.id,
    required this.name,
    required this.type,
    required this.linkMethod,
    this.media,
    this.$__typename = 'PayoutMethod',
  });

  factory Query$SupportedPayoutMethods$payoutMethods.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$type = json['type'];
    final l$linkMethod = json['linkMethod'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$SupportedPayoutMethods$payoutMethods(
      id: (l$id as String),
      name: (l$name as String),
      type: fromJson$Enum$PayoutMethodType((l$type as String)),
      linkMethod: fromJson$Enum$GatewayLinkMethod((l$linkMethod as String)),
      media: l$media == null
          ? null
          : Fragment$MediaFragment.fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final Enum$PayoutMethodType type;

  final Enum$GatewayLinkMethod linkMethod;

  final Fragment$MediaFragment? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = toJson$Enum$PayoutMethodType(l$type);
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
    final l$name = name;
    final l$type = type;
    final l$linkMethod = linkMethod;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
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
    if (!(other is Query$SupportedPayoutMethods$payoutMethods) ||
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

extension UtilityExtension$Query$SupportedPayoutMethods$payoutMethods
    on Query$SupportedPayoutMethods$payoutMethods {
  CopyWith$Query$SupportedPayoutMethods$payoutMethods<
          Query$SupportedPayoutMethods$payoutMethods>
      get copyWith => CopyWith$Query$SupportedPayoutMethods$payoutMethods(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SupportedPayoutMethods$payoutMethods<TRes> {
  factory CopyWith$Query$SupportedPayoutMethods$payoutMethods(
    Query$SupportedPayoutMethods$payoutMethods instance,
    TRes Function(Query$SupportedPayoutMethods$payoutMethods) then,
  ) = _CopyWithImpl$Query$SupportedPayoutMethods$payoutMethods;

  factory CopyWith$Query$SupportedPayoutMethods$payoutMethods.stub(TRes res) =
      _CopyWithStubImpl$Query$SupportedPayoutMethods$payoutMethods;

  TRes call({
    String? id,
    String? name,
    Enum$PayoutMethodType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Fragment$MediaFragment? media,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get media;
}

class _CopyWithImpl$Query$SupportedPayoutMethods$payoutMethods<TRes>
    implements CopyWith$Query$SupportedPayoutMethods$payoutMethods<TRes> {
  _CopyWithImpl$Query$SupportedPayoutMethods$payoutMethods(
    this._instance,
    this._then,
  );

  final Query$SupportedPayoutMethods$payoutMethods _instance;

  final TRes Function(Query$SupportedPayoutMethods$payoutMethods) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? type = _undefined,
    Object? linkMethod = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SupportedPayoutMethods$payoutMethods(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$PayoutMethodType),
        linkMethod: linkMethod == _undefined || linkMethod == null
            ? _instance.linkMethod
            : (linkMethod as Enum$GatewayLinkMethod),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$MediaFragment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaFragment<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$MediaFragment.stub(_then(_instance))
        : CopyWith$Fragment$MediaFragment(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$SupportedPayoutMethods$payoutMethods<TRes>
    implements CopyWith$Query$SupportedPayoutMethods$payoutMethods<TRes> {
  _CopyWithStubImpl$Query$SupportedPayoutMethods$payoutMethods(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Enum$PayoutMethodType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Fragment$MediaFragment? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaFragment<TRes> get media =>
      CopyWith$Fragment$MediaFragment.stub(_res);
}

class Variables$Mutation$updatePayoutMethodDefaultStatus {
  factory Variables$Mutation$updatePayoutMethodDefaultStatus({
    required String id,
    required bool isDefault,
  }) =>
      Variables$Mutation$updatePayoutMethodDefaultStatus._({
        r'id': id,
        r'isDefault': isDefault,
      });

  Variables$Mutation$updatePayoutMethodDefaultStatus._(this._$data);

  factory Variables$Mutation$updatePayoutMethodDefaultStatus.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$isDefault = data['isDefault'];
    result$data['isDefault'] = (l$isDefault as bool);
    return Variables$Mutation$updatePayoutMethodDefaultStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  bool get isDefault => (_$data['isDefault'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$isDefault = isDefault;
    result$data['isDefault'] = l$isDefault;
    return result$data;
  }

  CopyWith$Variables$Mutation$updatePayoutMethodDefaultStatus<
          Variables$Mutation$updatePayoutMethodDefaultStatus>
      get copyWith =>
          CopyWith$Variables$Mutation$updatePayoutMethodDefaultStatus(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$updatePayoutMethodDefaultStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$isDefault = isDefault;
    final lOther$isDefault = other.isDefault;
    if (l$isDefault != lOther$isDefault) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isDefault = isDefault;
    return Object.hashAll([
      l$id,
      l$isDefault,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$updatePayoutMethodDefaultStatus<
    TRes> {
  factory CopyWith$Variables$Mutation$updatePayoutMethodDefaultStatus(
    Variables$Mutation$updatePayoutMethodDefaultStatus instance,
    TRes Function(Variables$Mutation$updatePayoutMethodDefaultStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$updatePayoutMethodDefaultStatus;

  factory CopyWith$Variables$Mutation$updatePayoutMethodDefaultStatus.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updatePayoutMethodDefaultStatus;

  TRes call({
    String? id,
    bool? isDefault,
  });
}

class _CopyWithImpl$Variables$Mutation$updatePayoutMethodDefaultStatus<TRes>
    implements
        CopyWith$Variables$Mutation$updatePayoutMethodDefaultStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$updatePayoutMethodDefaultStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updatePayoutMethodDefaultStatus _instance;

  final TRes Function(Variables$Mutation$updatePayoutMethodDefaultStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isDefault = _undefined,
  }) =>
      _then(Variables$Mutation$updatePayoutMethodDefaultStatus._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (isDefault != _undefined && isDefault != null)
          'isDefault': (isDefault as bool),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updatePayoutMethodDefaultStatus<TRes>
    implements
        CopyWith$Variables$Mutation$updatePayoutMethodDefaultStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updatePayoutMethodDefaultStatus(
      this._res);

  TRes _res;

  call({
    String? id,
    bool? isDefault,
  }) =>
      _res;
}

class Mutation$updatePayoutMethodDefaultStatus {
  Mutation$updatePayoutMethodDefaultStatus({
    required this.updatePayoutMethod,
    this.$__typename = 'Mutation',
  });

  factory Mutation$updatePayoutMethodDefaultStatus.fromJson(
      Map<String, dynamic> json) {
    final l$updatePayoutMethod = json['updatePayoutMethod'];
    final l$$__typename = json['__typename'];
    return Mutation$updatePayoutMethodDefaultStatus(
      updatePayoutMethod: Fragment$PayoutAccount.fromJson(
          (l$updatePayoutMethod as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PayoutAccount updatePayoutMethod;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatePayoutMethod = updatePayoutMethod;
    _resultData['updatePayoutMethod'] = l$updatePayoutMethod.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatePayoutMethod = updatePayoutMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updatePayoutMethod,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updatePayoutMethodDefaultStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatePayoutMethod = updatePayoutMethod;
    final lOther$updatePayoutMethod = other.updatePayoutMethod;
    if (l$updatePayoutMethod != lOther$updatePayoutMethod) {
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

extension UtilityExtension$Mutation$updatePayoutMethodDefaultStatus
    on Mutation$updatePayoutMethodDefaultStatus {
  CopyWith$Mutation$updatePayoutMethodDefaultStatus<
          Mutation$updatePayoutMethodDefaultStatus>
      get copyWith => CopyWith$Mutation$updatePayoutMethodDefaultStatus(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updatePayoutMethodDefaultStatus<TRes> {
  factory CopyWith$Mutation$updatePayoutMethodDefaultStatus(
    Mutation$updatePayoutMethodDefaultStatus instance,
    TRes Function(Mutation$updatePayoutMethodDefaultStatus) then,
  ) = _CopyWithImpl$Mutation$updatePayoutMethodDefaultStatus;

  factory CopyWith$Mutation$updatePayoutMethodDefaultStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updatePayoutMethodDefaultStatus;

  TRes call({
    Fragment$PayoutAccount? updatePayoutMethod,
    String? $__typename,
  });
  CopyWith$Fragment$PayoutAccount<TRes> get updatePayoutMethod;
}

class _CopyWithImpl$Mutation$updatePayoutMethodDefaultStatus<TRes>
    implements CopyWith$Mutation$updatePayoutMethodDefaultStatus<TRes> {
  _CopyWithImpl$Mutation$updatePayoutMethodDefaultStatus(
    this._instance,
    this._then,
  );

  final Mutation$updatePayoutMethodDefaultStatus _instance;

  final TRes Function(Mutation$updatePayoutMethodDefaultStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updatePayoutMethod = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updatePayoutMethodDefaultStatus(
        updatePayoutMethod:
            updatePayoutMethod == _undefined || updatePayoutMethod == null
                ? _instance.updatePayoutMethod
                : (updatePayoutMethod as Fragment$PayoutAccount),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PayoutAccount<TRes> get updatePayoutMethod {
    final local$updatePayoutMethod = _instance.updatePayoutMethod;
    return CopyWith$Fragment$PayoutAccount(
        local$updatePayoutMethod, (e) => call(updatePayoutMethod: e));
  }
}

class _CopyWithStubImpl$Mutation$updatePayoutMethodDefaultStatus<TRes>
    implements CopyWith$Mutation$updatePayoutMethodDefaultStatus<TRes> {
  _CopyWithStubImpl$Mutation$updatePayoutMethodDefaultStatus(this._res);

  TRes _res;

  call({
    Fragment$PayoutAccount? updatePayoutMethod,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PayoutAccount<TRes> get updatePayoutMethod =>
      CopyWith$Fragment$PayoutAccount.stub(_res);
}

const documentNodeMutationupdatePayoutMethodDefaultStatus =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updatePayoutMethodDefaultStatus'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isDefault')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updatePayoutMethod'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'isDefault'),
                value: VariableNode(name: NameNode(value: 'isDefault')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PayoutAccount'),
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
  fragmentDefinitionPayoutAccount,
]);
Mutation$updatePayoutMethodDefaultStatus
    _parserFn$Mutation$updatePayoutMethodDefaultStatus(
            Map<String, dynamic> data) =>
        Mutation$updatePayoutMethodDefaultStatus.fromJson(data);
typedef OnMutationCompleted$Mutation$updatePayoutMethodDefaultStatus
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$updatePayoutMethodDefaultStatus?,
);

class Options$Mutation$updatePayoutMethodDefaultStatus
    extends graphql.MutationOptions<Mutation$updatePayoutMethodDefaultStatus> {
  Options$Mutation$updatePayoutMethodDefaultStatus({
    String? operationName,
    required Variables$Mutation$updatePayoutMethodDefaultStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updatePayoutMethodDefaultStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updatePayoutMethodDefaultStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$updatePayoutMethodDefaultStatus>? update,
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
                        : _parserFn$Mutation$updatePayoutMethodDefaultStatus(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdatePayoutMethodDefaultStatus,
          parserFn: _parserFn$Mutation$updatePayoutMethodDefaultStatus,
        );

  final OnMutationCompleted$Mutation$updatePayoutMethodDefaultStatus?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$updatePayoutMethodDefaultStatus extends graphql
    .WatchQueryOptions<Mutation$updatePayoutMethodDefaultStatus> {
  WatchOptions$Mutation$updatePayoutMethodDefaultStatus({
    String? operationName,
    required Variables$Mutation$updatePayoutMethodDefaultStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updatePayoutMethodDefaultStatus? typedOptimisticResult,
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
          document: documentNodeMutationupdatePayoutMethodDefaultStatus,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$updatePayoutMethodDefaultStatus,
        );
}

extension ClientExtension$Mutation$updatePayoutMethodDefaultStatus
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$updatePayoutMethodDefaultStatus>>
      mutate$updatePayoutMethodDefaultStatus(
              Options$Mutation$updatePayoutMethodDefaultStatus options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$updatePayoutMethodDefaultStatus>
      watchMutation$updatePayoutMethodDefaultStatus(
              WatchOptions$Mutation$updatePayoutMethodDefaultStatus options) =>
          this.watchMutation(options);
}

class Variables$Mutation$deletePayoutAccount {
  factory Variables$Mutation$deletePayoutAccount({required String id}) =>
      Variables$Mutation$deletePayoutAccount._({
        r'id': id,
      });

  Variables$Mutation$deletePayoutAccount._(this._$data);

  factory Variables$Mutation$deletePayoutAccount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$deletePayoutAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$deletePayoutAccount<
          Variables$Mutation$deletePayoutAccount>
      get copyWith => CopyWith$Variables$Mutation$deletePayoutAccount(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$deletePayoutAccount) ||
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

abstract class CopyWith$Variables$Mutation$deletePayoutAccount<TRes> {
  factory CopyWith$Variables$Mutation$deletePayoutAccount(
    Variables$Mutation$deletePayoutAccount instance,
    TRes Function(Variables$Mutation$deletePayoutAccount) then,
  ) = _CopyWithImpl$Variables$Mutation$deletePayoutAccount;

  factory CopyWith$Variables$Mutation$deletePayoutAccount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$deletePayoutAccount;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$deletePayoutAccount<TRes>
    implements CopyWith$Variables$Mutation$deletePayoutAccount<TRes> {
  _CopyWithImpl$Variables$Mutation$deletePayoutAccount(
    this._instance,
    this._then,
  );

  final Variables$Mutation$deletePayoutAccount _instance;

  final TRes Function(Variables$Mutation$deletePayoutAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$deletePayoutAccount._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$deletePayoutAccount<TRes>
    implements CopyWith$Variables$Mutation$deletePayoutAccount<TRes> {
  _CopyWithStubImpl$Variables$Mutation$deletePayoutAccount(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$deletePayoutAccount {
  Mutation$deletePayoutAccount({
    required this.deleteOnePayoutAccount,
    this.$__typename = 'Mutation',
  });

  factory Mutation$deletePayoutAccount.fromJson(Map<String, dynamic> json) {
    final l$deleteOnePayoutAccount = json['deleteOnePayoutAccount'];
    final l$$__typename = json['__typename'];
    return Mutation$deletePayoutAccount(
      deleteOnePayoutAccount:
          Mutation$deletePayoutAccount$deleteOnePayoutAccount.fromJson(
              (l$deleteOnePayoutAccount as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$deletePayoutAccount$deleteOnePayoutAccount
      deleteOnePayoutAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteOnePayoutAccount = deleteOnePayoutAccount;
    _resultData['deleteOnePayoutAccount'] = l$deleteOnePayoutAccount.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteOnePayoutAccount = deleteOnePayoutAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteOnePayoutAccount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$deletePayoutAccount) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteOnePayoutAccount = deleteOnePayoutAccount;
    final lOther$deleteOnePayoutAccount = other.deleteOnePayoutAccount;
    if (l$deleteOnePayoutAccount != lOther$deleteOnePayoutAccount) {
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

extension UtilityExtension$Mutation$deletePayoutAccount
    on Mutation$deletePayoutAccount {
  CopyWith$Mutation$deletePayoutAccount<Mutation$deletePayoutAccount>
      get copyWith => CopyWith$Mutation$deletePayoutAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$deletePayoutAccount<TRes> {
  factory CopyWith$Mutation$deletePayoutAccount(
    Mutation$deletePayoutAccount instance,
    TRes Function(Mutation$deletePayoutAccount) then,
  ) = _CopyWithImpl$Mutation$deletePayoutAccount;

  factory CopyWith$Mutation$deletePayoutAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$deletePayoutAccount;

  TRes call({
    Mutation$deletePayoutAccount$deleteOnePayoutAccount? deleteOnePayoutAccount,
    String? $__typename,
  });
  CopyWith$Mutation$deletePayoutAccount$deleteOnePayoutAccount<TRes>
      get deleteOnePayoutAccount;
}

class _CopyWithImpl$Mutation$deletePayoutAccount<TRes>
    implements CopyWith$Mutation$deletePayoutAccount<TRes> {
  _CopyWithImpl$Mutation$deletePayoutAccount(
    this._instance,
    this._then,
  );

  final Mutation$deletePayoutAccount _instance;

  final TRes Function(Mutation$deletePayoutAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteOnePayoutAccount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$deletePayoutAccount(
        deleteOnePayoutAccount: deleteOnePayoutAccount == _undefined ||
                deleteOnePayoutAccount == null
            ? _instance.deleteOnePayoutAccount
            : (deleteOnePayoutAccount
                as Mutation$deletePayoutAccount$deleteOnePayoutAccount),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$deletePayoutAccount$deleteOnePayoutAccount<TRes>
      get deleteOnePayoutAccount {
    final local$deleteOnePayoutAccount = _instance.deleteOnePayoutAccount;
    return CopyWith$Mutation$deletePayoutAccount$deleteOnePayoutAccount(
        local$deleteOnePayoutAccount, (e) => call(deleteOnePayoutAccount: e));
  }
}

class _CopyWithStubImpl$Mutation$deletePayoutAccount<TRes>
    implements CopyWith$Mutation$deletePayoutAccount<TRes> {
  _CopyWithStubImpl$Mutation$deletePayoutAccount(this._res);

  TRes _res;

  call({
    Mutation$deletePayoutAccount$deleteOnePayoutAccount? deleteOnePayoutAccount,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$deletePayoutAccount$deleteOnePayoutAccount<TRes>
      get deleteOnePayoutAccount =>
          CopyWith$Mutation$deletePayoutAccount$deleteOnePayoutAccount.stub(
              _res);
}

const documentNodeMutationdeletePayoutAccount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'deletePayoutAccount'),
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
        name: NameNode(value: 'deleteOnePayoutAccount'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              )
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
Mutation$deletePayoutAccount _parserFn$Mutation$deletePayoutAccount(
        Map<String, dynamic> data) =>
    Mutation$deletePayoutAccount.fromJson(data);
typedef OnMutationCompleted$Mutation$deletePayoutAccount = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$deletePayoutAccount?,
);

class Options$Mutation$deletePayoutAccount
    extends graphql.MutationOptions<Mutation$deletePayoutAccount> {
  Options$Mutation$deletePayoutAccount({
    String? operationName,
    required Variables$Mutation$deletePayoutAccount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$deletePayoutAccount? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$deletePayoutAccount? onCompleted,
    graphql.OnMutationUpdate<Mutation$deletePayoutAccount>? update,
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
                        : _parserFn$Mutation$deletePayoutAccount(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationdeletePayoutAccount,
          parserFn: _parserFn$Mutation$deletePayoutAccount,
        );

  final OnMutationCompleted$Mutation$deletePayoutAccount? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$deletePayoutAccount
    extends graphql.WatchQueryOptions<Mutation$deletePayoutAccount> {
  WatchOptions$Mutation$deletePayoutAccount({
    String? operationName,
    required Variables$Mutation$deletePayoutAccount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$deletePayoutAccount? typedOptimisticResult,
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
          document: documentNodeMutationdeletePayoutAccount,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$deletePayoutAccount,
        );
}

extension ClientExtension$Mutation$deletePayoutAccount
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$deletePayoutAccount>>
      mutate$deletePayoutAccount(
              Options$Mutation$deletePayoutAccount options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$deletePayoutAccount>
      watchMutation$deletePayoutAccount(
              WatchOptions$Mutation$deletePayoutAccount options) =>
          this.watchMutation(options);
}

class Mutation$deletePayoutAccount$deleteOnePayoutAccount {
  Mutation$deletePayoutAccount$deleteOnePayoutAccount({
    this.id,
    this.$__typename = 'PayoutAccountDeleteResponse',
  });

  factory Mutation$deletePayoutAccount$deleteOnePayoutAccount.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$deletePayoutAccount$deleteOnePayoutAccount(
      id: (l$id as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

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
    if (!(other is Mutation$deletePayoutAccount$deleteOnePayoutAccount) ||
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

extension UtilityExtension$Mutation$deletePayoutAccount$deleteOnePayoutAccount
    on Mutation$deletePayoutAccount$deleteOnePayoutAccount {
  CopyWith$Mutation$deletePayoutAccount$deleteOnePayoutAccount<
          Mutation$deletePayoutAccount$deleteOnePayoutAccount>
      get copyWith =>
          CopyWith$Mutation$deletePayoutAccount$deleteOnePayoutAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$deletePayoutAccount$deleteOnePayoutAccount<
    TRes> {
  factory CopyWith$Mutation$deletePayoutAccount$deleteOnePayoutAccount(
    Mutation$deletePayoutAccount$deleteOnePayoutAccount instance,
    TRes Function(Mutation$deletePayoutAccount$deleteOnePayoutAccount) then,
  ) = _CopyWithImpl$Mutation$deletePayoutAccount$deleteOnePayoutAccount;

  factory CopyWith$Mutation$deletePayoutAccount$deleteOnePayoutAccount.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$deletePayoutAccount$deleteOnePayoutAccount;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$deletePayoutAccount$deleteOnePayoutAccount<TRes>
    implements
        CopyWith$Mutation$deletePayoutAccount$deleteOnePayoutAccount<TRes> {
  _CopyWithImpl$Mutation$deletePayoutAccount$deleteOnePayoutAccount(
    this._instance,
    this._then,
  );

  final Mutation$deletePayoutAccount$deleteOnePayoutAccount _instance;

  final TRes Function(Mutation$deletePayoutAccount$deleteOnePayoutAccount)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$deletePayoutAccount$deleteOnePayoutAccount(
        id: id == _undefined ? _instance.id : (id as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$deletePayoutAccount$deleteOnePayoutAccount<
        TRes>
    implements
        CopyWith$Mutation$deletePayoutAccount$deleteOnePayoutAccount<TRes> {
  _CopyWithStubImpl$Mutation$deletePayoutAccount$deleteOnePayoutAccount(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$getPayoutAccountLinkUrl {
  factory Variables$Query$getPayoutAccountLinkUrl(
          {required String gatewayId}) =>
      Variables$Query$getPayoutAccountLinkUrl._({
        r'gatewayId': gatewayId,
      });

  Variables$Query$getPayoutAccountLinkUrl._(this._$data);

  factory Variables$Query$getPayoutAccountLinkUrl.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$gatewayId = data['gatewayId'];
    result$data['gatewayId'] = (l$gatewayId as String);
    return Variables$Query$getPayoutAccountLinkUrl._(result$data);
  }

  Map<String, dynamic> _$data;

  String get gatewayId => (_$data['gatewayId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$gatewayId = gatewayId;
    result$data['gatewayId'] = l$gatewayId;
    return result$data;
  }

  CopyWith$Variables$Query$getPayoutAccountLinkUrl<
          Variables$Query$getPayoutAccountLinkUrl>
      get copyWith => CopyWith$Variables$Query$getPayoutAccountLinkUrl(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getPayoutAccountLinkUrl) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gatewayId = gatewayId;
    final lOther$gatewayId = other.gatewayId;
    if (l$gatewayId != lOther$gatewayId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$gatewayId = gatewayId;
    return Object.hashAll([l$gatewayId]);
  }
}

abstract class CopyWith$Variables$Query$getPayoutAccountLinkUrl<TRes> {
  factory CopyWith$Variables$Query$getPayoutAccountLinkUrl(
    Variables$Query$getPayoutAccountLinkUrl instance,
    TRes Function(Variables$Query$getPayoutAccountLinkUrl) then,
  ) = _CopyWithImpl$Variables$Query$getPayoutAccountLinkUrl;

  factory CopyWith$Variables$Query$getPayoutAccountLinkUrl.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getPayoutAccountLinkUrl;

  TRes call({String? gatewayId});
}

class _CopyWithImpl$Variables$Query$getPayoutAccountLinkUrl<TRes>
    implements CopyWith$Variables$Query$getPayoutAccountLinkUrl<TRes> {
  _CopyWithImpl$Variables$Query$getPayoutAccountLinkUrl(
    this._instance,
    this._then,
  );

  final Variables$Query$getPayoutAccountLinkUrl _instance;

  final TRes Function(Variables$Query$getPayoutAccountLinkUrl) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? gatewayId = _undefined}) =>
      _then(Variables$Query$getPayoutAccountLinkUrl._({
        ..._instance._$data,
        if (gatewayId != _undefined && gatewayId != null)
          'gatewayId': (gatewayId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$getPayoutAccountLinkUrl<TRes>
    implements CopyWith$Variables$Query$getPayoutAccountLinkUrl<TRes> {
  _CopyWithStubImpl$Variables$Query$getPayoutAccountLinkUrl(this._res);

  TRes _res;

  call({String? gatewayId}) => _res;
}

class Query$getPayoutAccountLinkUrl {
  Query$getPayoutAccountLinkUrl({
    required this.getPayoutLinkUrl,
    this.$__typename = 'Query',
  });

  factory Query$getPayoutAccountLinkUrl.fromJson(Map<String, dynamic> json) {
    final l$getPayoutLinkUrl = json['getPayoutLinkUrl'];
    final l$$__typename = json['__typename'];
    return Query$getPayoutAccountLinkUrl(
      getPayoutLinkUrl: Query$getPayoutAccountLinkUrl$getPayoutLinkUrl.fromJson(
          (l$getPayoutLinkUrl as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getPayoutAccountLinkUrl$getPayoutLinkUrl getPayoutLinkUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getPayoutLinkUrl = getPayoutLinkUrl;
    _resultData['getPayoutLinkUrl'] = l$getPayoutLinkUrl.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getPayoutLinkUrl = getPayoutLinkUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getPayoutLinkUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getPayoutAccountLinkUrl) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getPayoutLinkUrl = getPayoutLinkUrl;
    final lOther$getPayoutLinkUrl = other.getPayoutLinkUrl;
    if (l$getPayoutLinkUrl != lOther$getPayoutLinkUrl) {
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

extension UtilityExtension$Query$getPayoutAccountLinkUrl
    on Query$getPayoutAccountLinkUrl {
  CopyWith$Query$getPayoutAccountLinkUrl<Query$getPayoutAccountLinkUrl>
      get copyWith => CopyWith$Query$getPayoutAccountLinkUrl(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getPayoutAccountLinkUrl<TRes> {
  factory CopyWith$Query$getPayoutAccountLinkUrl(
    Query$getPayoutAccountLinkUrl instance,
    TRes Function(Query$getPayoutAccountLinkUrl) then,
  ) = _CopyWithImpl$Query$getPayoutAccountLinkUrl;

  factory CopyWith$Query$getPayoutAccountLinkUrl.stub(TRes res) =
      _CopyWithStubImpl$Query$getPayoutAccountLinkUrl;

  TRes call({
    Query$getPayoutAccountLinkUrl$getPayoutLinkUrl? getPayoutLinkUrl,
    String? $__typename,
  });
  CopyWith$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl<TRes>
      get getPayoutLinkUrl;
}

class _CopyWithImpl$Query$getPayoutAccountLinkUrl<TRes>
    implements CopyWith$Query$getPayoutAccountLinkUrl<TRes> {
  _CopyWithImpl$Query$getPayoutAccountLinkUrl(
    this._instance,
    this._then,
  );

  final Query$getPayoutAccountLinkUrl _instance;

  final TRes Function(Query$getPayoutAccountLinkUrl) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getPayoutLinkUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getPayoutAccountLinkUrl(
        getPayoutLinkUrl:
            getPayoutLinkUrl == _undefined || getPayoutLinkUrl == null
                ? _instance.getPayoutLinkUrl
                : (getPayoutLinkUrl
                    as Query$getPayoutAccountLinkUrl$getPayoutLinkUrl),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl<TRes>
      get getPayoutLinkUrl {
    final local$getPayoutLinkUrl = _instance.getPayoutLinkUrl;
    return CopyWith$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl(
        local$getPayoutLinkUrl, (e) => call(getPayoutLinkUrl: e));
  }
}

class _CopyWithStubImpl$Query$getPayoutAccountLinkUrl<TRes>
    implements CopyWith$Query$getPayoutAccountLinkUrl<TRes> {
  _CopyWithStubImpl$Query$getPayoutAccountLinkUrl(this._res);

  TRes _res;

  call({
    Query$getPayoutAccountLinkUrl$getPayoutLinkUrl? getPayoutLinkUrl,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl<TRes>
      get getPayoutLinkUrl =>
          CopyWith$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl.stub(_res);
}

const documentNodeQuerygetPayoutAccountLinkUrl = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getPayoutAccountLinkUrl'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'gatewayId')),
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
        name: NameNode(value: 'getPayoutLinkUrl'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'gatewayId'),
                value: VariableNode(name: NameNode(value: 'gatewayId')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'url'),
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
Query$getPayoutAccountLinkUrl _parserFn$Query$getPayoutAccountLinkUrl(
        Map<String, dynamic> data) =>
    Query$getPayoutAccountLinkUrl.fromJson(data);
typedef OnQueryComplete$Query$getPayoutAccountLinkUrl = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getPayoutAccountLinkUrl?,
);

class Options$Query$getPayoutAccountLinkUrl
    extends graphql.QueryOptions<Query$getPayoutAccountLinkUrl> {
  Options$Query$getPayoutAccountLinkUrl({
    String? operationName,
    required Variables$Query$getPayoutAccountLinkUrl variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getPayoutAccountLinkUrl? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getPayoutAccountLinkUrl? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$getPayoutAccountLinkUrl(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetPayoutAccountLinkUrl,
          parserFn: _parserFn$Query$getPayoutAccountLinkUrl,
        );

  final OnQueryComplete$Query$getPayoutAccountLinkUrl? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getPayoutAccountLinkUrl
    extends graphql.WatchQueryOptions<Query$getPayoutAccountLinkUrl> {
  WatchOptions$Query$getPayoutAccountLinkUrl({
    String? operationName,
    required Variables$Query$getPayoutAccountLinkUrl variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getPayoutAccountLinkUrl? typedOptimisticResult,
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
          document: documentNodeQuerygetPayoutAccountLinkUrl,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getPayoutAccountLinkUrl,
        );
}

class FetchMoreOptions$Query$getPayoutAccountLinkUrl
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getPayoutAccountLinkUrl({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$getPayoutAccountLinkUrl variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerygetPayoutAccountLinkUrl,
        );
}

extension ClientExtension$Query$getPayoutAccountLinkUrl
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getPayoutAccountLinkUrl>>
      query$getPayoutAccountLinkUrl(
              Options$Query$getPayoutAccountLinkUrl options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$getPayoutAccountLinkUrl>
      watchQuery$getPayoutAccountLinkUrl(
              WatchOptions$Query$getPayoutAccountLinkUrl options) =>
          this.watchQuery(options);
  void writeQuery$getPayoutAccountLinkUrl({
    required Query$getPayoutAccountLinkUrl data,
    required Variables$Query$getPayoutAccountLinkUrl variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerygetPayoutAccountLinkUrl),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getPayoutAccountLinkUrl? readQuery$getPayoutAccountLinkUrl({
    required Variables$Query$getPayoutAccountLinkUrl variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQuerygetPayoutAccountLinkUrl),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$getPayoutAccountLinkUrl.fromJson(result);
  }
}

class Query$getPayoutAccountLinkUrl$getPayoutLinkUrl {
  Query$getPayoutAccountLinkUrl$getPayoutLinkUrl({
    required this.status,
    this.url,
    this.$__typename = 'TopUpWalletResponse',
  });

  factory Query$getPayoutAccountLinkUrl$getPayoutLinkUrl.fromJson(
      Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Query$getPayoutAccountLinkUrl$getPayoutLinkUrl(
      status: fromJson$Enum$TopUpWalletStatus((l$status as String)),
      url: (l$url as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$TopUpWalletStatus status;

  final String? url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] = toJson$Enum$TopUpWalletStatus(l$status);
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status,
      l$url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getPayoutAccountLinkUrl$getPayoutLinkUrl) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl
    on Query$getPayoutAccountLinkUrl$getPayoutLinkUrl {
  CopyWith$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl<
          Query$getPayoutAccountLinkUrl$getPayoutLinkUrl>
      get copyWith => CopyWith$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl<TRes> {
  factory CopyWith$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl(
    Query$getPayoutAccountLinkUrl$getPayoutLinkUrl instance,
    TRes Function(Query$getPayoutAccountLinkUrl$getPayoutLinkUrl) then,
  ) = _CopyWithImpl$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl;

  factory CopyWith$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl;

  TRes call({
    Enum$TopUpWalletStatus? status,
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl<TRes>
    implements CopyWith$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl<TRes> {
  _CopyWithImpl$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl(
    this._instance,
    this._then,
  );

  final Query$getPayoutAccountLinkUrl$getPayoutLinkUrl _instance;

  final TRes Function(Query$getPayoutAccountLinkUrl$getPayoutLinkUrl) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getPayoutAccountLinkUrl$getPayoutLinkUrl(
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$TopUpWalletStatus),
        url: url == _undefined ? _instance.url : (url as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl<TRes>
    implements CopyWith$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl<TRes> {
  _CopyWithStubImpl$Query$getPayoutAccountLinkUrl$getPayoutLinkUrl(this._res);

  TRes _res;

  call({
    Enum$TopUpWalletStatus? status,
    String? url,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$createPayoutAccount {
  factory Variables$Mutation$createPayoutAccount(
          {required Input$PayoutAccountInput input}) =>
      Variables$Mutation$createPayoutAccount._({
        r'input': input,
      });

  Variables$Mutation$createPayoutAccount._(this._$data);

  factory Variables$Mutation$createPayoutAccount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$PayoutAccountInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$createPayoutAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PayoutAccountInput get input =>
      (_$data['input'] as Input$PayoutAccountInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$createPayoutAccount<
          Variables$Mutation$createPayoutAccount>
      get copyWith => CopyWith$Variables$Mutation$createPayoutAccount(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$createPayoutAccount) ||
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

abstract class CopyWith$Variables$Mutation$createPayoutAccount<TRes> {
  factory CopyWith$Variables$Mutation$createPayoutAccount(
    Variables$Mutation$createPayoutAccount instance,
    TRes Function(Variables$Mutation$createPayoutAccount) then,
  ) = _CopyWithImpl$Variables$Mutation$createPayoutAccount;

  factory CopyWith$Variables$Mutation$createPayoutAccount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$createPayoutAccount;

  TRes call({Input$PayoutAccountInput? input});
}

class _CopyWithImpl$Variables$Mutation$createPayoutAccount<TRes>
    implements CopyWith$Variables$Mutation$createPayoutAccount<TRes> {
  _CopyWithImpl$Variables$Mutation$createPayoutAccount(
    this._instance,
    this._then,
  );

  final Variables$Mutation$createPayoutAccount _instance;

  final TRes Function(Variables$Mutation$createPayoutAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$createPayoutAccount._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$PayoutAccountInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$createPayoutAccount<TRes>
    implements CopyWith$Variables$Mutation$createPayoutAccount<TRes> {
  _CopyWithStubImpl$Variables$Mutation$createPayoutAccount(this._res);

  TRes _res;

  call({Input$PayoutAccountInput? input}) => _res;
}

class Mutation$createPayoutAccount {
  Mutation$createPayoutAccount({
    required this.createPayoutAccount,
    this.$__typename = 'Mutation',
  });

  factory Mutation$createPayoutAccount.fromJson(Map<String, dynamic> json) {
    final l$createPayoutAccount = json['createPayoutAccount'];
    final l$$__typename = json['__typename'];
    return Mutation$createPayoutAccount(
      createPayoutAccount: Fragment$PayoutAccount.fromJson(
          (l$createPayoutAccount as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PayoutAccount createPayoutAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createPayoutAccount = createPayoutAccount;
    _resultData['createPayoutAccount'] = l$createPayoutAccount.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createPayoutAccount = createPayoutAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createPayoutAccount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$createPayoutAccount) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createPayoutAccount = createPayoutAccount;
    final lOther$createPayoutAccount = other.createPayoutAccount;
    if (l$createPayoutAccount != lOther$createPayoutAccount) {
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

extension UtilityExtension$Mutation$createPayoutAccount
    on Mutation$createPayoutAccount {
  CopyWith$Mutation$createPayoutAccount<Mutation$createPayoutAccount>
      get copyWith => CopyWith$Mutation$createPayoutAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createPayoutAccount<TRes> {
  factory CopyWith$Mutation$createPayoutAccount(
    Mutation$createPayoutAccount instance,
    TRes Function(Mutation$createPayoutAccount) then,
  ) = _CopyWithImpl$Mutation$createPayoutAccount;

  factory CopyWith$Mutation$createPayoutAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createPayoutAccount;

  TRes call({
    Fragment$PayoutAccount? createPayoutAccount,
    String? $__typename,
  });
  CopyWith$Fragment$PayoutAccount<TRes> get createPayoutAccount;
}

class _CopyWithImpl$Mutation$createPayoutAccount<TRes>
    implements CopyWith$Mutation$createPayoutAccount<TRes> {
  _CopyWithImpl$Mutation$createPayoutAccount(
    this._instance,
    this._then,
  );

  final Mutation$createPayoutAccount _instance;

  final TRes Function(Mutation$createPayoutAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createPayoutAccount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createPayoutAccount(
        createPayoutAccount:
            createPayoutAccount == _undefined || createPayoutAccount == null
                ? _instance.createPayoutAccount
                : (createPayoutAccount as Fragment$PayoutAccount),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PayoutAccount<TRes> get createPayoutAccount {
    final local$createPayoutAccount = _instance.createPayoutAccount;
    return CopyWith$Fragment$PayoutAccount(
        local$createPayoutAccount, (e) => call(createPayoutAccount: e));
  }
}

class _CopyWithStubImpl$Mutation$createPayoutAccount<TRes>
    implements CopyWith$Mutation$createPayoutAccount<TRes> {
  _CopyWithStubImpl$Mutation$createPayoutAccount(this._res);

  TRes _res;

  call({
    Fragment$PayoutAccount? createPayoutAccount,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PayoutAccount<TRes> get createPayoutAccount =>
      CopyWith$Fragment$PayoutAccount.stub(_res);
}

const documentNodeMutationcreatePayoutAccount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createPayoutAccount'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'PayoutAccountInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createPayoutAccount'),
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
            name: NameNode(value: 'PayoutAccount'),
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
  fragmentDefinitionPayoutAccount,
]);
Mutation$createPayoutAccount _parserFn$Mutation$createPayoutAccount(
        Map<String, dynamic> data) =>
    Mutation$createPayoutAccount.fromJson(data);
typedef OnMutationCompleted$Mutation$createPayoutAccount = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$createPayoutAccount?,
);

class Options$Mutation$createPayoutAccount
    extends graphql.MutationOptions<Mutation$createPayoutAccount> {
  Options$Mutation$createPayoutAccount({
    String? operationName,
    required Variables$Mutation$createPayoutAccount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createPayoutAccount? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createPayoutAccount? onCompleted,
    graphql.OnMutationUpdate<Mutation$createPayoutAccount>? update,
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
                        : _parserFn$Mutation$createPayoutAccount(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreatePayoutAccount,
          parserFn: _parserFn$Mutation$createPayoutAccount,
        );

  final OnMutationCompleted$Mutation$createPayoutAccount? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$createPayoutAccount
    extends graphql.WatchQueryOptions<Mutation$createPayoutAccount> {
  WatchOptions$Mutation$createPayoutAccount({
    String? operationName,
    required Variables$Mutation$createPayoutAccount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createPayoutAccount? typedOptimisticResult,
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
          document: documentNodeMutationcreatePayoutAccount,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$createPayoutAccount,
        );
}

extension ClientExtension$Mutation$createPayoutAccount
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$createPayoutAccount>>
      mutate$createPayoutAccount(
              Options$Mutation$createPayoutAccount options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$createPayoutAccount>
      watchMutation$createPayoutAccount(
              WatchOptions$Mutation$createPayoutAccount options) =>
          this.watchMutation(options);
}
