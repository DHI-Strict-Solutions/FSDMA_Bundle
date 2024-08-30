import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$VehicleColor {
  Fragment$VehicleColor({
    required this.id,
    required this.name,
    this.$__typename = 'CarColor',
  });

  factory Fragment$VehicleColor.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$VehicleColor(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$VehicleColor) || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$VehicleColor on Fragment$VehicleColor {
  CopyWith$Fragment$VehicleColor<Fragment$VehicleColor> get copyWith =>
      CopyWith$Fragment$VehicleColor(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$VehicleColor<TRes> {
  factory CopyWith$Fragment$VehicleColor(
    Fragment$VehicleColor instance,
    TRes Function(Fragment$VehicleColor) then,
  ) = _CopyWithImpl$Fragment$VehicleColor;

  factory CopyWith$Fragment$VehicleColor.stub(TRes res) =
      _CopyWithStubImpl$Fragment$VehicleColor;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$VehicleColor<TRes>
    implements CopyWith$Fragment$VehicleColor<TRes> {
  _CopyWithImpl$Fragment$VehicleColor(
    this._instance,
    this._then,
  );

  final Fragment$VehicleColor _instance;

  final TRes Function(Fragment$VehicleColor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$VehicleColor(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$VehicleColor<TRes>
    implements CopyWith$Fragment$VehicleColor<TRes> {
  _CopyWithStubImpl$Fragment$VehicleColor(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionVehicleColor = FragmentDefinitionNode(
  name: NameNode(value: 'VehicleColor'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'CarColor'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentVehicleColor = DocumentNode(definitions: [
  fragmentDefinitionVehicleColor,
]);

extension ClientExtension$Fragment$VehicleColor on graphql.GraphQLClient {
  void writeFragment$VehicleColor({
    required Fragment$VehicleColor data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'VehicleColor',
            document: documentNodeFragmentVehicleColor,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$VehicleColor? readFragment$VehicleColor({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'VehicleColor',
          document: documentNodeFragmentVehicleColor,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$VehicleColor.fromJson(result);
  }
}
