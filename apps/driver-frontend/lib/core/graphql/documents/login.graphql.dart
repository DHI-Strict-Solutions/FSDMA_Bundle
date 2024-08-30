import '../fragments/chat_message.fragment.graphql.dart';
import '../fragments/current_order.fragment.graphql.dart';
import '../fragments/login.fragment.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
import '../fragments/payment_gateway.fragment.graphql.dart';
import '../fragments/point.fragment.graphql.dart';
import '../fragments/profile.fragment.graphql.dart';
import '../fragments/ride_option.fragment.graphql.dart';
import '../fragments/saved_payment_method.fragment.graphql.dart';
import '../fragments/vehicle_color.fragment.graphql.dart';
import '../fragments/vehicle_model.fragment.graphql.dart';
import '../fragments/wallet.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$VerifyNumber {
  factory Variables$Mutation$VerifyNumber({
    required String countryIso,
    required String number,
  }) =>
      Variables$Mutation$VerifyNumber._({
        r'countryIso': countryIso,
        r'number': number,
      });

  Variables$Mutation$VerifyNumber._(this._$data);

  factory Variables$Mutation$VerifyNumber.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$countryIso = data['countryIso'];
    result$data['countryIso'] = (l$countryIso as String);
    final l$number = data['number'];
    result$data['number'] = (l$number as String);
    return Variables$Mutation$VerifyNumber._(result$data);
  }

  Map<String, dynamic> _$data;

  String get countryIso => (_$data['countryIso'] as String);

  String get number => (_$data['number'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$countryIso = countryIso;
    result$data['countryIso'] = l$countryIso;
    final l$number = number;
    result$data['number'] = l$number;
    return result$data;
  }

  CopyWith$Variables$Mutation$VerifyNumber<Variables$Mutation$VerifyNumber>
      get copyWith => CopyWith$Variables$Mutation$VerifyNumber(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$VerifyNumber) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countryIso = countryIso;
    final lOther$countryIso = other.countryIso;
    if (l$countryIso != lOther$countryIso) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$countryIso = countryIso;
    final l$number = number;
    return Object.hashAll([
      l$countryIso,
      l$number,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$VerifyNumber<TRes> {
  factory CopyWith$Variables$Mutation$VerifyNumber(
    Variables$Mutation$VerifyNumber instance,
    TRes Function(Variables$Mutation$VerifyNumber) then,
  ) = _CopyWithImpl$Variables$Mutation$VerifyNumber;

  factory CopyWith$Variables$Mutation$VerifyNumber.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$VerifyNumber;

  TRes call({
    String? countryIso,
    String? number,
  });
}

class _CopyWithImpl$Variables$Mutation$VerifyNumber<TRes>
    implements CopyWith$Variables$Mutation$VerifyNumber<TRes> {
  _CopyWithImpl$Variables$Mutation$VerifyNumber(
    this._instance,
    this._then,
  );

  final Variables$Mutation$VerifyNumber _instance;

  final TRes Function(Variables$Mutation$VerifyNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countryIso = _undefined,
    Object? number = _undefined,
  }) =>
      _then(Variables$Mutation$VerifyNumber._({
        ..._instance._$data,
        if (countryIso != _undefined && countryIso != null)
          'countryIso': (countryIso as String),
        if (number != _undefined && number != null)
          'number': (number as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$VerifyNumber<TRes>
    implements CopyWith$Variables$Mutation$VerifyNumber<TRes> {
  _CopyWithStubImpl$Variables$Mutation$VerifyNumber(this._res);

  TRes _res;

  call({
    String? countryIso,
    String? number,
  }) =>
      _res;
}

class Mutation$VerifyNumber {
  Mutation$VerifyNumber({
    required this.verifyNumber,
    this.$__typename = 'Mutation',
  });

  factory Mutation$VerifyNumber.fromJson(Map<String, dynamic> json) {
    final l$verifyNumber = json['verifyNumber'];
    final l$$__typename = json['__typename'];
    return Mutation$VerifyNumber(
      verifyNumber: Fragment$VerifyNumberFragment.fromJson(
          (l$verifyNumber as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$VerifyNumberFragment verifyNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$verifyNumber = verifyNumber;
    _resultData['verifyNumber'] = l$verifyNumber.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$verifyNumber = verifyNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$verifyNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$VerifyNumber) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$verifyNumber = verifyNumber;
    final lOther$verifyNumber = other.verifyNumber;
    if (l$verifyNumber != lOther$verifyNumber) {
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

extension UtilityExtension$Mutation$VerifyNumber on Mutation$VerifyNumber {
  CopyWith$Mutation$VerifyNumber<Mutation$VerifyNumber> get copyWith =>
      CopyWith$Mutation$VerifyNumber(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$VerifyNumber<TRes> {
  factory CopyWith$Mutation$VerifyNumber(
    Mutation$VerifyNumber instance,
    TRes Function(Mutation$VerifyNumber) then,
  ) = _CopyWithImpl$Mutation$VerifyNumber;

  factory CopyWith$Mutation$VerifyNumber.stub(TRes res) =
      _CopyWithStubImpl$Mutation$VerifyNumber;

  TRes call({
    Fragment$VerifyNumberFragment? verifyNumber,
    String? $__typename,
  });
  CopyWith$Fragment$VerifyNumberFragment<TRes> get verifyNumber;
}

class _CopyWithImpl$Mutation$VerifyNumber<TRes>
    implements CopyWith$Mutation$VerifyNumber<TRes> {
  _CopyWithImpl$Mutation$VerifyNumber(
    this._instance,
    this._then,
  );

  final Mutation$VerifyNumber _instance;

  final TRes Function(Mutation$VerifyNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? verifyNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$VerifyNumber(
        verifyNumber: verifyNumber == _undefined || verifyNumber == null
            ? _instance.verifyNumber
            : (verifyNumber as Fragment$VerifyNumberFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$VerifyNumberFragment<TRes> get verifyNumber {
    final local$verifyNumber = _instance.verifyNumber;
    return CopyWith$Fragment$VerifyNumberFragment(
        local$verifyNumber, (e) => call(verifyNumber: e));
  }
}

class _CopyWithStubImpl$Mutation$VerifyNumber<TRes>
    implements CopyWith$Mutation$VerifyNumber<TRes> {
  _CopyWithStubImpl$Mutation$VerifyNumber(this._res);

  TRes _res;

  call({
    Fragment$VerifyNumberFragment? verifyNumber,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$VerifyNumberFragment<TRes> get verifyNumber =>
      CopyWith$Fragment$VerifyNumberFragment.stub(_res);
}

const documentNodeMutationVerifyNumber = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'VerifyNumber'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'countryIso')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'number')),
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
        name: NameNode(value: 'verifyNumber'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'countryIso'),
            value: VariableNode(name: NameNode(value: 'countryIso')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mobileNumber'),
            value: VariableNode(name: NameNode(value: 'number')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'VerifyNumberFragment'),
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
  fragmentDefinitionVerifyNumberFragment,
]);
Mutation$VerifyNumber _parserFn$Mutation$VerifyNumber(
        Map<String, dynamic> data) =>
    Mutation$VerifyNumber.fromJson(data);
typedef OnMutationCompleted$Mutation$VerifyNumber = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$VerifyNumber?,
);

class Options$Mutation$VerifyNumber
    extends graphql.MutationOptions<Mutation$VerifyNumber> {
  Options$Mutation$VerifyNumber({
    String? operationName,
    required Variables$Mutation$VerifyNumber variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyNumber? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$VerifyNumber? onCompleted,
    graphql.OnMutationUpdate<Mutation$VerifyNumber>? update,
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
                    data == null ? null : _parserFn$Mutation$VerifyNumber(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationVerifyNumber,
          parserFn: _parserFn$Mutation$VerifyNumber,
        );

  final OnMutationCompleted$Mutation$VerifyNumber? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$VerifyNumber
    extends graphql.WatchQueryOptions<Mutation$VerifyNumber> {
  WatchOptions$Mutation$VerifyNumber({
    String? operationName,
    required Variables$Mutation$VerifyNumber variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyNumber? typedOptimisticResult,
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
          document: documentNodeMutationVerifyNumber,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$VerifyNumber,
        );
}

extension ClientExtension$Mutation$VerifyNumber on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$VerifyNumber>> mutate$VerifyNumber(
          Options$Mutation$VerifyNumber options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$VerifyNumber> watchMutation$VerifyNumber(
          WatchOptions$Mutation$VerifyNumber options) =>
      this.watchMutation(options);
}

class Variables$Mutation$VerifyOtp {
  factory Variables$Mutation$VerifyOtp({
    required String hash,
    required String code,
  }) =>
      Variables$Mutation$VerifyOtp._({
        r'hash': hash,
        r'code': code,
      });

  Variables$Mutation$VerifyOtp._(this._$data);

  factory Variables$Mutation$VerifyOtp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$hash = data['hash'];
    result$data['hash'] = (l$hash as String);
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Variables$Mutation$VerifyOtp._(result$data);
  }

  Map<String, dynamic> _$data;

  String get hash => (_$data['hash'] as String);

  String get code => (_$data['code'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$hash = hash;
    result$data['hash'] = l$hash;
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Variables$Mutation$VerifyOtp<Variables$Mutation$VerifyOtp>
      get copyWith => CopyWith$Variables$Mutation$VerifyOtp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$VerifyOtp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hash = hash;
    final lOther$hash = other.hash;
    if (l$hash != lOther$hash) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$hash = hash;
    final l$code = code;
    return Object.hashAll([
      l$hash,
      l$code,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$VerifyOtp<TRes> {
  factory CopyWith$Variables$Mutation$VerifyOtp(
    Variables$Mutation$VerifyOtp instance,
    TRes Function(Variables$Mutation$VerifyOtp) then,
  ) = _CopyWithImpl$Variables$Mutation$VerifyOtp;

  factory CopyWith$Variables$Mutation$VerifyOtp.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$VerifyOtp;

  TRes call({
    String? hash,
    String? code,
  });
}

class _CopyWithImpl$Variables$Mutation$VerifyOtp<TRes>
    implements CopyWith$Variables$Mutation$VerifyOtp<TRes> {
  _CopyWithImpl$Variables$Mutation$VerifyOtp(
    this._instance,
    this._then,
  );

  final Variables$Mutation$VerifyOtp _instance;

  final TRes Function(Variables$Mutation$VerifyOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hash = _undefined,
    Object? code = _undefined,
  }) =>
      _then(Variables$Mutation$VerifyOtp._({
        ..._instance._$data,
        if (hash != _undefined && hash != null) 'hash': (hash as String),
        if (code != _undefined && code != null) 'code': (code as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$VerifyOtp<TRes>
    implements CopyWith$Variables$Mutation$VerifyOtp<TRes> {
  _CopyWithStubImpl$Variables$Mutation$VerifyOtp(this._res);

  TRes _res;

  call({
    String? hash,
    String? code,
  }) =>
      _res;
}

class Mutation$VerifyOtp {
  Mutation$VerifyOtp({
    required this.verifyOtp,
    this.$__typename = 'Mutation',
  });

  factory Mutation$VerifyOtp.fromJson(Map<String, dynamic> json) {
    final l$verifyOtp = json['verifyOtp'];
    final l$$__typename = json['__typename'];
    return Mutation$VerifyOtp(
      verifyOtp: Fragment$VerifyOtpOrPasswordFragment.fromJson(
          (l$verifyOtp as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$VerifyOtpOrPasswordFragment verifyOtp;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$verifyOtp = verifyOtp;
    _resultData['verifyOtp'] = l$verifyOtp.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$verifyOtp = verifyOtp;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$verifyOtp,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$VerifyOtp) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$verifyOtp = verifyOtp;
    final lOther$verifyOtp = other.verifyOtp;
    if (l$verifyOtp != lOther$verifyOtp) {
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

extension UtilityExtension$Mutation$VerifyOtp on Mutation$VerifyOtp {
  CopyWith$Mutation$VerifyOtp<Mutation$VerifyOtp> get copyWith =>
      CopyWith$Mutation$VerifyOtp(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$VerifyOtp<TRes> {
  factory CopyWith$Mutation$VerifyOtp(
    Mutation$VerifyOtp instance,
    TRes Function(Mutation$VerifyOtp) then,
  ) = _CopyWithImpl$Mutation$VerifyOtp;

  factory CopyWith$Mutation$VerifyOtp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$VerifyOtp;

  TRes call({
    Fragment$VerifyOtpOrPasswordFragment? verifyOtp,
    String? $__typename,
  });
  CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> get verifyOtp;
}

class _CopyWithImpl$Mutation$VerifyOtp<TRes>
    implements CopyWith$Mutation$VerifyOtp<TRes> {
  _CopyWithImpl$Mutation$VerifyOtp(
    this._instance,
    this._then,
  );

  final Mutation$VerifyOtp _instance;

  final TRes Function(Mutation$VerifyOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? verifyOtp = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$VerifyOtp(
        verifyOtp: verifyOtp == _undefined || verifyOtp == null
            ? _instance.verifyOtp
            : (verifyOtp as Fragment$VerifyOtpOrPasswordFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> get verifyOtp {
    final local$verifyOtp = _instance.verifyOtp;
    return CopyWith$Fragment$VerifyOtpOrPasswordFragment(
        local$verifyOtp, (e) => call(verifyOtp: e));
  }
}

class _CopyWithStubImpl$Mutation$VerifyOtp<TRes>
    implements CopyWith$Mutation$VerifyOtp<TRes> {
  _CopyWithStubImpl$Mutation$VerifyOtp(this._res);

  TRes _res;

  call({
    Fragment$VerifyOtpOrPasswordFragment? verifyOtp,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> get verifyOtp =>
      CopyWith$Fragment$VerifyOtpOrPasswordFragment.stub(_res);
}

const documentNodeMutationVerifyOtp = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'VerifyOtp'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'hash')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
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
        name: NameNode(value: 'verifyOtp'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'hash'),
            value: VariableNode(name: NameNode(value: 'hash')),
          ),
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'code')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'VerifyOtpOrPasswordFragment'),
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
  fragmentDefinitionVerifyOtpOrPasswordFragment,
  fragmentDefinitionProfileFullFragment,
  fragmentDefinitionMediaFragment,
]);
Mutation$VerifyOtp _parserFn$Mutation$VerifyOtp(Map<String, dynamic> data) =>
    Mutation$VerifyOtp.fromJson(data);
typedef OnMutationCompleted$Mutation$VerifyOtp = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$VerifyOtp?,
);

class Options$Mutation$VerifyOtp
    extends graphql.MutationOptions<Mutation$VerifyOtp> {
  Options$Mutation$VerifyOtp({
    String? operationName,
    required Variables$Mutation$VerifyOtp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyOtp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$VerifyOtp? onCompleted,
    graphql.OnMutationUpdate<Mutation$VerifyOtp>? update,
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
                    data == null ? null : _parserFn$Mutation$VerifyOtp(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationVerifyOtp,
          parserFn: _parserFn$Mutation$VerifyOtp,
        );

  final OnMutationCompleted$Mutation$VerifyOtp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$VerifyOtp
    extends graphql.WatchQueryOptions<Mutation$VerifyOtp> {
  WatchOptions$Mutation$VerifyOtp({
    String? operationName,
    required Variables$Mutation$VerifyOtp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyOtp? typedOptimisticResult,
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
          document: documentNodeMutationVerifyOtp,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$VerifyOtp,
        );
}

extension ClientExtension$Mutation$VerifyOtp on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$VerifyOtp>> mutate$VerifyOtp(
          Options$Mutation$VerifyOtp options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$VerifyOtp> watchMutation$VerifyOtp(
          WatchOptions$Mutation$VerifyOtp options) =>
      this.watchMutation(options);
}

class Variables$Mutation$VerifyPassword {
  factory Variables$Mutation$VerifyPassword({
    required String mobileNumber,
    required String password,
  }) =>
      Variables$Mutation$VerifyPassword._({
        r'mobileNumber': mobileNumber,
        r'password': password,
      });

  Variables$Mutation$VerifyPassword._(this._$data);

  factory Variables$Mutation$VerifyPassword.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mobileNumber = data['mobileNumber'];
    result$data['mobileNumber'] = (l$mobileNumber as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Variables$Mutation$VerifyPassword._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mobileNumber => (_$data['mobileNumber'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mobileNumber = mobileNumber;
    result$data['mobileNumber'] = l$mobileNumber;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Variables$Mutation$VerifyPassword<Variables$Mutation$VerifyPassword>
      get copyWith => CopyWith$Variables$Mutation$VerifyPassword(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$VerifyPassword) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mobileNumber = mobileNumber;
    final l$password = password;
    return Object.hashAll([
      l$mobileNumber,
      l$password,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$VerifyPassword<TRes> {
  factory CopyWith$Variables$Mutation$VerifyPassword(
    Variables$Mutation$VerifyPassword instance,
    TRes Function(Variables$Mutation$VerifyPassword) then,
  ) = _CopyWithImpl$Variables$Mutation$VerifyPassword;

  factory CopyWith$Variables$Mutation$VerifyPassword.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$VerifyPassword;

  TRes call({
    String? mobileNumber,
    String? password,
  });
}

class _CopyWithImpl$Variables$Mutation$VerifyPassword<TRes>
    implements CopyWith$Variables$Mutation$VerifyPassword<TRes> {
  _CopyWithImpl$Variables$Mutation$VerifyPassword(
    this._instance,
    this._then,
  );

  final Variables$Mutation$VerifyPassword _instance;

  final TRes Function(Variables$Mutation$VerifyPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mobileNumber = _undefined,
    Object? password = _undefined,
  }) =>
      _then(Variables$Mutation$VerifyPassword._({
        ..._instance._$data,
        if (mobileNumber != _undefined && mobileNumber != null)
          'mobileNumber': (mobileNumber as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$VerifyPassword<TRes>
    implements CopyWith$Variables$Mutation$VerifyPassword<TRes> {
  _CopyWithStubImpl$Variables$Mutation$VerifyPassword(this._res);

  TRes _res;

  call({
    String? mobileNumber,
    String? password,
  }) =>
      _res;
}

class Mutation$VerifyPassword {
  Mutation$VerifyPassword({
    required this.verifyPassword,
    this.$__typename = 'Mutation',
  });

  factory Mutation$VerifyPassword.fromJson(Map<String, dynamic> json) {
    final l$verifyPassword = json['verifyPassword'];
    final l$$__typename = json['__typename'];
    return Mutation$VerifyPassword(
      verifyPassword: Fragment$VerifyOtpOrPasswordFragment.fromJson(
          (l$verifyPassword as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$VerifyOtpOrPasswordFragment verifyPassword;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$verifyPassword = verifyPassword;
    _resultData['verifyPassword'] = l$verifyPassword.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$verifyPassword = verifyPassword;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$verifyPassword,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$VerifyPassword) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$verifyPassword = verifyPassword;
    final lOther$verifyPassword = other.verifyPassword;
    if (l$verifyPassword != lOther$verifyPassword) {
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

extension UtilityExtension$Mutation$VerifyPassword on Mutation$VerifyPassword {
  CopyWith$Mutation$VerifyPassword<Mutation$VerifyPassword> get copyWith =>
      CopyWith$Mutation$VerifyPassword(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$VerifyPassword<TRes> {
  factory CopyWith$Mutation$VerifyPassword(
    Mutation$VerifyPassword instance,
    TRes Function(Mutation$VerifyPassword) then,
  ) = _CopyWithImpl$Mutation$VerifyPassword;

  factory CopyWith$Mutation$VerifyPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$VerifyPassword;

  TRes call({
    Fragment$VerifyOtpOrPasswordFragment? verifyPassword,
    String? $__typename,
  });
  CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> get verifyPassword;
}

class _CopyWithImpl$Mutation$VerifyPassword<TRes>
    implements CopyWith$Mutation$VerifyPassword<TRes> {
  _CopyWithImpl$Mutation$VerifyPassword(
    this._instance,
    this._then,
  );

  final Mutation$VerifyPassword _instance;

  final TRes Function(Mutation$VerifyPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? verifyPassword = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$VerifyPassword(
        verifyPassword: verifyPassword == _undefined || verifyPassword == null
            ? _instance.verifyPassword
            : (verifyPassword as Fragment$VerifyOtpOrPasswordFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> get verifyPassword {
    final local$verifyPassword = _instance.verifyPassword;
    return CopyWith$Fragment$VerifyOtpOrPasswordFragment(
        local$verifyPassword, (e) => call(verifyPassword: e));
  }
}

class _CopyWithStubImpl$Mutation$VerifyPassword<TRes>
    implements CopyWith$Mutation$VerifyPassword<TRes> {
  _CopyWithStubImpl$Mutation$VerifyPassword(this._res);

  TRes _res;

  call({
    Fragment$VerifyOtpOrPasswordFragment? verifyPassword,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$VerifyOtpOrPasswordFragment<TRes> get verifyPassword =>
      CopyWith$Fragment$VerifyOtpOrPasswordFragment.stub(_res);
}

const documentNodeMutationVerifyPassword = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'VerifyPassword'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mobileNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
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
        name: NameNode(value: 'verifyPassword'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'mobileNumber'),
            value: VariableNode(name: NameNode(value: 'mobileNumber')),
          ),
          ArgumentNode(
            name: NameNode(value: 'password'),
            value: VariableNode(name: NameNode(value: 'password')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'VerifyOtpOrPasswordFragment'),
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
  fragmentDefinitionVerifyOtpOrPasswordFragment,
  fragmentDefinitionProfileFullFragment,
  fragmentDefinitionMediaFragment,
]);
Mutation$VerifyPassword _parserFn$Mutation$VerifyPassword(
        Map<String, dynamic> data) =>
    Mutation$VerifyPassword.fromJson(data);
typedef OnMutationCompleted$Mutation$VerifyPassword = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$VerifyPassword?,
);

class Options$Mutation$VerifyPassword
    extends graphql.MutationOptions<Mutation$VerifyPassword> {
  Options$Mutation$VerifyPassword({
    String? operationName,
    required Variables$Mutation$VerifyPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$VerifyPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$VerifyPassword>? update,
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
                        : _parserFn$Mutation$VerifyPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationVerifyPassword,
          parserFn: _parserFn$Mutation$VerifyPassword,
        );

  final OnMutationCompleted$Mutation$VerifyPassword? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$VerifyPassword
    extends graphql.WatchQueryOptions<Mutation$VerifyPassword> {
  WatchOptions$Mutation$VerifyPassword({
    String? operationName,
    required Variables$Mutation$VerifyPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$VerifyPassword? typedOptimisticResult,
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
          document: documentNodeMutationVerifyPassword,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$VerifyPassword,
        );
}

extension ClientExtension$Mutation$VerifyPassword on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$VerifyPassword>> mutate$VerifyPassword(
          Options$Mutation$VerifyPassword options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$VerifyPassword> watchMutation$VerifyPassword(
          WatchOptions$Mutation$VerifyPassword options) =>
      this.watchMutation(options);
}

class Query$RegistrationData {
  Query$RegistrationData({
    required this.driver,
    required this.carModels,
    required this.carColors,
    this.$__typename = 'Query',
  });

  factory Query$RegistrationData.fromJson(Map<String, dynamic> json) {
    final l$driver = json['driver'];
    final l$carModels = json['carModels'];
    final l$carColors = json['carColors'];
    final l$$__typename = json['__typename'];
    return Query$RegistrationData(
      driver: Fragment$ProfileFullFragment.fromJson(
          (l$driver as Map<String, dynamic>)),
      carModels: (l$carModels as List<dynamic>)
          .map((e) =>
              Fragment$VehicleModel.fromJson((e as Map<String, dynamic>)))
          .toList(),
      carColors: (l$carColors as List<dynamic>)
          .map((e) =>
              Fragment$VehicleColor.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ProfileFullFragment driver;

  final List<Fragment$VehicleModel> carModels;

  final List<Fragment$VehicleColor> carColors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$driver = driver;
    _resultData['driver'] = l$driver.toJson();
    final l$carModels = carModels;
    _resultData['carModels'] = l$carModels.map((e) => e.toJson()).toList();
    final l$carColors = carColors;
    _resultData['carColors'] = l$carColors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$driver = driver;
    final l$carModels = carModels;
    final l$carColors = carColors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$driver,
      Object.hashAll(l$carModels.map((v) => v)),
      Object.hashAll(l$carColors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$RegistrationData) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$driver = driver;
    final lOther$driver = other.driver;
    if (l$driver != lOther$driver) {
      return false;
    }
    final l$carModels = carModels;
    final lOther$carModels = other.carModels;
    if (l$carModels.length != lOther$carModels.length) {
      return false;
    }
    for (int i = 0; i < l$carModels.length; i++) {
      final l$carModels$entry = l$carModels[i];
      final lOther$carModels$entry = lOther$carModels[i];
      if (l$carModels$entry != lOther$carModels$entry) {
        return false;
      }
    }
    final l$carColors = carColors;
    final lOther$carColors = other.carColors;
    if (l$carColors.length != lOther$carColors.length) {
      return false;
    }
    for (int i = 0; i < l$carColors.length; i++) {
      final l$carColors$entry = l$carColors[i];
      final lOther$carColors$entry = lOther$carColors[i];
      if (l$carColors$entry != lOther$carColors$entry) {
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

extension UtilityExtension$Query$RegistrationData on Query$RegistrationData {
  CopyWith$Query$RegistrationData<Query$RegistrationData> get copyWith =>
      CopyWith$Query$RegistrationData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$RegistrationData<TRes> {
  factory CopyWith$Query$RegistrationData(
    Query$RegistrationData instance,
    TRes Function(Query$RegistrationData) then,
  ) = _CopyWithImpl$Query$RegistrationData;

  factory CopyWith$Query$RegistrationData.stub(TRes res) =
      _CopyWithStubImpl$Query$RegistrationData;

  TRes call({
    Fragment$ProfileFullFragment? driver,
    List<Fragment$VehicleModel>? carModels,
    List<Fragment$VehicleColor>? carColors,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFullFragment<TRes> get driver;
  TRes carModels(
      Iterable<Fragment$VehicleModel> Function(
              Iterable<CopyWith$Fragment$VehicleModel<Fragment$VehicleModel>>)
          _fn);
  TRes carColors(
      Iterable<Fragment$VehicleColor> Function(
              Iterable<CopyWith$Fragment$VehicleColor<Fragment$VehicleColor>>)
          _fn);
}

class _CopyWithImpl$Query$RegistrationData<TRes>
    implements CopyWith$Query$RegistrationData<TRes> {
  _CopyWithImpl$Query$RegistrationData(
    this._instance,
    this._then,
  );

  final Query$RegistrationData _instance;

  final TRes Function(Query$RegistrationData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? driver = _undefined,
    Object? carModels = _undefined,
    Object? carColors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RegistrationData(
        driver: driver == _undefined || driver == null
            ? _instance.driver
            : (driver as Fragment$ProfileFullFragment),
        carModels: carModels == _undefined || carModels == null
            ? _instance.carModels
            : (carModels as List<Fragment$VehicleModel>),
        carColors: carColors == _undefined || carColors == null
            ? _instance.carColors
            : (carColors as List<Fragment$VehicleColor>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProfileFullFragment<TRes> get driver {
    final local$driver = _instance.driver;
    return CopyWith$Fragment$ProfileFullFragment(
        local$driver, (e) => call(driver: e));
  }

  TRes carModels(
          Iterable<Fragment$VehicleModel> Function(
                  Iterable<
                      CopyWith$Fragment$VehicleModel<Fragment$VehicleModel>>)
              _fn) =>
      call(
          carModels:
              _fn(_instance.carModels.map((e) => CopyWith$Fragment$VehicleModel(
                    e,
                    (i) => i,
                  ))).toList());

  TRes carColors(
          Iterable<Fragment$VehicleColor> Function(
                  Iterable<
                      CopyWith$Fragment$VehicleColor<Fragment$VehicleColor>>)
              _fn) =>
      call(
          carColors:
              _fn(_instance.carColors.map((e) => CopyWith$Fragment$VehicleColor(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$RegistrationData<TRes>
    implements CopyWith$Query$RegistrationData<TRes> {
  _CopyWithStubImpl$Query$RegistrationData(this._res);

  TRes _res;

  call({
    Fragment$ProfileFullFragment? driver,
    List<Fragment$VehicleModel>? carModels,
    List<Fragment$VehicleColor>? carColors,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFullFragment<TRes> get driver =>
      CopyWith$Fragment$ProfileFullFragment.stub(_res);

  carModels(_fn) => _res;

  carColors(_fn) => _res;
}

const documentNodeQueryRegistrationData = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'RegistrationData'),
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
            name: NameNode(value: 'ProfileFullFragment'),
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
        name: NameNode(value: 'carModels'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'VehicleModel'),
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
        name: NameNode(value: 'carColors'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'VehicleColor'),
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
  fragmentDefinitionProfileFullFragment,
  fragmentDefinitionMediaFragment,
  fragmentDefinitionVehicleModel,
  fragmentDefinitionVehicleColor,
]);
Query$RegistrationData _parserFn$Query$RegistrationData(
        Map<String, dynamic> data) =>
    Query$RegistrationData.fromJson(data);
typedef OnQueryComplete$Query$RegistrationData = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$RegistrationData?,
);

class Options$Query$RegistrationData
    extends graphql.QueryOptions<Query$RegistrationData> {
  Options$Query$RegistrationData({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RegistrationData? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$RegistrationData? onComplete,
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
                        : _parserFn$Query$RegistrationData(data),
                  ),
          onError: onError,
          document: documentNodeQueryRegistrationData,
          parserFn: _parserFn$Query$RegistrationData,
        );

  final OnQueryComplete$Query$RegistrationData? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$RegistrationData
    extends graphql.WatchQueryOptions<Query$RegistrationData> {
  WatchOptions$Query$RegistrationData({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RegistrationData? typedOptimisticResult,
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
          document: documentNodeQueryRegistrationData,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$RegistrationData,
        );
}

class FetchMoreOptions$Query$RegistrationData extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$RegistrationData(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryRegistrationData,
        );
}

extension ClientExtension$Query$RegistrationData on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$RegistrationData>> query$RegistrationData(
          [Options$Query$RegistrationData? options]) async =>
      await this.query(options ?? Options$Query$RegistrationData());
  graphql.ObservableQuery<Query$RegistrationData> watchQuery$RegistrationData(
          [WatchOptions$Query$RegistrationData? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$RegistrationData());
  void writeQuery$RegistrationData({
    required Query$RegistrationData data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryRegistrationData)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$RegistrationData? readQuery$RegistrationData({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryRegistrationData)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$RegistrationData.fromJson(result);
  }
}

class Variables$Mutation$SetName {
  factory Variables$Mutation$SetName({
    required String firstName,
    required String lastName,
  }) =>
      Variables$Mutation$SetName._({
        r'firstName': firstName,
        r'lastName': lastName,
      });

  Variables$Mutation$SetName._(this._$data);

  factory Variables$Mutation$SetName.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    return Variables$Mutation$SetName._(result$data);
  }

  Map<String, dynamic> _$data;

  String get firstName => (_$data['firstName'] as String);

  String get lastName => (_$data['lastName'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    return result$data;
  }

  CopyWith$Variables$Mutation$SetName<Variables$Mutation$SetName>
      get copyWith => CopyWith$Variables$Mutation$SetName(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SetName) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    return Object.hashAll([
      l$firstName,
      l$lastName,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SetName<TRes> {
  factory CopyWith$Variables$Mutation$SetName(
    Variables$Mutation$SetName instance,
    TRes Function(Variables$Mutation$SetName) then,
  ) = _CopyWithImpl$Variables$Mutation$SetName;

  factory CopyWith$Variables$Mutation$SetName.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SetName;

  TRes call({
    String? firstName,
    String? lastName,
  });
}

class _CopyWithImpl$Variables$Mutation$SetName<TRes>
    implements CopyWith$Variables$Mutation$SetName<TRes> {
  _CopyWithImpl$Variables$Mutation$SetName(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SetName _instance;

  final TRes Function(Variables$Mutation$SetName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
  }) =>
      _then(Variables$Mutation$SetName._({
        ..._instance._$data,
        if (firstName != _undefined && firstName != null)
          'firstName': (firstName as String),
        if (lastName != _undefined && lastName != null)
          'lastName': (lastName as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SetName<TRes>
    implements CopyWith$Variables$Mutation$SetName<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SetName(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
  }) =>
      _res;
}

class Mutation$SetName {
  Mutation$SetName({
    required this.updateOneDriver,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SetName.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$SetName(
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
    if (!(other is Mutation$SetName) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$SetName on Mutation$SetName {
  CopyWith$Mutation$SetName<Mutation$SetName> get copyWith =>
      CopyWith$Mutation$SetName(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SetName<TRes> {
  factory CopyWith$Mutation$SetName(
    Mutation$SetName instance,
    TRes Function(Mutation$SetName) then,
  ) = _CopyWithImpl$Mutation$SetName;

  factory CopyWith$Mutation$SetName.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetName;

  TRes call({
    Fragment$ProfileFragment? updateOneDriver,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFragment<TRes> get updateOneDriver;
}

class _CopyWithImpl$Mutation$SetName<TRes>
    implements CopyWith$Mutation$SetName<TRes> {
  _CopyWithImpl$Mutation$SetName(
    this._instance,
    this._then,
  );

  final Mutation$SetName _instance;

  final TRes Function(Mutation$SetName) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SetName(
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

class _CopyWithStubImpl$Mutation$SetName<TRes>
    implements CopyWith$Mutation$SetName<TRes> {
  _CopyWithStubImpl$Mutation$SetName(this._res);

  TRes _res;

  call({
    Fragment$ProfileFragment? updateOneDriver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFragment<TRes> get updateOneDriver =>
      CopyWith$Fragment$ProfileFragment.stub(_res);
}

const documentNodeMutationSetName = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SetName'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'firstName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastName')),
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
                    name: NameNode(value: 'firstName'),
                    value: VariableNode(name: NameNode(value: 'firstName')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'lastName'),
                    value: VariableNode(name: NameNode(value: 'lastName')),
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
Mutation$SetName _parserFn$Mutation$SetName(Map<String, dynamic> data) =>
    Mutation$SetName.fromJson(data);
typedef OnMutationCompleted$Mutation$SetName = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SetName?,
);

class Options$Mutation$SetName
    extends graphql.MutationOptions<Mutation$SetName> {
  Options$Mutation$SetName({
    String? operationName,
    required Variables$Mutation$SetName variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetName? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SetName? onCompleted,
    graphql.OnMutationUpdate<Mutation$SetName>? update,
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
                    data == null ? null : _parserFn$Mutation$SetName(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSetName,
          parserFn: _parserFn$Mutation$SetName,
        );

  final OnMutationCompleted$Mutation$SetName? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SetName
    extends graphql.WatchQueryOptions<Mutation$SetName> {
  WatchOptions$Mutation$SetName({
    String? operationName,
    required Variables$Mutation$SetName variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetName? typedOptimisticResult,
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
          document: documentNodeMutationSetName,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SetName,
        );
}

extension ClientExtension$Mutation$SetName on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SetName>> mutate$SetName(
          Options$Mutation$SetName options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SetName> watchMutation$SetName(
          WatchOptions$Mutation$SetName options) =>
      this.watchMutation(options);
}

class Variables$Mutation$SetPassword {
  factory Variables$Mutation$SetPassword({required String password}) =>
      Variables$Mutation$SetPassword._({
        r'password': password,
      });

  Variables$Mutation$SetPassword._(this._$data);

  factory Variables$Mutation$SetPassword.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Variables$Mutation$SetPassword._(result$data);
  }

  Map<String, dynamic> _$data;

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Variables$Mutation$SetPassword<Variables$Mutation$SetPassword>
      get copyWith => CopyWith$Variables$Mutation$SetPassword(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SetPassword) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$password = password;
    return Object.hashAll([l$password]);
  }
}

abstract class CopyWith$Variables$Mutation$SetPassword<TRes> {
  factory CopyWith$Variables$Mutation$SetPassword(
    Variables$Mutation$SetPassword instance,
    TRes Function(Variables$Mutation$SetPassword) then,
  ) = _CopyWithImpl$Variables$Mutation$SetPassword;

  factory CopyWith$Variables$Mutation$SetPassword.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SetPassword;

  TRes call({String? password});
}

class _CopyWithImpl$Variables$Mutation$SetPassword<TRes>
    implements CopyWith$Variables$Mutation$SetPassword<TRes> {
  _CopyWithImpl$Variables$Mutation$SetPassword(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SetPassword _instance;

  final TRes Function(Variables$Mutation$SetPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? password = _undefined}) =>
      _then(Variables$Mutation$SetPassword._({
        ..._instance._$data,
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SetPassword<TRes>
    implements CopyWith$Variables$Mutation$SetPassword<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SetPassword(this._res);

  TRes _res;

  call({String? password}) => _res;
}

class Mutation$SetPassword {
  Mutation$SetPassword({
    required this.updateOneDriver,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SetPassword.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$SetPassword(
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
    if (!(other is Mutation$SetPassword) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$SetPassword on Mutation$SetPassword {
  CopyWith$Mutation$SetPassword<Mutation$SetPassword> get copyWith =>
      CopyWith$Mutation$SetPassword(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SetPassword<TRes> {
  factory CopyWith$Mutation$SetPassword(
    Mutation$SetPassword instance,
    TRes Function(Mutation$SetPassword) then,
  ) = _CopyWithImpl$Mutation$SetPassword;

  factory CopyWith$Mutation$SetPassword.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetPassword;

  TRes call({
    Fragment$ProfileFragment? updateOneDriver,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFragment<TRes> get updateOneDriver;
}

class _CopyWithImpl$Mutation$SetPassword<TRes>
    implements CopyWith$Mutation$SetPassword<TRes> {
  _CopyWithImpl$Mutation$SetPassword(
    this._instance,
    this._then,
  );

  final Mutation$SetPassword _instance;

  final TRes Function(Mutation$SetPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SetPassword(
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

class _CopyWithStubImpl$Mutation$SetPassword<TRes>
    implements CopyWith$Mutation$SetPassword<TRes> {
  _CopyWithStubImpl$Mutation$SetPassword(this._res);

  TRes _res;

  call({
    Fragment$ProfileFragment? updateOneDriver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFragment<TRes> get updateOneDriver =>
      CopyWith$Fragment$ProfileFragment.stub(_res);
}

const documentNodeMutationSetPassword = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SetPassword'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
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
                    name: NameNode(value: 'password'),
                    value: VariableNode(name: NameNode(value: 'password')),
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
Mutation$SetPassword _parserFn$Mutation$SetPassword(
        Map<String, dynamic> data) =>
    Mutation$SetPassword.fromJson(data);
typedef OnMutationCompleted$Mutation$SetPassword = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SetPassword?,
);

class Options$Mutation$SetPassword
    extends graphql.MutationOptions<Mutation$SetPassword> {
  Options$Mutation$SetPassword({
    String? operationName,
    required Variables$Mutation$SetPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetPassword? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SetPassword? onCompleted,
    graphql.OnMutationUpdate<Mutation$SetPassword>? update,
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
                    data == null ? null : _parserFn$Mutation$SetPassword(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSetPassword,
          parserFn: _parserFn$Mutation$SetPassword,
        );

  final OnMutationCompleted$Mutation$SetPassword? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SetPassword
    extends graphql.WatchQueryOptions<Mutation$SetPassword> {
  WatchOptions$Mutation$SetPassword({
    String? operationName,
    required Variables$Mutation$SetPassword variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetPassword? typedOptimisticResult,
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
          document: documentNodeMutationSetPassword,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SetPassword,
        );
}

extension ClientExtension$Mutation$SetPassword on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SetPassword>> mutate$SetPassword(
          Options$Mutation$SetPassword options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SetPassword> watchMutation$SetPassword(
          WatchOptions$Mutation$SetPassword options) =>
      this.watchMutation(options);
}

class Variables$Mutation$ResendOtp {
  factory Variables$Mutation$ResendOtp({required String mobileNumber}) =>
      Variables$Mutation$ResendOtp._({
        r'mobileNumber': mobileNumber,
      });

  Variables$Mutation$ResendOtp._(this._$data);

  factory Variables$Mutation$ResendOtp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mobileNumber = data['mobileNumber'];
    result$data['mobileNumber'] = (l$mobileNumber as String);
    return Variables$Mutation$ResendOtp._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mobileNumber => (_$data['mobileNumber'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mobileNumber = mobileNumber;
    result$data['mobileNumber'] = l$mobileNumber;
    return result$data;
  }

  CopyWith$Variables$Mutation$ResendOtp<Variables$Mutation$ResendOtp>
      get copyWith => CopyWith$Variables$Mutation$ResendOtp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ResendOtp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mobileNumber = mobileNumber;
    return Object.hashAll([l$mobileNumber]);
  }
}

abstract class CopyWith$Variables$Mutation$ResendOtp<TRes> {
  factory CopyWith$Variables$Mutation$ResendOtp(
    Variables$Mutation$ResendOtp instance,
    TRes Function(Variables$Mutation$ResendOtp) then,
  ) = _CopyWithImpl$Variables$Mutation$ResendOtp;

  factory CopyWith$Variables$Mutation$ResendOtp.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ResendOtp;

  TRes call({String? mobileNumber});
}

class _CopyWithImpl$Variables$Mutation$ResendOtp<TRes>
    implements CopyWith$Variables$Mutation$ResendOtp<TRes> {
  _CopyWithImpl$Variables$Mutation$ResendOtp(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ResendOtp _instance;

  final TRes Function(Variables$Mutation$ResendOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? mobileNumber = _undefined}) =>
      _then(Variables$Mutation$ResendOtp._({
        ..._instance._$data,
        if (mobileNumber != _undefined && mobileNumber != null)
          'mobileNumber': (mobileNumber as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ResendOtp<TRes>
    implements CopyWith$Variables$Mutation$ResendOtp<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ResendOtp(this._res);

  TRes _res;

  call({String? mobileNumber}) => _res;
}

class Mutation$ResendOtp {
  Mutation$ResendOtp({
    required this.verifyNumber,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ResendOtp.fromJson(Map<String, dynamic> json) {
    final l$verifyNumber = json['verifyNumber'];
    final l$$__typename = json['__typename'];
    return Mutation$ResendOtp(
      verifyNumber: Fragment$VerifyNumberFragment.fromJson(
          (l$verifyNumber as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$VerifyNumberFragment verifyNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$verifyNumber = verifyNumber;
    _resultData['verifyNumber'] = l$verifyNumber.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$verifyNumber = verifyNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$verifyNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ResendOtp) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$verifyNumber = verifyNumber;
    final lOther$verifyNumber = other.verifyNumber;
    if (l$verifyNumber != lOther$verifyNumber) {
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

extension UtilityExtension$Mutation$ResendOtp on Mutation$ResendOtp {
  CopyWith$Mutation$ResendOtp<Mutation$ResendOtp> get copyWith =>
      CopyWith$Mutation$ResendOtp(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ResendOtp<TRes> {
  factory CopyWith$Mutation$ResendOtp(
    Mutation$ResendOtp instance,
    TRes Function(Mutation$ResendOtp) then,
  ) = _CopyWithImpl$Mutation$ResendOtp;

  factory CopyWith$Mutation$ResendOtp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ResendOtp;

  TRes call({
    Fragment$VerifyNumberFragment? verifyNumber,
    String? $__typename,
  });
  CopyWith$Fragment$VerifyNumberFragment<TRes> get verifyNumber;
}

class _CopyWithImpl$Mutation$ResendOtp<TRes>
    implements CopyWith$Mutation$ResendOtp<TRes> {
  _CopyWithImpl$Mutation$ResendOtp(
    this._instance,
    this._then,
  );

  final Mutation$ResendOtp _instance;

  final TRes Function(Mutation$ResendOtp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? verifyNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ResendOtp(
        verifyNumber: verifyNumber == _undefined || verifyNumber == null
            ? _instance.verifyNumber
            : (verifyNumber as Fragment$VerifyNumberFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$VerifyNumberFragment<TRes> get verifyNumber {
    final local$verifyNumber = _instance.verifyNumber;
    return CopyWith$Fragment$VerifyNumberFragment(
        local$verifyNumber, (e) => call(verifyNumber: e));
  }
}

class _CopyWithStubImpl$Mutation$ResendOtp<TRes>
    implements CopyWith$Mutation$ResendOtp<TRes> {
  _CopyWithStubImpl$Mutation$ResendOtp(this._res);

  TRes _res;

  call({
    Fragment$VerifyNumberFragment? verifyNumber,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$VerifyNumberFragment<TRes> get verifyNumber =>
      CopyWith$Fragment$VerifyNumberFragment.stub(_res);
}

const documentNodeMutationResendOtp = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ResendOtp'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mobileNumber')),
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
        name: NameNode(value: 'verifyNumber'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'mobileNumber'),
            value: VariableNode(name: NameNode(value: 'mobileNumber')),
          ),
          ArgumentNode(
            name: NameNode(value: 'forceSendOtp'),
            value: BooleanValueNode(value: true),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'VerifyNumberFragment'),
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
  fragmentDefinitionVerifyNumberFragment,
]);
Mutation$ResendOtp _parserFn$Mutation$ResendOtp(Map<String, dynamic> data) =>
    Mutation$ResendOtp.fromJson(data);
typedef OnMutationCompleted$Mutation$ResendOtp = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ResendOtp?,
);

class Options$Mutation$ResendOtp
    extends graphql.MutationOptions<Mutation$ResendOtp> {
  Options$Mutation$ResendOtp({
    String? operationName,
    required Variables$Mutation$ResendOtp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResendOtp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ResendOtp? onCompleted,
    graphql.OnMutationUpdate<Mutation$ResendOtp>? update,
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
                    data == null ? null : _parserFn$Mutation$ResendOtp(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationResendOtp,
          parserFn: _parserFn$Mutation$ResendOtp,
        );

  final OnMutationCompleted$Mutation$ResendOtp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ResendOtp
    extends graphql.WatchQueryOptions<Mutation$ResendOtp> {
  WatchOptions$Mutation$ResendOtp({
    String? operationName,
    required Variables$Mutation$ResendOtp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ResendOtp? typedOptimisticResult,
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
          document: documentNodeMutationResendOtp,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ResendOtp,
        );
}

extension ClientExtension$Mutation$ResendOtp on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ResendOtp>> mutate$ResendOtp(
          Options$Mutation$ResendOtp options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$ResendOtp> watchMutation$ResendOtp(
          WatchOptions$Mutation$ResendOtp options) =>
      this.watchMutation(options);
}

class Variables$Mutation$Register {
  factory Variables$Mutation$Register({
    required String id,
    required String firstName,
    required String lastName,
    String? address,
    String? email,
    Enum$Gender? gender,
    String? vehiclePlateNumber,
    String? vehicleModelId,
    String? vehicleColorId,
    int? vehicleProductionYear,
    String? bankName,
    String? bankRoutingNumber,
    String? bankAccountNumber,
    String? bankSwiftCode,
    required String profilePictureId,
    required List<String> documentIds,
  }) =>
      Variables$Mutation$Register._({
        r'id': id,
        r'firstName': firstName,
        r'lastName': lastName,
        if (address != null) r'address': address,
        if (email != null) r'email': email,
        if (gender != null) r'gender': gender,
        if (vehiclePlateNumber != null)
          r'vehiclePlateNumber': vehiclePlateNumber,
        if (vehicleModelId != null) r'vehicleModelId': vehicleModelId,
        if (vehicleColorId != null) r'vehicleColorId': vehicleColorId,
        if (vehicleProductionYear != null)
          r'vehicleProductionYear': vehicleProductionYear,
        if (bankName != null) r'bankName': bankName,
        if (bankRoutingNumber != null) r'bankRoutingNumber': bankRoutingNumber,
        if (bankAccountNumber != null) r'bankAccountNumber': bankAccountNumber,
        if (bankSwiftCode != null) r'bankSwiftCode': bankSwiftCode,
        r'profilePictureId': profilePictureId,
        r'documentIds': documentIds,
      });

  Variables$Mutation$Register._(this._$data);

  factory Variables$Mutation$Register.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = (l$address as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] =
          l$gender == null ? null : fromJson$Enum$Gender((l$gender as String));
    }
    if (data.containsKey('vehiclePlateNumber')) {
      final l$vehiclePlateNumber = data['vehiclePlateNumber'];
      result$data['vehiclePlateNumber'] = (l$vehiclePlateNumber as String?);
    }
    if (data.containsKey('vehicleModelId')) {
      final l$vehicleModelId = data['vehicleModelId'];
      result$data['vehicleModelId'] = (l$vehicleModelId as String?);
    }
    if (data.containsKey('vehicleColorId')) {
      final l$vehicleColorId = data['vehicleColorId'];
      result$data['vehicleColorId'] = (l$vehicleColorId as String?);
    }
    if (data.containsKey('vehicleProductionYear')) {
      final l$vehicleProductionYear = data['vehicleProductionYear'];
      result$data['vehicleProductionYear'] = (l$vehicleProductionYear as int?);
    }
    if (data.containsKey('bankName')) {
      final l$bankName = data['bankName'];
      result$data['bankName'] = (l$bankName as String?);
    }
    if (data.containsKey('bankRoutingNumber')) {
      final l$bankRoutingNumber = data['bankRoutingNumber'];
      result$data['bankRoutingNumber'] = (l$bankRoutingNumber as String?);
    }
    if (data.containsKey('bankAccountNumber')) {
      final l$bankAccountNumber = data['bankAccountNumber'];
      result$data['bankAccountNumber'] = (l$bankAccountNumber as String?);
    }
    if (data.containsKey('bankSwiftCode')) {
      final l$bankSwiftCode = data['bankSwiftCode'];
      result$data['bankSwiftCode'] = (l$bankSwiftCode as String?);
    }
    final l$profilePictureId = data['profilePictureId'];
    result$data['profilePictureId'] = (l$profilePictureId as String);
    final l$documentIds = data['documentIds'];
    result$data['documentIds'] =
        (l$documentIds as List<dynamic>).map((e) => (e as String)).toList();
    return Variables$Mutation$Register._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String get firstName => (_$data['firstName'] as String);

  String get lastName => (_$data['lastName'] as String);

  String? get address => (_$data['address'] as String?);

  String? get email => (_$data['email'] as String?);

  Enum$Gender? get gender => (_$data['gender'] as Enum$Gender?);

  String? get vehiclePlateNumber => (_$data['vehiclePlateNumber'] as String?);

  String? get vehicleModelId => (_$data['vehicleModelId'] as String?);

  String? get vehicleColorId => (_$data['vehicleColorId'] as String?);

  int? get vehicleProductionYear => (_$data['vehicleProductionYear'] as int?);

  String? get bankName => (_$data['bankName'] as String?);

  String? get bankRoutingNumber => (_$data['bankRoutingNumber'] as String?);

  String? get bankAccountNumber => (_$data['bankAccountNumber'] as String?);

  String? get bankSwiftCode => (_$data['bankSwiftCode'] as String?);

  String get profilePictureId => (_$data['profilePictureId'] as String);

  List<String> get documentIds => (_$data['documentIds'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] =
          l$gender == null ? null : toJson$Enum$Gender(l$gender);
    }
    if (_$data.containsKey('vehiclePlateNumber')) {
      final l$vehiclePlateNumber = vehiclePlateNumber;
      result$data['vehiclePlateNumber'] = l$vehiclePlateNumber;
    }
    if (_$data.containsKey('vehicleModelId')) {
      final l$vehicleModelId = vehicleModelId;
      result$data['vehicleModelId'] = l$vehicleModelId;
    }
    if (_$data.containsKey('vehicleColorId')) {
      final l$vehicleColorId = vehicleColorId;
      result$data['vehicleColorId'] = l$vehicleColorId;
    }
    if (_$data.containsKey('vehicleProductionYear')) {
      final l$vehicleProductionYear = vehicleProductionYear;
      result$data['vehicleProductionYear'] = l$vehicleProductionYear;
    }
    if (_$data.containsKey('bankName')) {
      final l$bankName = bankName;
      result$data['bankName'] = l$bankName;
    }
    if (_$data.containsKey('bankRoutingNumber')) {
      final l$bankRoutingNumber = bankRoutingNumber;
      result$data['bankRoutingNumber'] = l$bankRoutingNumber;
    }
    if (_$data.containsKey('bankAccountNumber')) {
      final l$bankAccountNumber = bankAccountNumber;
      result$data['bankAccountNumber'] = l$bankAccountNumber;
    }
    if (_$data.containsKey('bankSwiftCode')) {
      final l$bankSwiftCode = bankSwiftCode;
      result$data['bankSwiftCode'] = l$bankSwiftCode;
    }
    final l$profilePictureId = profilePictureId;
    result$data['profilePictureId'] = l$profilePictureId;
    final l$documentIds = documentIds;
    result$data['documentIds'] = l$documentIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$Register<Variables$Mutation$Register>
      get copyWith => CopyWith$Variables$Mutation$Register(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$Register) ||
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
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$vehiclePlateNumber = vehiclePlateNumber;
    final lOther$vehiclePlateNumber = other.vehiclePlateNumber;
    if (_$data.containsKey('vehiclePlateNumber') !=
        other._$data.containsKey('vehiclePlateNumber')) {
      return false;
    }
    if (l$vehiclePlateNumber != lOther$vehiclePlateNumber) {
      return false;
    }
    final l$vehicleModelId = vehicleModelId;
    final lOther$vehicleModelId = other.vehicleModelId;
    if (_$data.containsKey('vehicleModelId') !=
        other._$data.containsKey('vehicleModelId')) {
      return false;
    }
    if (l$vehicleModelId != lOther$vehicleModelId) {
      return false;
    }
    final l$vehicleColorId = vehicleColorId;
    final lOther$vehicleColorId = other.vehicleColorId;
    if (_$data.containsKey('vehicleColorId') !=
        other._$data.containsKey('vehicleColorId')) {
      return false;
    }
    if (l$vehicleColorId != lOther$vehicleColorId) {
      return false;
    }
    final l$vehicleProductionYear = vehicleProductionYear;
    final lOther$vehicleProductionYear = other.vehicleProductionYear;
    if (_$data.containsKey('vehicleProductionYear') !=
        other._$data.containsKey('vehicleProductionYear')) {
      return false;
    }
    if (l$vehicleProductionYear != lOther$vehicleProductionYear) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (_$data.containsKey('bankName') !=
        other._$data.containsKey('bankName')) {
      return false;
    }
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$bankRoutingNumber = bankRoutingNumber;
    final lOther$bankRoutingNumber = other.bankRoutingNumber;
    if (_$data.containsKey('bankRoutingNumber') !=
        other._$data.containsKey('bankRoutingNumber')) {
      return false;
    }
    if (l$bankRoutingNumber != lOther$bankRoutingNumber) {
      return false;
    }
    final l$bankAccountNumber = bankAccountNumber;
    final lOther$bankAccountNumber = other.bankAccountNumber;
    if (_$data.containsKey('bankAccountNumber') !=
        other._$data.containsKey('bankAccountNumber')) {
      return false;
    }
    if (l$bankAccountNumber != lOther$bankAccountNumber) {
      return false;
    }
    final l$bankSwiftCode = bankSwiftCode;
    final lOther$bankSwiftCode = other.bankSwiftCode;
    if (_$data.containsKey('bankSwiftCode') !=
        other._$data.containsKey('bankSwiftCode')) {
      return false;
    }
    if (l$bankSwiftCode != lOther$bankSwiftCode) {
      return false;
    }
    final l$profilePictureId = profilePictureId;
    final lOther$profilePictureId = other.profilePictureId;
    if (l$profilePictureId != lOther$profilePictureId) {
      return false;
    }
    final l$documentIds = documentIds;
    final lOther$documentIds = other.documentIds;
    if (l$documentIds.length != lOther$documentIds.length) {
      return false;
    }
    for (int i = 0; i < l$documentIds.length; i++) {
      final l$documentIds$entry = l$documentIds[i];
      final lOther$documentIds$entry = lOther$documentIds[i];
      if (l$documentIds$entry != lOther$documentIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$address = address;
    final l$email = email;
    final l$gender = gender;
    final l$vehiclePlateNumber = vehiclePlateNumber;
    final l$vehicleModelId = vehicleModelId;
    final l$vehicleColorId = vehicleColorId;
    final l$vehicleProductionYear = vehicleProductionYear;
    final l$bankName = bankName;
    final l$bankRoutingNumber = bankRoutingNumber;
    final l$bankAccountNumber = bankAccountNumber;
    final l$bankSwiftCode = bankSwiftCode;
    final l$profilePictureId = profilePictureId;
    final l$documentIds = documentIds;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('vehiclePlateNumber')
          ? l$vehiclePlateNumber
          : const {},
      _$data.containsKey('vehicleModelId') ? l$vehicleModelId : const {},
      _$data.containsKey('vehicleColorId') ? l$vehicleColorId : const {},
      _$data.containsKey('vehicleProductionYear')
          ? l$vehicleProductionYear
          : const {},
      _$data.containsKey('bankName') ? l$bankName : const {},
      _$data.containsKey('bankRoutingNumber') ? l$bankRoutingNumber : const {},
      _$data.containsKey('bankAccountNumber') ? l$bankAccountNumber : const {},
      _$data.containsKey('bankSwiftCode') ? l$bankSwiftCode : const {},
      l$profilePictureId,
      Object.hashAll(l$documentIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$Register<TRes> {
  factory CopyWith$Variables$Mutation$Register(
    Variables$Mutation$Register instance,
    TRes Function(Variables$Mutation$Register) then,
  ) = _CopyWithImpl$Variables$Mutation$Register;

  factory CopyWith$Variables$Mutation$Register.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$Register;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? address,
    String? email,
    Enum$Gender? gender,
    String? vehiclePlateNumber,
    String? vehicleModelId,
    String? vehicleColorId,
    int? vehicleProductionYear,
    String? bankName,
    String? bankRoutingNumber,
    String? bankAccountNumber,
    String? bankSwiftCode,
    String? profilePictureId,
    List<String>? documentIds,
  });
}

class _CopyWithImpl$Variables$Mutation$Register<TRes>
    implements CopyWith$Variables$Mutation$Register<TRes> {
  _CopyWithImpl$Variables$Mutation$Register(
    this._instance,
    this._then,
  );

  final Variables$Mutation$Register _instance;

  final TRes Function(Variables$Mutation$Register) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? address = _undefined,
    Object? email = _undefined,
    Object? gender = _undefined,
    Object? vehiclePlateNumber = _undefined,
    Object? vehicleModelId = _undefined,
    Object? vehicleColorId = _undefined,
    Object? vehicleProductionYear = _undefined,
    Object? bankName = _undefined,
    Object? bankRoutingNumber = _undefined,
    Object? bankAccountNumber = _undefined,
    Object? bankSwiftCode = _undefined,
    Object? profilePictureId = _undefined,
    Object? documentIds = _undefined,
  }) =>
      _then(Variables$Mutation$Register._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (firstName != _undefined && firstName != null)
          'firstName': (firstName as String),
        if (lastName != _undefined && lastName != null)
          'lastName': (lastName as String),
        if (address != _undefined) 'address': (address as String?),
        if (email != _undefined) 'email': (email as String?),
        if (gender != _undefined) 'gender': (gender as Enum$Gender?),
        if (vehiclePlateNumber != _undefined)
          'vehiclePlateNumber': (vehiclePlateNumber as String?),
        if (vehicleModelId != _undefined)
          'vehicleModelId': (vehicleModelId as String?),
        if (vehicleColorId != _undefined)
          'vehicleColorId': (vehicleColorId as String?),
        if (vehicleProductionYear != _undefined)
          'vehicleProductionYear': (vehicleProductionYear as int?),
        if (bankName != _undefined) 'bankName': (bankName as String?),
        if (bankRoutingNumber != _undefined)
          'bankRoutingNumber': (bankRoutingNumber as String?),
        if (bankAccountNumber != _undefined)
          'bankAccountNumber': (bankAccountNumber as String?),
        if (bankSwiftCode != _undefined)
          'bankSwiftCode': (bankSwiftCode as String?),
        if (profilePictureId != _undefined && profilePictureId != null)
          'profilePictureId': (profilePictureId as String),
        if (documentIds != _undefined && documentIds != null)
          'documentIds': (documentIds as List<String>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$Register<TRes>
    implements CopyWith$Variables$Mutation$Register<TRes> {
  _CopyWithStubImpl$Variables$Mutation$Register(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? address,
    String? email,
    Enum$Gender? gender,
    String? vehiclePlateNumber,
    String? vehicleModelId,
    String? vehicleColorId,
    int? vehicleProductionYear,
    String? bankName,
    String? bankRoutingNumber,
    String? bankAccountNumber,
    String? bankSwiftCode,
    String? profilePictureId,
    List<String>? documentIds,
  }) =>
      _res;
}

class Mutation$Register {
  Mutation$Register({
    required this.updateOneDriver,
    required this.setDocumentsOnDriver,
    this.$__typename = 'Mutation',
  });

  factory Mutation$Register.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    final l$setDocumentsOnDriver = json['setDocumentsOnDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$Register(
      updateOneDriver: Fragment$ProfileFragment.fromJson(
          (l$updateOneDriver as Map<String, dynamic>)),
      setDocumentsOnDriver: Fragment$ProfileFragment.fromJson(
          (l$setDocumentsOnDriver as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ProfileFragment updateOneDriver;

  final Fragment$ProfileFragment setDocumentsOnDriver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneDriver = updateOneDriver;
    _resultData['updateOneDriver'] = l$updateOneDriver.toJson();
    final l$setDocumentsOnDriver = setDocumentsOnDriver;
    _resultData['setDocumentsOnDriver'] = l$setDocumentsOnDriver.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneDriver = updateOneDriver;
    final l$setDocumentsOnDriver = setDocumentsOnDriver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneDriver,
      l$setDocumentsOnDriver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$Register) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneDriver = updateOneDriver;
    final lOther$updateOneDriver = other.updateOneDriver;
    if (l$updateOneDriver != lOther$updateOneDriver) {
      return false;
    }
    final l$setDocumentsOnDriver = setDocumentsOnDriver;
    final lOther$setDocumentsOnDriver = other.setDocumentsOnDriver;
    if (l$setDocumentsOnDriver != lOther$setDocumentsOnDriver) {
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

extension UtilityExtension$Mutation$Register on Mutation$Register {
  CopyWith$Mutation$Register<Mutation$Register> get copyWith =>
      CopyWith$Mutation$Register(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$Register<TRes> {
  factory CopyWith$Mutation$Register(
    Mutation$Register instance,
    TRes Function(Mutation$Register) then,
  ) = _CopyWithImpl$Mutation$Register;

  factory CopyWith$Mutation$Register.stub(TRes res) =
      _CopyWithStubImpl$Mutation$Register;

  TRes call({
    Fragment$ProfileFragment? updateOneDriver,
    Fragment$ProfileFragment? setDocumentsOnDriver,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFragment<TRes> get updateOneDriver;
  CopyWith$Fragment$ProfileFragment<TRes> get setDocumentsOnDriver;
}

class _CopyWithImpl$Mutation$Register<TRes>
    implements CopyWith$Mutation$Register<TRes> {
  _CopyWithImpl$Mutation$Register(
    this._instance,
    this._then,
  );

  final Mutation$Register _instance;

  final TRes Function(Mutation$Register) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneDriver = _undefined,
    Object? setDocumentsOnDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$Register(
        updateOneDriver:
            updateOneDriver == _undefined || updateOneDriver == null
                ? _instance.updateOneDriver
                : (updateOneDriver as Fragment$ProfileFragment),
        setDocumentsOnDriver:
            setDocumentsOnDriver == _undefined || setDocumentsOnDriver == null
                ? _instance.setDocumentsOnDriver
                : (setDocumentsOnDriver as Fragment$ProfileFragment),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProfileFragment<TRes> get updateOneDriver {
    final local$updateOneDriver = _instance.updateOneDriver;
    return CopyWith$Fragment$ProfileFragment(
        local$updateOneDriver, (e) => call(updateOneDriver: e));
  }

  CopyWith$Fragment$ProfileFragment<TRes> get setDocumentsOnDriver {
    final local$setDocumentsOnDriver = _instance.setDocumentsOnDriver;
    return CopyWith$Fragment$ProfileFragment(
        local$setDocumentsOnDriver, (e) => call(setDocumentsOnDriver: e));
  }
}

class _CopyWithStubImpl$Mutation$Register<TRes>
    implements CopyWith$Mutation$Register<TRes> {
  _CopyWithStubImpl$Mutation$Register(this._res);

  TRes _res;

  call({
    Fragment$ProfileFragment? updateOneDriver,
    Fragment$ProfileFragment? setDocumentsOnDriver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFragment<TRes> get updateOneDriver =>
      CopyWith$Fragment$ProfileFragment.stub(_res);

  CopyWith$Fragment$ProfileFragment<TRes> get setDocumentsOnDriver =>
      CopyWith$Fragment$ProfileFragment.stub(_res);
}

const documentNodeMutationRegister = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'Register'),
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
        variable: VariableNode(name: NameNode(value: 'firstName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'address')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'gender')),
        type: NamedTypeNode(
          name: NameNode(value: 'Gender'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'vehiclePlateNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'vehicleModelId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'vehicleColorId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'vehicleProductionYear')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'bankName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'bankRoutingNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'bankAccountNumber')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'bankSwiftCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'profilePictureId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'documentIds')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ID'),
            isNonNull: true,
          ),
          isNonNull: true,
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
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'status'),
                    value:
                        EnumValueNode(name: NameNode(value: 'PendingApproval')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'firstName'),
                    value: VariableNode(name: NameNode(value: 'firstName')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'lastName'),
                    value: VariableNode(name: NameNode(value: 'lastName')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'address'),
                    value: VariableNode(name: NameNode(value: 'address')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'email'),
                    value: VariableNode(name: NameNode(value: 'email')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'gender'),
                    value: VariableNode(name: NameNode(value: 'gender')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'carPlate'),
                    value: VariableNode(
                        name: NameNode(value: 'vehiclePlateNumber')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'carId'),
                    value:
                        VariableNode(name: NameNode(value: 'vehicleModelId')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'carModelId'),
                    value:
                        VariableNode(name: NameNode(value: 'vehicleModelId')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'carColorId'),
                    value:
                        VariableNode(name: NameNode(value: 'vehicleColorId')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'carProductionYear'),
                    value: VariableNode(
                        name: NameNode(value: 'vehicleProductionYear')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'bankName'),
                    value: VariableNode(name: NameNode(value: 'bankName')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'bankRoutingNumber'),
                    value: VariableNode(
                        name: NameNode(value: 'bankRoutingNumber')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'accountNumber'),
                    value: VariableNode(
                        name: NameNode(value: 'bankAccountNumber')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'bankSwift'),
                    value: VariableNode(name: NameNode(value: 'bankSwiftCode')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'mediaId'),
                    value:
                        VariableNode(name: NameNode(value: 'profilePictureId')),
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
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'setDocumentsOnDriver'),
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
                name: NameNode(value: 'relationIds'),
                value: VariableNode(name: NameNode(value: 'documentIds')),
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
Mutation$Register _parserFn$Mutation$Register(Map<String, dynamic> data) =>
    Mutation$Register.fromJson(data);
typedef OnMutationCompleted$Mutation$Register = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$Register?,
);

class Options$Mutation$Register
    extends graphql.MutationOptions<Mutation$Register> {
  Options$Mutation$Register({
    String? operationName,
    required Variables$Mutation$Register variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Register? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$Register? onCompleted,
    graphql.OnMutationUpdate<Mutation$Register>? update,
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
                    data == null ? null : _parserFn$Mutation$Register(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRegister,
          parserFn: _parserFn$Mutation$Register,
        );

  final OnMutationCompleted$Mutation$Register? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$Register
    extends graphql.WatchQueryOptions<Mutation$Register> {
  WatchOptions$Mutation$Register({
    String? operationName,
    required Variables$Mutation$Register variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$Register? typedOptimisticResult,
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
          document: documentNodeMutationRegister,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$Register,
        );
}

extension ClientExtension$Mutation$Register on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$Register>> mutate$Register(
          Options$Mutation$Register options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$Register> watchMutation$Register(
          WatchOptions$Mutation$Register options) =>
      this.watchMutation(options);
}
