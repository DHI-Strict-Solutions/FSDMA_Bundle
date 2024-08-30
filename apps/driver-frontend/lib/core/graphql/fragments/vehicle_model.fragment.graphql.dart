import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$VehicleModel {
  Fragment$VehicleModel({
    required this.id,
    required this.name,
    this.$__typename = 'CarModel',
  });

  factory Fragment$VehicleModel.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$VehicleModel(
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
    if (!(other is Fragment$VehicleModel) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$VehicleModel on Fragment$VehicleModel {
  CopyWith$Fragment$VehicleModel<Fragment$VehicleModel> get copyWith =>
      CopyWith$Fragment$VehicleModel(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$VehicleModel<TRes> {
  factory CopyWith$Fragment$VehicleModel(
    Fragment$VehicleModel instance,
    TRes Function(Fragment$VehicleModel) then,
  ) = _CopyWithImpl$Fragment$VehicleModel;

  factory CopyWith$Fragment$VehicleModel.stub(TRes res) =
      _CopyWithStubImpl$Fragment$VehicleModel;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$VehicleModel<TRes>
    implements CopyWith$Fragment$VehicleModel<TRes> {
  _CopyWithImpl$Fragment$VehicleModel(
    this._instance,
    this._then,
  );

  final Fragment$VehicleModel _instance;

  final TRes Function(Fragment$VehicleModel) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$VehicleModel(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$VehicleModel<TRes>
    implements CopyWith$Fragment$VehicleModel<TRes> {
  _CopyWithStubImpl$Fragment$VehicleModel(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionVehicleModel = FragmentDefinitionNode(
  name: NameNode(value: 'VehicleModel'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'CarModel'),
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
const documentNodeFragmentVehicleModel = DocumentNode(definitions: [
  fragmentDefinitionVehicleModel,
]);

extension ClientExtension$Fragment$VehicleModel on graphql.GraphQLClient {
  void writeFragment$VehicleModel({
    required Fragment$VehicleModel data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'VehicleModel',
            document: documentNodeFragmentVehicleModel,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$VehicleModel? readFragment$VehicleModel({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'VehicleModel',
          document: documentNodeFragmentVehicleModel,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$VehicleModel.fromJson(result);
  }
}
