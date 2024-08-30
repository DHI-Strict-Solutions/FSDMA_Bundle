import '../fragments/chat_message.fragment.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$SendMessage {
  factory Variables$Mutation$SendMessage({
    required String orderId,
    required String message,
  }) =>
      Variables$Mutation$SendMessage._({
        r'orderId': orderId,
        r'message': message,
      });

  Variables$Mutation$SendMessage._(this._$data);

  factory Variables$Mutation$SendMessage.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    final l$message = data['message'];
    result$data['message'] = (l$message as String);
    return Variables$Mutation$SendMessage._(result$data);
  }

  Map<String, dynamic> _$data;

  String get orderId => (_$data['orderId'] as String);

  String get message => (_$data['message'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    final l$message = message;
    result$data['message'] = l$message;
    return result$data;
  }

  CopyWith$Variables$Mutation$SendMessage<Variables$Mutation$SendMessage>
      get copyWith => CopyWith$Variables$Mutation$SendMessage(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SendMessage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderId = orderId;
    final l$message = message;
    return Object.hashAll([
      l$orderId,
      l$message,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SendMessage<TRes> {
  factory CopyWith$Variables$Mutation$SendMessage(
    Variables$Mutation$SendMessage instance,
    TRes Function(Variables$Mutation$SendMessage) then,
  ) = _CopyWithImpl$Variables$Mutation$SendMessage;

  factory CopyWith$Variables$Mutation$SendMessage.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SendMessage;

  TRes call({
    String? orderId,
    String? message,
  });
}

class _CopyWithImpl$Variables$Mutation$SendMessage<TRes>
    implements CopyWith$Variables$Mutation$SendMessage<TRes> {
  _CopyWithImpl$Variables$Mutation$SendMessage(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SendMessage _instance;

  final TRes Function(Variables$Mutation$SendMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderId = _undefined,
    Object? message = _undefined,
  }) =>
      _then(Variables$Mutation$SendMessage._({
        ..._instance._$data,
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as String),
        if (message != _undefined && message != null)
          'message': (message as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SendMessage<TRes>
    implements CopyWith$Variables$Mutation$SendMessage<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SendMessage(this._res);

  TRes _res;

  call({
    String? orderId,
    String? message,
  }) =>
      _res;
}

class Mutation$SendMessage {
  Mutation$SendMessage({
    required this.createOneOrderMessage,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SendMessage.fromJson(Map<String, dynamic> json) {
    final l$createOneOrderMessage = json['createOneOrderMessage'];
    final l$$__typename = json['__typename'];
    return Mutation$SendMessage(
      createOneOrderMessage: Fragment$ChatMessage.fromJson(
          (l$createOneOrderMessage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ChatMessage createOneOrderMessage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneOrderMessage = createOneOrderMessage;
    _resultData['createOneOrderMessage'] = l$createOneOrderMessage.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneOrderMessage = createOneOrderMessage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOneOrderMessage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SendMessage) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneOrderMessage = createOneOrderMessage;
    final lOther$createOneOrderMessage = other.createOneOrderMessage;
    if (l$createOneOrderMessage != lOther$createOneOrderMessage) {
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

extension UtilityExtension$Mutation$SendMessage on Mutation$SendMessage {
  CopyWith$Mutation$SendMessage<Mutation$SendMessage> get copyWith =>
      CopyWith$Mutation$SendMessage(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SendMessage<TRes> {
  factory CopyWith$Mutation$SendMessage(
    Mutation$SendMessage instance,
    TRes Function(Mutation$SendMessage) then,
  ) = _CopyWithImpl$Mutation$SendMessage;

  factory CopyWith$Mutation$SendMessage.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendMessage;

  TRes call({
    Fragment$ChatMessage? createOneOrderMessage,
    String? $__typename,
  });
  CopyWith$Fragment$ChatMessage<TRes> get createOneOrderMessage;
}

class _CopyWithImpl$Mutation$SendMessage<TRes>
    implements CopyWith$Mutation$SendMessage<TRes> {
  _CopyWithImpl$Mutation$SendMessage(
    this._instance,
    this._then,
  );

  final Mutation$SendMessage _instance;

  final TRes Function(Mutation$SendMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOneOrderMessage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SendMessage(
        createOneOrderMessage:
            createOneOrderMessage == _undefined || createOneOrderMessage == null
                ? _instance.createOneOrderMessage
                : (createOneOrderMessage as Fragment$ChatMessage),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ChatMessage<TRes> get createOneOrderMessage {
    final local$createOneOrderMessage = _instance.createOneOrderMessage;
    return CopyWith$Fragment$ChatMessage(
        local$createOneOrderMessage, (e) => call(createOneOrderMessage: e));
  }
}

class _CopyWithStubImpl$Mutation$SendMessage<TRes>
    implements CopyWith$Mutation$SendMessage<TRes> {
  _CopyWithStubImpl$Mutation$SendMessage(this._res);

  TRes _res;

  call({
    Fragment$ChatMessage? createOneOrderMessage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ChatMessage<TRes> get createOneOrderMessage =>
      CopyWith$Fragment$ChatMessage.stub(_res);
}

const documentNodeMutationSendMessage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SendMessage'),
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
        variable: VariableNode(name: NameNode(value: 'message')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneOrderMessage'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'orderMessage'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'content'),
                    value: VariableNode(name: NameNode(value: 'message')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'requestId'),
                    value: VariableNode(name: NameNode(value: 'orderId')),
                  ),
                ]),
              )
            ]),
          )
        ],
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
  ),
  fragmentDefinitionChatMessage,
]);
Mutation$SendMessage _parserFn$Mutation$SendMessage(
        Map<String, dynamic> data) =>
    Mutation$SendMessage.fromJson(data);
typedef OnMutationCompleted$Mutation$SendMessage = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SendMessage?,
);

class Options$Mutation$SendMessage
    extends graphql.MutationOptions<Mutation$SendMessage> {
  Options$Mutation$SendMessage({
    String? operationName,
    required Variables$Mutation$SendMessage variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendMessage? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SendMessage? onCompleted,
    graphql.OnMutationUpdate<Mutation$SendMessage>? update,
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
                    data == null ? null : _parserFn$Mutation$SendMessage(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSendMessage,
          parserFn: _parserFn$Mutation$SendMessage,
        );

  final OnMutationCompleted$Mutation$SendMessage? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SendMessage
    extends graphql.WatchQueryOptions<Mutation$SendMessage> {
  WatchOptions$Mutation$SendMessage({
    String? operationName,
    required Variables$Mutation$SendMessage variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendMessage? typedOptimisticResult,
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
          document: documentNodeMutationSendMessage,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SendMessage,
        );
}

extension ClientExtension$Mutation$SendMessage on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SendMessage>> mutate$SendMessage(
          Options$Mutation$SendMessage options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SendMessage> watchMutation$SendMessage(
          WatchOptions$Mutation$SendMessage options) =>
      this.watchMutation(options);
}

class Subscription$ChatMessage {
  Subscription$ChatMessage({required this.newMessageReceived});

  factory Subscription$ChatMessage.fromJson(Map<String, dynamic> json) {
    final l$newMessageReceived = json['newMessageReceived'];
    return Subscription$ChatMessage(
        newMessageReceived: Fragment$ChatMessage.fromJson(
            (l$newMessageReceived as Map<String, dynamic>)));
  }

  final Fragment$ChatMessage newMessageReceived;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$newMessageReceived = newMessageReceived;
    _resultData['newMessageReceived'] = l$newMessageReceived.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$newMessageReceived = newMessageReceived;
    return Object.hashAll([l$newMessageReceived]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$ChatMessage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$newMessageReceived = newMessageReceived;
    final lOther$newMessageReceived = other.newMessageReceived;
    if (l$newMessageReceived != lOther$newMessageReceived) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$ChatMessage
    on Subscription$ChatMessage {
  CopyWith$Subscription$ChatMessage<Subscription$ChatMessage> get copyWith =>
      CopyWith$Subscription$ChatMessage(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$ChatMessage<TRes> {
  factory CopyWith$Subscription$ChatMessage(
    Subscription$ChatMessage instance,
    TRes Function(Subscription$ChatMessage) then,
  ) = _CopyWithImpl$Subscription$ChatMessage;

  factory CopyWith$Subscription$ChatMessage.stub(TRes res) =
      _CopyWithStubImpl$Subscription$ChatMessage;

  TRes call({Fragment$ChatMessage? newMessageReceived});
  CopyWith$Fragment$ChatMessage<TRes> get newMessageReceived;
}

class _CopyWithImpl$Subscription$ChatMessage<TRes>
    implements CopyWith$Subscription$ChatMessage<TRes> {
  _CopyWithImpl$Subscription$ChatMessage(
    this._instance,
    this._then,
  );

  final Subscription$ChatMessage _instance;

  final TRes Function(Subscription$ChatMessage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? newMessageReceived = _undefined}) =>
      _then(Subscription$ChatMessage(
          newMessageReceived:
              newMessageReceived == _undefined || newMessageReceived == null
                  ? _instance.newMessageReceived
                  : (newMessageReceived as Fragment$ChatMessage)));

  CopyWith$Fragment$ChatMessage<TRes> get newMessageReceived {
    final local$newMessageReceived = _instance.newMessageReceived;
    return CopyWith$Fragment$ChatMessage(
        local$newMessageReceived, (e) => call(newMessageReceived: e));
  }
}

class _CopyWithStubImpl$Subscription$ChatMessage<TRes>
    implements CopyWith$Subscription$ChatMessage<TRes> {
  _CopyWithStubImpl$Subscription$ChatMessage(this._res);

  TRes _res;

  call({Fragment$ChatMessage? newMessageReceived}) => _res;

  CopyWith$Fragment$ChatMessage<TRes> get newMessageReceived =>
      CopyWith$Fragment$ChatMessage.stub(_res);
}

const documentNodeSubscriptionChatMessage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'ChatMessage'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'newMessageReceived'),
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
      )
    ]),
  ),
  fragmentDefinitionChatMessage,
]);
Subscription$ChatMessage _parserFn$Subscription$ChatMessage(
        Map<String, dynamic> data) =>
    Subscription$ChatMessage.fromJson(data);

class Options$Subscription$ChatMessage
    extends graphql.SubscriptionOptions<Subscription$ChatMessage> {
  Options$Subscription$ChatMessage({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$ChatMessage? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionChatMessage,
          parserFn: _parserFn$Subscription$ChatMessage,
        );
}

class WatchOptions$Subscription$ChatMessage
    extends graphql.WatchQueryOptions<Subscription$ChatMessage> {
  WatchOptions$Subscription$ChatMessage({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$ChatMessage? typedOptimisticResult,
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
          document: documentNodeSubscriptionChatMessage,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$ChatMessage,
        );
}

class FetchMoreOptions$Subscription$ChatMessage
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$ChatMessage(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionChatMessage,
        );
}

extension ClientExtension$Subscription$ChatMessage on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$ChatMessage>> subscribe$ChatMessage(
          [Options$Subscription$ChatMessage? options]) =>
      this.subscribe(options ?? Options$Subscription$ChatMessage());
  graphql.ObservableQuery<Subscription$ChatMessage>
      watchSubscription$ChatMessage(
              [WatchOptions$Subscription$ChatMessage? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$ChatMessage());
}
