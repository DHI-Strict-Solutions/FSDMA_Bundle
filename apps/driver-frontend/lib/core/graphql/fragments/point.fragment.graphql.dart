import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$Point {
  Fragment$Point({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Fragment$Point.fromJson(Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Fragment$Point(
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
    if (!(other is Fragment$Point) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Point on Fragment$Point {
  CopyWith$Fragment$Point<Fragment$Point> get copyWith =>
      CopyWith$Fragment$Point(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Point<TRes> {
  factory CopyWith$Fragment$Point(
    Fragment$Point instance,
    TRes Function(Fragment$Point) then,
  ) = _CopyWithImpl$Fragment$Point;

  factory CopyWith$Fragment$Point.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Point;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Point<TRes>
    implements CopyWith$Fragment$Point<TRes> {
  _CopyWithImpl$Fragment$Point(
    this._instance,
    this._then,
  );

  final Fragment$Point _instance;

  final TRes Function(Fragment$Point) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Point(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Point<TRes>
    implements CopyWith$Fragment$Point<TRes> {
  _CopyWithStubImpl$Fragment$Point(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionPoint = FragmentDefinitionNode(
  name: NameNode(value: 'Point'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Point'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
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
      name: NameNode(value: 'heading'),
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
const documentNodeFragmentPoint = DocumentNode(definitions: [
  fragmentDefinitionPoint,
]);

extension ClientExtension$Fragment$Point on graphql.GraphQLClient {
  void writeFragment$Point({
    required Fragment$Point data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Point',
            document: documentNodeFragmentPoint,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Point? readFragment$Point({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Point',
          document: documentNodeFragmentPoint,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Point.fromJson(result);
  }
}
