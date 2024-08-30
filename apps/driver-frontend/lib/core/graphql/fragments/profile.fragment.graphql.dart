import '../schema.gql.dart';
import 'chat_message.fragment.graphql.dart';
import 'current_order.fragment.graphql.dart';
import 'media.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'payment_gateway.fragment.graphql.dart';
import 'point.fragment.graphql.dart';
import 'ride_option.fragment.graphql.dart';
import 'saved_payment_method.fragment.graphql.dart';
import 'wallet.fragment.graphql.dart';

class Fragment$ProfileFragment {
  Fragment$ProfileFragment({
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

  factory Fragment$ProfileFragment.fromJson(Map<String, dynamic> json) {
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
    return Fragment$ProfileFragment(
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
          : Fragment$MediaFragment.fromJson((l$media as Map<String, dynamic>)),
      wallets: (l$wallets as List<dynamic>)
          .map((e) =>
              Fragment$WalletFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      currentOrders: (l$currentOrders as List<dynamic>)
          .map((e) =>
              Fragment$CurrentOrder.fromJson((e as Map<String, dynamic>)))
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

  final Fragment$MediaFragment? media;

  final List<Fragment$WalletFragment> wallets;

  final List<Fragment$CurrentOrder> currentOrders;

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
    if (!(other is Fragment$ProfileFragment) ||
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

extension UtilityExtension$Fragment$ProfileFragment
    on Fragment$ProfileFragment {
  CopyWith$Fragment$ProfileFragment<Fragment$ProfileFragment> get copyWith =>
      CopyWith$Fragment$ProfileFragment(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ProfileFragment<TRes> {
  factory CopyWith$Fragment$ProfileFragment(
    Fragment$ProfileFragment instance,
    TRes Function(Fragment$ProfileFragment) then,
  ) = _CopyWithImpl$Fragment$ProfileFragment;

  factory CopyWith$Fragment$ProfileFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ProfileFragment;

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
    Fragment$MediaFragment? media,
    List<Fragment$WalletFragment>? wallets,
    List<Fragment$CurrentOrder>? currentOrders,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get media;
  TRes wallets(
      Iterable<Fragment$WalletFragment> Function(
              Iterable<
                  CopyWith$Fragment$WalletFragment<Fragment$WalletFragment>>)
          _fn);
  TRes currentOrders(
      Iterable<Fragment$CurrentOrder> Function(
              Iterable<CopyWith$Fragment$CurrentOrder<Fragment$CurrentOrder>>)
          _fn);
}

class _CopyWithImpl$Fragment$ProfileFragment<TRes>
    implements CopyWith$Fragment$ProfileFragment<TRes> {
  _CopyWithImpl$Fragment$ProfileFragment(
    this._instance,
    this._then,
  );

  final Fragment$ProfileFragment _instance;

  final TRes Function(Fragment$ProfileFragment) _then;

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
      _then(Fragment$ProfileFragment(
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
            : (media as Fragment$MediaFragment?),
        wallets: wallets == _undefined || wallets == null
            ? _instance.wallets
            : (wallets as List<Fragment$WalletFragment>),
        currentOrders: currentOrders == _undefined || currentOrders == null
            ? _instance.currentOrders
            : (currentOrders as List<Fragment$CurrentOrder>),
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

  TRes wallets(
          Iterable<Fragment$WalletFragment> Function(
                  Iterable<
                      CopyWith$Fragment$WalletFragment<
                          Fragment$WalletFragment>>)
              _fn) =>
      call(
          wallets:
              _fn(_instance.wallets.map((e) => CopyWith$Fragment$WalletFragment(
                    e,
                    (i) => i,
                  ))).toList());

  TRes currentOrders(
          Iterable<Fragment$CurrentOrder> Function(
                  Iterable<
                      CopyWith$Fragment$CurrentOrder<Fragment$CurrentOrder>>)
              _fn) =>
      call(
          currentOrders: _fn(
              _instance.currentOrders.map((e) => CopyWith$Fragment$CurrentOrder(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$ProfileFragment<TRes>
    implements CopyWith$Fragment$ProfileFragment<TRes> {
  _CopyWithStubImpl$Fragment$ProfileFragment(this._res);

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
    Fragment$MediaFragment? media,
    List<Fragment$WalletFragment>? wallets,
    List<Fragment$CurrentOrder>? currentOrders,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaFragment<TRes> get media =>
      CopyWith$Fragment$MediaFragment.stub(_res);

  wallets(_fn) => _res;

  currentOrders(_fn) => _res;
}

const fragmentDefinitionProfileFragment = FragmentDefinitionNode(
  name: NameNode(value: 'ProfileFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Driver'),
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
);
const documentNodeFragmentProfileFragment = DocumentNode(definitions: [
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

extension ClientExtension$Fragment$ProfileFragment on graphql.GraphQLClient {
  void writeFragment$ProfileFragment({
    required Fragment$ProfileFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ProfileFragment',
            document: documentNodeFragmentProfileFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ProfileFragment? readFragment$ProfileFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ProfileFragment',
          document: documentNodeFragmentProfileFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ProfileFragment.fromJson(result);
  }
}

class Fragment$ProfileFullFragment {
  Fragment$ProfileFullFragment({
    required this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.address,
    required this.status,
    this.gender,
    required this.mobileNumber,
    this.searchDistance,
    this.certificateNumber,
    this.countryIso,
    this.carPlate,
    this.carProductionYear,
    this.carId,
    this.carColorId,
    this.bankName,
    this.bankRoutingNumber,
    this.accountNumber,
    this.bankSwift,
    this.media,
    this.documents,
    this.$__typename = 'Driver',
  });

  factory Fragment$ProfileFullFragment.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$email = json['email'];
    final l$address = json['address'];
    final l$status = json['status'];
    final l$gender = json['gender'];
    final l$mobileNumber = json['mobileNumber'];
    final l$searchDistance = json['searchDistance'];
    final l$certificateNumber = json['certificateNumber'];
    final l$countryIso = json['countryIso'];
    final l$carPlate = json['carPlate'];
    final l$carProductionYear = json['carProductionYear'];
    final l$carId = json['carId'];
    final l$carColorId = json['carColorId'];
    final l$bankName = json['bankName'];
    final l$bankRoutingNumber = json['bankRoutingNumber'];
    final l$accountNumber = json['accountNumber'];
    final l$bankSwift = json['bankSwift'];
    final l$media = json['media'];
    final l$documents = json['documents'];
    final l$$__typename = json['__typename'];
    return Fragment$ProfileFullFragment(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      email: (l$email as String?),
      address: (l$address as String?),
      status: fromJson$Enum$DriverStatus((l$status as String)),
      gender:
          l$gender == null ? null : fromJson$Enum$Gender((l$gender as String)),
      mobileNumber: (l$mobileNumber as String),
      searchDistance: (l$searchDistance as int?),
      certificateNumber: (l$certificateNumber as String?),
      countryIso: (l$countryIso as String?),
      carPlate: (l$carPlate as String?),
      carProductionYear: (l$carProductionYear as int?),
      carId: (l$carId as String?),
      carColorId: (l$carColorId as String?),
      bankName: (l$bankName as String?),
      bankRoutingNumber: (l$bankRoutingNumber as String?),
      accountNumber: (l$accountNumber as String?),
      bankSwift: (l$bankSwift as String?),
      media: l$media == null
          ? null
          : Fragment$MediaFragment.fromJson((l$media as Map<String, dynamic>)),
      documents: (l$documents as List<dynamic>?)
          ?.map((e) =>
              Fragment$MediaFragment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final String? email;

  final String? address;

  final Enum$DriverStatus status;

  final Enum$Gender? gender;

  final String mobileNumber;

  final int? searchDistance;

  final String? certificateNumber;

  final String? countryIso;

  final String? carPlate;

  final int? carProductionYear;

  final String? carId;

  final String? carColorId;

  final String? bankName;

  final String? bankRoutingNumber;

  final String? accountNumber;

  final String? bankSwift;

  final Fragment$MediaFragment? media;

  final List<Fragment$MediaFragment>? documents;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$status = status;
    _resultData['status'] = toJson$Enum$DriverStatus(l$status);
    final l$gender = gender;
    _resultData['gender'] =
        l$gender == null ? null : toJson$Enum$Gender(l$gender);
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$searchDistance = searchDistance;
    _resultData['searchDistance'] = l$searchDistance;
    final l$certificateNumber = certificateNumber;
    _resultData['certificateNumber'] = l$certificateNumber;
    final l$countryIso = countryIso;
    _resultData['countryIso'] = l$countryIso;
    final l$carPlate = carPlate;
    _resultData['carPlate'] = l$carPlate;
    final l$carProductionYear = carProductionYear;
    _resultData['carProductionYear'] = l$carProductionYear;
    final l$carId = carId;
    _resultData['carId'] = l$carId;
    final l$carColorId = carColorId;
    _resultData['carColorId'] = l$carColorId;
    final l$bankName = bankName;
    _resultData['bankName'] = l$bankName;
    final l$bankRoutingNumber = bankRoutingNumber;
    _resultData['bankRoutingNumber'] = l$bankRoutingNumber;
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$bankSwift = bankSwift;
    _resultData['bankSwift'] = l$bankSwift;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$documents = documents;
    _resultData['documents'] = l$documents?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$email = email;
    final l$address = address;
    final l$status = status;
    final l$gender = gender;
    final l$mobileNumber = mobileNumber;
    final l$searchDistance = searchDistance;
    final l$certificateNumber = certificateNumber;
    final l$countryIso = countryIso;
    final l$carPlate = carPlate;
    final l$carProductionYear = carProductionYear;
    final l$carId = carId;
    final l$carColorId = carColorId;
    final l$bankName = bankName;
    final l$bankRoutingNumber = bankRoutingNumber;
    final l$accountNumber = accountNumber;
    final l$bankSwift = bankSwift;
    final l$media = media;
    final l$documents = documents;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$email,
      l$address,
      l$status,
      l$gender,
      l$mobileNumber,
      l$searchDistance,
      l$certificateNumber,
      l$countryIso,
      l$carPlate,
      l$carProductionYear,
      l$carId,
      l$carColorId,
      l$bankName,
      l$bankRoutingNumber,
      l$accountNumber,
      l$bankSwift,
      l$media,
      l$documents == null ? null : Object.hashAll(l$documents.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ProfileFullFragment) ||
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
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
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
    final l$certificateNumber = certificateNumber;
    final lOther$certificateNumber = other.certificateNumber;
    if (l$certificateNumber != lOther$certificateNumber) {
      return false;
    }
    final l$countryIso = countryIso;
    final lOther$countryIso = other.countryIso;
    if (l$countryIso != lOther$countryIso) {
      return false;
    }
    final l$carPlate = carPlate;
    final lOther$carPlate = other.carPlate;
    if (l$carPlate != lOther$carPlate) {
      return false;
    }
    final l$carProductionYear = carProductionYear;
    final lOther$carProductionYear = other.carProductionYear;
    if (l$carProductionYear != lOther$carProductionYear) {
      return false;
    }
    final l$carId = carId;
    final lOther$carId = other.carId;
    if (l$carId != lOther$carId) {
      return false;
    }
    final l$carColorId = carColorId;
    final lOther$carColorId = other.carColorId;
    if (l$carColorId != lOther$carColorId) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$bankRoutingNumber = bankRoutingNumber;
    final lOther$bankRoutingNumber = other.bankRoutingNumber;
    if (l$bankRoutingNumber != lOther$bankRoutingNumber) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$bankSwift = bankSwift;
    final lOther$bankSwift = other.bankSwift;
    if (l$bankSwift != lOther$bankSwift) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$documents = documents;
    final lOther$documents = other.documents;
    if (l$documents != null && lOther$documents != null) {
      if (l$documents.length != lOther$documents.length) {
        return false;
      }
      for (int i = 0; i < l$documents.length; i++) {
        final l$documents$entry = l$documents[i];
        final lOther$documents$entry = lOther$documents[i];
        if (l$documents$entry != lOther$documents$entry) {
          return false;
        }
      }
    } else if (l$documents != lOther$documents) {
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

extension UtilityExtension$Fragment$ProfileFullFragment
    on Fragment$ProfileFullFragment {
  CopyWith$Fragment$ProfileFullFragment<Fragment$ProfileFullFragment>
      get copyWith => CopyWith$Fragment$ProfileFullFragment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ProfileFullFragment<TRes> {
  factory CopyWith$Fragment$ProfileFullFragment(
    Fragment$ProfileFullFragment instance,
    TRes Function(Fragment$ProfileFullFragment) then,
  ) = _CopyWithImpl$Fragment$ProfileFullFragment;

  factory CopyWith$Fragment$ProfileFullFragment.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ProfileFullFragment;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? address,
    Enum$DriverStatus? status,
    Enum$Gender? gender,
    String? mobileNumber,
    int? searchDistance,
    String? certificateNumber,
    String? countryIso,
    String? carPlate,
    int? carProductionYear,
    String? carId,
    String? carColorId,
    String? bankName,
    String? bankRoutingNumber,
    String? accountNumber,
    String? bankSwift,
    Fragment$MediaFragment? media,
    List<Fragment$MediaFragment>? documents,
    String? $__typename,
  });
  CopyWith$Fragment$MediaFragment<TRes> get media;
  TRes documents(
      Iterable<Fragment$MediaFragment>? Function(
              Iterable<
                  CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>>?)
          _fn);
}

class _CopyWithImpl$Fragment$ProfileFullFragment<TRes>
    implements CopyWith$Fragment$ProfileFullFragment<TRes> {
  _CopyWithImpl$Fragment$ProfileFullFragment(
    this._instance,
    this._then,
  );

  final Fragment$ProfileFullFragment _instance;

  final TRes Function(Fragment$ProfileFullFragment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? email = _undefined,
    Object? address = _undefined,
    Object? status = _undefined,
    Object? gender = _undefined,
    Object? mobileNumber = _undefined,
    Object? searchDistance = _undefined,
    Object? certificateNumber = _undefined,
    Object? countryIso = _undefined,
    Object? carPlate = _undefined,
    Object? carProductionYear = _undefined,
    Object? carId = _undefined,
    Object? carColorId = _undefined,
    Object? bankName = _undefined,
    Object? bankRoutingNumber = _undefined,
    Object? accountNumber = _undefined,
    Object? bankSwift = _undefined,
    Object? media = _undefined,
    Object? documents = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ProfileFullFragment(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        address:
            address == _undefined ? _instance.address : (address as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$DriverStatus),
        gender:
            gender == _undefined ? _instance.gender : (gender as Enum$Gender?),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        searchDistance: searchDistance == _undefined
            ? _instance.searchDistance
            : (searchDistance as int?),
        certificateNumber: certificateNumber == _undefined
            ? _instance.certificateNumber
            : (certificateNumber as String?),
        countryIso: countryIso == _undefined
            ? _instance.countryIso
            : (countryIso as String?),
        carPlate:
            carPlate == _undefined ? _instance.carPlate : (carPlate as String?),
        carProductionYear: carProductionYear == _undefined
            ? _instance.carProductionYear
            : (carProductionYear as int?),
        carId: carId == _undefined ? _instance.carId : (carId as String?),
        carColorId: carColorId == _undefined
            ? _instance.carColorId
            : (carColorId as String?),
        bankName:
            bankName == _undefined ? _instance.bankName : (bankName as String?),
        bankRoutingNumber: bankRoutingNumber == _undefined
            ? _instance.bankRoutingNumber
            : (bankRoutingNumber as String?),
        accountNumber: accountNumber == _undefined
            ? _instance.accountNumber
            : (accountNumber as String?),
        bankSwift: bankSwift == _undefined
            ? _instance.bankSwift
            : (bankSwift as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$MediaFragment?),
        documents: documents == _undefined
            ? _instance.documents
            : (documents as List<Fragment$MediaFragment>?),
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

  TRes documents(
          Iterable<Fragment$MediaFragment>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaFragment<Fragment$MediaFragment>>?)
              _fn) =>
      call(
          documents: _fn(
              _instance.documents?.map((e) => CopyWith$Fragment$MediaFragment(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Fragment$ProfileFullFragment<TRes>
    implements CopyWith$Fragment$ProfileFullFragment<TRes> {
  _CopyWithStubImpl$Fragment$ProfileFullFragment(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? address,
    Enum$DriverStatus? status,
    Enum$Gender? gender,
    String? mobileNumber,
    int? searchDistance,
    String? certificateNumber,
    String? countryIso,
    String? carPlate,
    int? carProductionYear,
    String? carId,
    String? carColorId,
    String? bankName,
    String? bankRoutingNumber,
    String? accountNumber,
    String? bankSwift,
    Fragment$MediaFragment? media,
    List<Fragment$MediaFragment>? documents,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaFragment<TRes> get media =>
      CopyWith$Fragment$MediaFragment.stub(_res);

  documents(_fn) => _res;
}

const fragmentDefinitionProfileFullFragment = FragmentDefinitionNode(
  name: NameNode(value: 'ProfileFullFragment'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Driver'),
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
      name: NameNode(value: 'email'),
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
      name: NameNode(value: 'status'),
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
      name: NameNode(value: 'certificateNumber'),
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
      name: NameNode(value: 'carPlate'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'carProductionYear'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'carId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'carColorId'),
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
      name: NameNode(value: 'bankRoutingNumber'),
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
      name: NameNode(value: 'bankSwift'),
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
      name: NameNode(value: 'documents'),
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
);
const documentNodeFragmentProfileFullFragment = DocumentNode(definitions: [
  fragmentDefinitionProfileFullFragment,
  fragmentDefinitionMediaFragment,
]);

extension ClientExtension$Fragment$ProfileFullFragment
    on graphql.GraphQLClient {
  void writeFragment$ProfileFullFragment({
    required Fragment$ProfileFullFragment data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ProfileFullFragment',
            document: documentNodeFragmentProfileFullFragment,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ProfileFullFragment? readFragment$ProfileFullFragment({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ProfileFullFragment',
          document: documentNodeFragmentProfileFullFragment,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$ProfileFullFragment.fromJson(result);
  }
}
