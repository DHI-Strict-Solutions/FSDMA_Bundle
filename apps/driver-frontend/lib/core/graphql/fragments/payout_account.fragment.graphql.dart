import 'package:flutter_common/core/graphql/scalars/timestamp.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$PayoutAccount {
  Fragment$PayoutAccount({
    required this.id,
    this.name,
    this.accountHolderName,
    this.accountNumber,
    this.routingNumber,
    this.bankName,
    this.accountHolderCountry,
    this.accountHolderCity,
    this.accountHolderState,
    this.accountHolderAddress,
    this.accountHolderDateOfBirth,
    this.accountHolderPhone,
    this.accountHolderZip,
    required this.isDefault,
    this.$__typename = 'PayoutAccount',
  });

  factory Fragment$PayoutAccount.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$accountHolderName = json['accountHolderName'];
    final l$accountNumber = json['accountNumber'];
    final l$routingNumber = json['routingNumber'];
    final l$bankName = json['bankName'];
    final l$accountHolderCountry = json['accountHolderCountry'];
    final l$accountHolderCity = json['accountHolderCity'];
    final l$accountHolderState = json['accountHolderState'];
    final l$accountHolderAddress = json['accountHolderAddress'];
    final l$accountHolderDateOfBirth = json['accountHolderDateOfBirth'];
    final l$accountHolderPhone = json['accountHolderPhone'];
    final l$accountHolderZip = json['accountHolderZip'];
    final l$isDefault = json['isDefault'];
    final l$$__typename = json['__typename'];
    return Fragment$PayoutAccount(
      id: (l$id as String),
      name: (l$name as String?),
      accountHolderName: (l$accountHolderName as String?),
      accountNumber: (l$accountNumber as String?),
      routingNumber: (l$routingNumber as String?),
      bankName: (l$bankName as String?),
      accountHolderCountry: (l$accountHolderCountry as String?),
      accountHolderCity: (l$accountHolderCity as String?),
      accountHolderState: (l$accountHolderState as String?),
      accountHolderAddress: (l$accountHolderAddress as String?),
      accountHolderDateOfBirth: l$accountHolderDateOfBirth == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$accountHolderDateOfBirth),
      accountHolderPhone: (l$accountHolderPhone as String?),
      accountHolderZip: (l$accountHolderZip as String?),
      isDefault: (l$isDefault as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? name;

  final String? accountHolderName;

  final String? accountNumber;

  final String? routingNumber;

  final String? bankName;

  final String? accountHolderCountry;

  final String? accountHolderCity;

  final String? accountHolderState;

  final String? accountHolderAddress;

  final DateTime? accountHolderDateOfBirth;

  final String? accountHolderPhone;

  final String? accountHolderZip;

  final bool isDefault;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$accountHolderName = accountHolderName;
    _resultData['accountHolderName'] = l$accountHolderName;
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$routingNumber = routingNumber;
    _resultData['routingNumber'] = l$routingNumber;
    final l$bankName = bankName;
    _resultData['bankName'] = l$bankName;
    final l$accountHolderCountry = accountHolderCountry;
    _resultData['accountHolderCountry'] = l$accountHolderCountry;
    final l$accountHolderCity = accountHolderCity;
    _resultData['accountHolderCity'] = l$accountHolderCity;
    final l$accountHolderState = accountHolderState;
    _resultData['accountHolderState'] = l$accountHolderState;
    final l$accountHolderAddress = accountHolderAddress;
    _resultData['accountHolderAddress'] = l$accountHolderAddress;
    final l$accountHolderDateOfBirth = accountHolderDateOfBirth;
    _resultData['accountHolderDateOfBirth'] = l$accountHolderDateOfBirth == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$accountHolderDateOfBirth);
    final l$accountHolderPhone = accountHolderPhone;
    _resultData['accountHolderPhone'] = l$accountHolderPhone;
    final l$accountHolderZip = accountHolderZip;
    _resultData['accountHolderZip'] = l$accountHolderZip;
    final l$isDefault = isDefault;
    _resultData['isDefault'] = l$isDefault;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$accountHolderName = accountHolderName;
    final l$accountNumber = accountNumber;
    final l$routingNumber = routingNumber;
    final l$bankName = bankName;
    final l$accountHolderCountry = accountHolderCountry;
    final l$accountHolderCity = accountHolderCity;
    final l$accountHolderState = accountHolderState;
    final l$accountHolderAddress = accountHolderAddress;
    final l$accountHolderDateOfBirth = accountHolderDateOfBirth;
    final l$accountHolderPhone = accountHolderPhone;
    final l$accountHolderZip = accountHolderZip;
    final l$isDefault = isDefault;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$accountHolderName,
      l$accountNumber,
      l$routingNumber,
      l$bankName,
      l$accountHolderCountry,
      l$accountHolderCity,
      l$accountHolderState,
      l$accountHolderAddress,
      l$accountHolderDateOfBirth,
      l$accountHolderPhone,
      l$accountHolderZip,
      l$isDefault,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PayoutAccount) ||
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
    final l$accountHolderName = accountHolderName;
    final lOther$accountHolderName = other.accountHolderName;
    if (l$accountHolderName != lOther$accountHolderName) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$routingNumber = routingNumber;
    final lOther$routingNumber = other.routingNumber;
    if (l$routingNumber != lOther$routingNumber) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$accountHolderCountry = accountHolderCountry;
    final lOther$accountHolderCountry = other.accountHolderCountry;
    if (l$accountHolderCountry != lOther$accountHolderCountry) {
      return false;
    }
    final l$accountHolderCity = accountHolderCity;
    final lOther$accountHolderCity = other.accountHolderCity;
    if (l$accountHolderCity != lOther$accountHolderCity) {
      return false;
    }
    final l$accountHolderState = accountHolderState;
    final lOther$accountHolderState = other.accountHolderState;
    if (l$accountHolderState != lOther$accountHolderState) {
      return false;
    }
    final l$accountHolderAddress = accountHolderAddress;
    final lOther$accountHolderAddress = other.accountHolderAddress;
    if (l$accountHolderAddress != lOther$accountHolderAddress) {
      return false;
    }
    final l$accountHolderDateOfBirth = accountHolderDateOfBirth;
    final lOther$accountHolderDateOfBirth = other.accountHolderDateOfBirth;
    if (l$accountHolderDateOfBirth != lOther$accountHolderDateOfBirth) {
      return false;
    }
    final l$accountHolderPhone = accountHolderPhone;
    final lOther$accountHolderPhone = other.accountHolderPhone;
    if (l$accountHolderPhone != lOther$accountHolderPhone) {
      return false;
    }
    final l$accountHolderZip = accountHolderZip;
    final lOther$accountHolderZip = other.accountHolderZip;
    if (l$accountHolderZip != lOther$accountHolderZip) {
      return false;
    }
    final l$isDefault = isDefault;
    final lOther$isDefault = other.isDefault;
    if (l$isDefault != lOther$isDefault) {
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

extension UtilityExtension$Fragment$PayoutAccount on Fragment$PayoutAccount {
  CopyWith$Fragment$PayoutAccount<Fragment$PayoutAccount> get copyWith =>
      CopyWith$Fragment$PayoutAccount(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PayoutAccount<TRes> {
  factory CopyWith$Fragment$PayoutAccount(
    Fragment$PayoutAccount instance,
    TRes Function(Fragment$PayoutAccount) then,
  ) = _CopyWithImpl$Fragment$PayoutAccount;

  factory CopyWith$Fragment$PayoutAccount.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PayoutAccount;

  TRes call({
    String? id,
    String? name,
    String? accountHolderName,
    String? accountNumber,
    String? routingNumber,
    String? bankName,
    String? accountHolderCountry,
    String? accountHolderCity,
    String? accountHolderState,
    String? accountHolderAddress,
    DateTime? accountHolderDateOfBirth,
    String? accountHolderPhone,
    String? accountHolderZip,
    bool? isDefault,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PayoutAccount<TRes>
    implements CopyWith$Fragment$PayoutAccount<TRes> {
  _CopyWithImpl$Fragment$PayoutAccount(
    this._instance,
    this._then,
  );

  final Fragment$PayoutAccount _instance;

  final TRes Function(Fragment$PayoutAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? accountHolderName = _undefined,
    Object? accountNumber = _undefined,
    Object? routingNumber = _undefined,
    Object? bankName = _undefined,
    Object? accountHolderCountry = _undefined,
    Object? accountHolderCity = _undefined,
    Object? accountHolderState = _undefined,
    Object? accountHolderAddress = _undefined,
    Object? accountHolderDateOfBirth = _undefined,
    Object? accountHolderPhone = _undefined,
    Object? accountHolderZip = _undefined,
    Object? isDefault = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PayoutAccount(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined ? _instance.name : (name as String?),
        accountHolderName: accountHolderName == _undefined
            ? _instance.accountHolderName
            : (accountHolderName as String?),
        accountNumber: accountNumber == _undefined
            ? _instance.accountNumber
            : (accountNumber as String?),
        routingNumber: routingNumber == _undefined
            ? _instance.routingNumber
            : (routingNumber as String?),
        bankName:
            bankName == _undefined ? _instance.bankName : (bankName as String?),
        accountHolderCountry: accountHolderCountry == _undefined
            ? _instance.accountHolderCountry
            : (accountHolderCountry as String?),
        accountHolderCity: accountHolderCity == _undefined
            ? _instance.accountHolderCity
            : (accountHolderCity as String?),
        accountHolderState: accountHolderState == _undefined
            ? _instance.accountHolderState
            : (accountHolderState as String?),
        accountHolderAddress: accountHolderAddress == _undefined
            ? _instance.accountHolderAddress
            : (accountHolderAddress as String?),
        accountHolderDateOfBirth: accountHolderDateOfBirth == _undefined
            ? _instance.accountHolderDateOfBirth
            : (accountHolderDateOfBirth as DateTime?),
        accountHolderPhone: accountHolderPhone == _undefined
            ? _instance.accountHolderPhone
            : (accountHolderPhone as String?),
        accountHolderZip: accountHolderZip == _undefined
            ? _instance.accountHolderZip
            : (accountHolderZip as String?),
        isDefault: isDefault == _undefined || isDefault == null
            ? _instance.isDefault
            : (isDefault as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PayoutAccount<TRes>
    implements CopyWith$Fragment$PayoutAccount<TRes> {
  _CopyWithStubImpl$Fragment$PayoutAccount(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? accountHolderName,
    String? accountNumber,
    String? routingNumber,
    String? bankName,
    String? accountHolderCountry,
    String? accountHolderCity,
    String? accountHolderState,
    String? accountHolderAddress,
    DateTime? accountHolderDateOfBirth,
    String? accountHolderPhone,
    String? accountHolderZip,
    bool? isDefault,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionPayoutAccount = FragmentDefinitionNode(
  name: NameNode(value: 'PayoutAccount'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'PayoutAccount'),
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
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'accountHolderName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'accountNumber'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'routingNumber'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'bankName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'accountHolderCountry'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'accountHolderCity'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'accountHolderState'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'accountHolderAddress'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'accountHolderDateOfBirth'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'accountHolderPhone'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'accountHolderZip'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentPayoutAccount = DocumentNode(definitions: [
  fragmentDefinitionPayoutAccount,
]);

extension ClientExtension$Fragment$PayoutAccount on graphql.GraphQLClient {
  void writeFragment$PayoutAccount({
    required Fragment$PayoutAccount data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PayoutAccount',
            document: documentNodeFragmentPayoutAccount,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PayoutAccount? readFragment$PayoutAccount({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PayoutAccount',
          document: documentNodeFragmentPayoutAccount,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PayoutAccount.fromJson(result);
  }
}
