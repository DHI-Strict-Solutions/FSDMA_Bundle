import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$WalletFragment {
  Fragment$WalletFragment({
    required this.balance,
    required this.currency,
    this.$__typename = 'DriverWallet',
  });

  factory Fragment$WalletFragment.fromJson(Map<String, dynamic> json) {
    final l$balance = json['balance'];
    final l$currency = json['currency'];
    final l$$__typename = json['__typename'];
    return Fragment$WalletFragment(
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
    if (!(other is Fragment$WalletFragment) ||
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

extension UtilityExtension$Fragment$WalletFragment on Fragment$WalletFragment {
  CopyWith$Fragment$WalletFragment<Fragment$WalletFragment> get copyWith =>
      CopyWith$Fragment$WalletFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$WalletFragment<TRes> {
  factory CopyWith$Fragment$WalletFragment(
    Fragment$WalletFragment instance,
    TRes Function(Fragment$WalletFragment) then,
  ) = _CopyWithImpl$Fragment$WalletFragment;

  factory CopyWith$Fragment$WalletFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$WalletFragment;

  TRes call({
    double? balance,
    String? currency,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$WalletFragment<TRes>
    implements CopyWith$Fragment$WalletFragment<TRes> {
  _CopyWithImpl$Fragment$WalletFragment(
    this._instance,
    this._then,
  );

  final Fragment$WalletFragment _instance;

  final TRes Function(Fragment$WalletFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? balance = _undefined,
    Object? currency = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$WalletFragment(
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

class _CopyWithStubImpl$Fragment$WalletFragment<TRes>
    implements CopyWith$Fragment$WalletFragment<TRes> {
  _CopyWithStubImpl$Fragment$WalletFragment(this._res);

  TRes _res;

  call({
    double? balance,
    String? currency,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionWalletFragment = FragmentDefinitionNode(
  name: NameNode(value: 'WalletFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'DriverWallet'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
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
);
const documentNodeFragmentWalletFragment = DocumentNode(definitions: [
  fragmentDefinitionWalletFragment,
]);

extension ClientExtension$Fragment$WalletFragment on graphql.GraphQLClient {
  void writeFragment$WalletFragment({
    required Fragment$WalletFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'WalletFragment',
            document: documentNodeFragmentWalletFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$WalletFragment? readFragment$WalletFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'WalletFragment',
          document: documentNodeFragmentWalletFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$WalletFragment.fromJson(result);
  }
}
