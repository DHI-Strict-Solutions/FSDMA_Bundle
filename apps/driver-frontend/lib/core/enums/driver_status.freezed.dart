// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DriverStatus _$DriverStatusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'pendingSubmission':
      return PendingSubmissionState.fromJson(json);
    case 'pendingApproval':
      return PendingApprovalState.fromJson(json);
    case 'online':
      return ApprovedState.fromJson(json);
    case 'offline':
      return OfflineState.fromJson(json);
    case 'onTrip':
      return OnTripState.fromJson(json);
    case 'blocked':
      return BlockedState.fromJson(json);
    case 'softReject':
      return SoftRejectState.fromJson(json);
    case 'hardReject':
      return HardRejectState.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DriverStatus',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$DriverStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pendingSubmission,
    required TResult Function() pendingApproval,
    required TResult Function() online,
    required TResult Function() offline,
    required TResult Function() onTrip,
    required TResult Function() blocked,
    required TResult Function() softReject,
    required TResult Function() hardReject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pendingSubmission,
    TResult? Function()? pendingApproval,
    TResult? Function()? online,
    TResult? Function()? offline,
    TResult? Function()? onTrip,
    TResult? Function()? blocked,
    TResult? Function()? softReject,
    TResult? Function()? hardReject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pendingSubmission,
    TResult Function()? pendingApproval,
    TResult Function()? online,
    TResult Function()? offline,
    TResult Function()? onTrip,
    TResult Function()? blocked,
    TResult Function()? softReject,
    TResult Function()? hardReject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PendingSubmissionState value) pendingSubmission,
    required TResult Function(PendingApprovalState value) pendingApproval,
    required TResult Function(ApprovedState value) online,
    required TResult Function(OfflineState value) offline,
    required TResult Function(OnTripState value) onTrip,
    required TResult Function(BlockedState value) blocked,
    required TResult Function(SoftRejectState value) softReject,
    required TResult Function(HardRejectState value) hardReject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PendingSubmissionState value)? pendingSubmission,
    TResult? Function(PendingApprovalState value)? pendingApproval,
    TResult? Function(ApprovedState value)? online,
    TResult? Function(OfflineState value)? offline,
    TResult? Function(OnTripState value)? onTrip,
    TResult? Function(BlockedState value)? blocked,
    TResult? Function(SoftRejectState value)? softReject,
    TResult? Function(HardRejectState value)? hardReject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PendingSubmissionState value)? pendingSubmission,
    TResult Function(PendingApprovalState value)? pendingApproval,
    TResult Function(ApprovedState value)? online,
    TResult Function(OfflineState value)? offline,
    TResult Function(OnTripState value)? onTrip,
    TResult Function(BlockedState value)? blocked,
    TResult Function(SoftRejectState value)? softReject,
    TResult Function(HardRejectState value)? hardReject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverStatusCopyWith<$Res> {
  factory $DriverStatusCopyWith(
          DriverStatus value, $Res Function(DriverStatus) then) =
      _$DriverStatusCopyWithImpl<$Res, DriverStatus>;
}

/// @nodoc
class _$DriverStatusCopyWithImpl<$Res, $Val extends DriverStatus>
    implements $DriverStatusCopyWith<$Res> {
  _$DriverStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PendingSubmissionStateImplCopyWith<$Res> {
  factory _$$PendingSubmissionStateImplCopyWith(
          _$PendingSubmissionStateImpl value,
          $Res Function(_$PendingSubmissionStateImpl) then) =
      __$$PendingSubmissionStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PendingSubmissionStateImplCopyWithImpl<$Res>
    extends _$DriverStatusCopyWithImpl<$Res, _$PendingSubmissionStateImpl>
    implements _$$PendingSubmissionStateImplCopyWith<$Res> {
  __$$PendingSubmissionStateImplCopyWithImpl(
      _$PendingSubmissionStateImpl _value,
      $Res Function(_$PendingSubmissionStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PendingSubmissionStateImpl implements PendingSubmissionState {
  const _$PendingSubmissionStateImpl({final String? $type})
      : $type = $type ?? 'pendingSubmission';

  factory _$PendingSubmissionStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PendingSubmissionStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DriverStatus.pendingSubmission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingSubmissionStateImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pendingSubmission,
    required TResult Function() pendingApproval,
    required TResult Function() online,
    required TResult Function() offline,
    required TResult Function() onTrip,
    required TResult Function() blocked,
    required TResult Function() softReject,
    required TResult Function() hardReject,
  }) {
    return pendingSubmission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pendingSubmission,
    TResult? Function()? pendingApproval,
    TResult? Function()? online,
    TResult? Function()? offline,
    TResult? Function()? onTrip,
    TResult? Function()? blocked,
    TResult? Function()? softReject,
    TResult? Function()? hardReject,
  }) {
    return pendingSubmission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pendingSubmission,
    TResult Function()? pendingApproval,
    TResult Function()? online,
    TResult Function()? offline,
    TResult Function()? onTrip,
    TResult Function()? blocked,
    TResult Function()? softReject,
    TResult Function()? hardReject,
    required TResult orElse(),
  }) {
    if (pendingSubmission != null) {
      return pendingSubmission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PendingSubmissionState value) pendingSubmission,
    required TResult Function(PendingApprovalState value) pendingApproval,
    required TResult Function(ApprovedState value) online,
    required TResult Function(OfflineState value) offline,
    required TResult Function(OnTripState value) onTrip,
    required TResult Function(BlockedState value) blocked,
    required TResult Function(SoftRejectState value) softReject,
    required TResult Function(HardRejectState value) hardReject,
  }) {
    return pendingSubmission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PendingSubmissionState value)? pendingSubmission,
    TResult? Function(PendingApprovalState value)? pendingApproval,
    TResult? Function(ApprovedState value)? online,
    TResult? Function(OfflineState value)? offline,
    TResult? Function(OnTripState value)? onTrip,
    TResult? Function(BlockedState value)? blocked,
    TResult? Function(SoftRejectState value)? softReject,
    TResult? Function(HardRejectState value)? hardReject,
  }) {
    return pendingSubmission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PendingSubmissionState value)? pendingSubmission,
    TResult Function(PendingApprovalState value)? pendingApproval,
    TResult Function(ApprovedState value)? online,
    TResult Function(OfflineState value)? offline,
    TResult Function(OnTripState value)? onTrip,
    TResult Function(BlockedState value)? blocked,
    TResult Function(SoftRejectState value)? softReject,
    TResult Function(HardRejectState value)? hardReject,
    required TResult orElse(),
  }) {
    if (pendingSubmission != null) {
      return pendingSubmission(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PendingSubmissionStateImplToJson(
      this,
    );
  }
}

abstract class PendingSubmissionState implements DriverStatus {
  const factory PendingSubmissionState() = _$PendingSubmissionStateImpl;

  factory PendingSubmissionState.fromJson(Map<String, dynamic> json) =
      _$PendingSubmissionStateImpl.fromJson;
}

/// @nodoc
abstract class _$$PendingApprovalStateImplCopyWith<$Res> {
  factory _$$PendingApprovalStateImplCopyWith(_$PendingApprovalStateImpl value,
          $Res Function(_$PendingApprovalStateImpl) then) =
      __$$PendingApprovalStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PendingApprovalStateImplCopyWithImpl<$Res>
    extends _$DriverStatusCopyWithImpl<$Res, _$PendingApprovalStateImpl>
    implements _$$PendingApprovalStateImplCopyWith<$Res> {
  __$$PendingApprovalStateImplCopyWithImpl(_$PendingApprovalStateImpl _value,
      $Res Function(_$PendingApprovalStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PendingApprovalStateImpl implements PendingApprovalState {
  const _$PendingApprovalStateImpl({final String? $type})
      : $type = $type ?? 'pendingApproval';

  factory _$PendingApprovalStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PendingApprovalStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DriverStatus.pendingApproval()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingApprovalStateImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pendingSubmission,
    required TResult Function() pendingApproval,
    required TResult Function() online,
    required TResult Function() offline,
    required TResult Function() onTrip,
    required TResult Function() blocked,
    required TResult Function() softReject,
    required TResult Function() hardReject,
  }) {
    return pendingApproval();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pendingSubmission,
    TResult? Function()? pendingApproval,
    TResult? Function()? online,
    TResult? Function()? offline,
    TResult? Function()? onTrip,
    TResult? Function()? blocked,
    TResult? Function()? softReject,
    TResult? Function()? hardReject,
  }) {
    return pendingApproval?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pendingSubmission,
    TResult Function()? pendingApproval,
    TResult Function()? online,
    TResult Function()? offline,
    TResult Function()? onTrip,
    TResult Function()? blocked,
    TResult Function()? softReject,
    TResult Function()? hardReject,
    required TResult orElse(),
  }) {
    if (pendingApproval != null) {
      return pendingApproval();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PendingSubmissionState value) pendingSubmission,
    required TResult Function(PendingApprovalState value) pendingApproval,
    required TResult Function(ApprovedState value) online,
    required TResult Function(OfflineState value) offline,
    required TResult Function(OnTripState value) onTrip,
    required TResult Function(BlockedState value) blocked,
    required TResult Function(SoftRejectState value) softReject,
    required TResult Function(HardRejectState value) hardReject,
  }) {
    return pendingApproval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PendingSubmissionState value)? pendingSubmission,
    TResult? Function(PendingApprovalState value)? pendingApproval,
    TResult? Function(ApprovedState value)? online,
    TResult? Function(OfflineState value)? offline,
    TResult? Function(OnTripState value)? onTrip,
    TResult? Function(BlockedState value)? blocked,
    TResult? Function(SoftRejectState value)? softReject,
    TResult? Function(HardRejectState value)? hardReject,
  }) {
    return pendingApproval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PendingSubmissionState value)? pendingSubmission,
    TResult Function(PendingApprovalState value)? pendingApproval,
    TResult Function(ApprovedState value)? online,
    TResult Function(OfflineState value)? offline,
    TResult Function(OnTripState value)? onTrip,
    TResult Function(BlockedState value)? blocked,
    TResult Function(SoftRejectState value)? softReject,
    TResult Function(HardRejectState value)? hardReject,
    required TResult orElse(),
  }) {
    if (pendingApproval != null) {
      return pendingApproval(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PendingApprovalStateImplToJson(
      this,
    );
  }
}

abstract class PendingApprovalState implements DriverStatus {
  const factory PendingApprovalState() = _$PendingApprovalStateImpl;

  factory PendingApprovalState.fromJson(Map<String, dynamic> json) =
      _$PendingApprovalStateImpl.fromJson;
}

/// @nodoc
abstract class _$$ApprovedStateImplCopyWith<$Res> {
  factory _$$ApprovedStateImplCopyWith(
          _$ApprovedStateImpl value, $Res Function(_$ApprovedStateImpl) then) =
      __$$ApprovedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApprovedStateImplCopyWithImpl<$Res>
    extends _$DriverStatusCopyWithImpl<$Res, _$ApprovedStateImpl>
    implements _$$ApprovedStateImplCopyWith<$Res> {
  __$$ApprovedStateImplCopyWithImpl(
      _$ApprovedStateImpl _value, $Res Function(_$ApprovedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ApprovedStateImpl implements ApprovedState {
  const _$ApprovedStateImpl({final String? $type}) : $type = $type ?? 'online';

  factory _$ApprovedStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApprovedStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DriverStatus.online()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApprovedStateImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pendingSubmission,
    required TResult Function() pendingApproval,
    required TResult Function() online,
    required TResult Function() offline,
    required TResult Function() onTrip,
    required TResult Function() blocked,
    required TResult Function() softReject,
    required TResult Function() hardReject,
  }) {
    return online();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pendingSubmission,
    TResult? Function()? pendingApproval,
    TResult? Function()? online,
    TResult? Function()? offline,
    TResult? Function()? onTrip,
    TResult? Function()? blocked,
    TResult? Function()? softReject,
    TResult? Function()? hardReject,
  }) {
    return online?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pendingSubmission,
    TResult Function()? pendingApproval,
    TResult Function()? online,
    TResult Function()? offline,
    TResult Function()? onTrip,
    TResult Function()? blocked,
    TResult Function()? softReject,
    TResult Function()? hardReject,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PendingSubmissionState value) pendingSubmission,
    required TResult Function(PendingApprovalState value) pendingApproval,
    required TResult Function(ApprovedState value) online,
    required TResult Function(OfflineState value) offline,
    required TResult Function(OnTripState value) onTrip,
    required TResult Function(BlockedState value) blocked,
    required TResult Function(SoftRejectState value) softReject,
    required TResult Function(HardRejectState value) hardReject,
  }) {
    return online(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PendingSubmissionState value)? pendingSubmission,
    TResult? Function(PendingApprovalState value)? pendingApproval,
    TResult? Function(ApprovedState value)? online,
    TResult? Function(OfflineState value)? offline,
    TResult? Function(OnTripState value)? onTrip,
    TResult? Function(BlockedState value)? blocked,
    TResult? Function(SoftRejectState value)? softReject,
    TResult? Function(HardRejectState value)? hardReject,
  }) {
    return online?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PendingSubmissionState value)? pendingSubmission,
    TResult Function(PendingApprovalState value)? pendingApproval,
    TResult Function(ApprovedState value)? online,
    TResult Function(OfflineState value)? offline,
    TResult Function(OnTripState value)? onTrip,
    TResult Function(BlockedState value)? blocked,
    TResult Function(SoftRejectState value)? softReject,
    TResult Function(HardRejectState value)? hardReject,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApprovedStateImplToJson(
      this,
    );
  }
}

abstract class ApprovedState implements DriverStatus {
  const factory ApprovedState() = _$ApprovedStateImpl;

  factory ApprovedState.fromJson(Map<String, dynamic> json) =
      _$ApprovedStateImpl.fromJson;
}

/// @nodoc
abstract class _$$OfflineStateImplCopyWith<$Res> {
  factory _$$OfflineStateImplCopyWith(
          _$OfflineStateImpl value, $Res Function(_$OfflineStateImpl) then) =
      __$$OfflineStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OfflineStateImplCopyWithImpl<$Res>
    extends _$DriverStatusCopyWithImpl<$Res, _$OfflineStateImpl>
    implements _$$OfflineStateImplCopyWith<$Res> {
  __$$OfflineStateImplCopyWithImpl(
      _$OfflineStateImpl _value, $Res Function(_$OfflineStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OfflineStateImpl implements OfflineState {
  const _$OfflineStateImpl({final String? $type}) : $type = $type ?? 'offline';

  factory _$OfflineStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfflineStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DriverStatus.offline()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OfflineStateImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pendingSubmission,
    required TResult Function() pendingApproval,
    required TResult Function() online,
    required TResult Function() offline,
    required TResult Function() onTrip,
    required TResult Function() blocked,
    required TResult Function() softReject,
    required TResult Function() hardReject,
  }) {
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pendingSubmission,
    TResult? Function()? pendingApproval,
    TResult? Function()? online,
    TResult? Function()? offline,
    TResult? Function()? onTrip,
    TResult? Function()? blocked,
    TResult? Function()? softReject,
    TResult? Function()? hardReject,
  }) {
    return offline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pendingSubmission,
    TResult Function()? pendingApproval,
    TResult Function()? online,
    TResult Function()? offline,
    TResult Function()? onTrip,
    TResult Function()? blocked,
    TResult Function()? softReject,
    TResult Function()? hardReject,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PendingSubmissionState value) pendingSubmission,
    required TResult Function(PendingApprovalState value) pendingApproval,
    required TResult Function(ApprovedState value) online,
    required TResult Function(OfflineState value) offline,
    required TResult Function(OnTripState value) onTrip,
    required TResult Function(BlockedState value) blocked,
    required TResult Function(SoftRejectState value) softReject,
    required TResult Function(HardRejectState value) hardReject,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PendingSubmissionState value)? pendingSubmission,
    TResult? Function(PendingApprovalState value)? pendingApproval,
    TResult? Function(ApprovedState value)? online,
    TResult? Function(OfflineState value)? offline,
    TResult? Function(OnTripState value)? onTrip,
    TResult? Function(BlockedState value)? blocked,
    TResult? Function(SoftRejectState value)? softReject,
    TResult? Function(HardRejectState value)? hardReject,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PendingSubmissionState value)? pendingSubmission,
    TResult Function(PendingApprovalState value)? pendingApproval,
    TResult Function(ApprovedState value)? online,
    TResult Function(OfflineState value)? offline,
    TResult Function(OnTripState value)? onTrip,
    TResult Function(BlockedState value)? blocked,
    TResult Function(SoftRejectState value)? softReject,
    TResult Function(HardRejectState value)? hardReject,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OfflineStateImplToJson(
      this,
    );
  }
}

abstract class OfflineState implements DriverStatus {
  const factory OfflineState() = _$OfflineStateImpl;

  factory OfflineState.fromJson(Map<String, dynamic> json) =
      _$OfflineStateImpl.fromJson;
}

/// @nodoc
abstract class _$$OnTripStateImplCopyWith<$Res> {
  factory _$$OnTripStateImplCopyWith(
          _$OnTripStateImpl value, $Res Function(_$OnTripStateImpl) then) =
      __$$OnTripStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnTripStateImplCopyWithImpl<$Res>
    extends _$DriverStatusCopyWithImpl<$Res, _$OnTripStateImpl>
    implements _$$OnTripStateImplCopyWith<$Res> {
  __$$OnTripStateImplCopyWithImpl(
      _$OnTripStateImpl _value, $Res Function(_$OnTripStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$OnTripStateImpl implements OnTripState {
  const _$OnTripStateImpl({final String? $type}) : $type = $type ?? 'onTrip';

  factory _$OnTripStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnTripStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DriverStatus.onTrip()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnTripStateImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pendingSubmission,
    required TResult Function() pendingApproval,
    required TResult Function() online,
    required TResult Function() offline,
    required TResult Function() onTrip,
    required TResult Function() blocked,
    required TResult Function() softReject,
    required TResult Function() hardReject,
  }) {
    return onTrip();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pendingSubmission,
    TResult? Function()? pendingApproval,
    TResult? Function()? online,
    TResult? Function()? offline,
    TResult? Function()? onTrip,
    TResult? Function()? blocked,
    TResult? Function()? softReject,
    TResult? Function()? hardReject,
  }) {
    return onTrip?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pendingSubmission,
    TResult Function()? pendingApproval,
    TResult Function()? online,
    TResult Function()? offline,
    TResult Function()? onTrip,
    TResult Function()? blocked,
    TResult Function()? softReject,
    TResult Function()? hardReject,
    required TResult orElse(),
  }) {
    if (onTrip != null) {
      return onTrip();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PendingSubmissionState value) pendingSubmission,
    required TResult Function(PendingApprovalState value) pendingApproval,
    required TResult Function(ApprovedState value) online,
    required TResult Function(OfflineState value) offline,
    required TResult Function(OnTripState value) onTrip,
    required TResult Function(BlockedState value) blocked,
    required TResult Function(SoftRejectState value) softReject,
    required TResult Function(HardRejectState value) hardReject,
  }) {
    return onTrip(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PendingSubmissionState value)? pendingSubmission,
    TResult? Function(PendingApprovalState value)? pendingApproval,
    TResult? Function(ApprovedState value)? online,
    TResult? Function(OfflineState value)? offline,
    TResult? Function(OnTripState value)? onTrip,
    TResult? Function(BlockedState value)? blocked,
    TResult? Function(SoftRejectState value)? softReject,
    TResult? Function(HardRejectState value)? hardReject,
  }) {
    return onTrip?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PendingSubmissionState value)? pendingSubmission,
    TResult Function(PendingApprovalState value)? pendingApproval,
    TResult Function(ApprovedState value)? online,
    TResult Function(OfflineState value)? offline,
    TResult Function(OnTripState value)? onTrip,
    TResult Function(BlockedState value)? blocked,
    TResult Function(SoftRejectState value)? softReject,
    TResult Function(HardRejectState value)? hardReject,
    required TResult orElse(),
  }) {
    if (onTrip != null) {
      return onTrip(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnTripStateImplToJson(
      this,
    );
  }
}

abstract class OnTripState implements DriverStatus {
  const factory OnTripState() = _$OnTripStateImpl;

  factory OnTripState.fromJson(Map<String, dynamic> json) =
      _$OnTripStateImpl.fromJson;
}

/// @nodoc
abstract class _$$BlockedStateImplCopyWith<$Res> {
  factory _$$BlockedStateImplCopyWith(
          _$BlockedStateImpl value, $Res Function(_$BlockedStateImpl) then) =
      __$$BlockedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlockedStateImplCopyWithImpl<$Res>
    extends _$DriverStatusCopyWithImpl<$Res, _$BlockedStateImpl>
    implements _$$BlockedStateImplCopyWith<$Res> {
  __$$BlockedStateImplCopyWithImpl(
      _$BlockedStateImpl _value, $Res Function(_$BlockedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BlockedStateImpl implements BlockedState {
  const _$BlockedStateImpl({final String? $type}) : $type = $type ?? 'blocked';

  factory _$BlockedStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockedStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DriverStatus.blocked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlockedStateImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pendingSubmission,
    required TResult Function() pendingApproval,
    required TResult Function() online,
    required TResult Function() offline,
    required TResult Function() onTrip,
    required TResult Function() blocked,
    required TResult Function() softReject,
    required TResult Function() hardReject,
  }) {
    return blocked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pendingSubmission,
    TResult? Function()? pendingApproval,
    TResult? Function()? online,
    TResult? Function()? offline,
    TResult? Function()? onTrip,
    TResult? Function()? blocked,
    TResult? Function()? softReject,
    TResult? Function()? hardReject,
  }) {
    return blocked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pendingSubmission,
    TResult Function()? pendingApproval,
    TResult Function()? online,
    TResult Function()? offline,
    TResult Function()? onTrip,
    TResult Function()? blocked,
    TResult Function()? softReject,
    TResult Function()? hardReject,
    required TResult orElse(),
  }) {
    if (blocked != null) {
      return blocked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PendingSubmissionState value) pendingSubmission,
    required TResult Function(PendingApprovalState value) pendingApproval,
    required TResult Function(ApprovedState value) online,
    required TResult Function(OfflineState value) offline,
    required TResult Function(OnTripState value) onTrip,
    required TResult Function(BlockedState value) blocked,
    required TResult Function(SoftRejectState value) softReject,
    required TResult Function(HardRejectState value) hardReject,
  }) {
    return blocked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PendingSubmissionState value)? pendingSubmission,
    TResult? Function(PendingApprovalState value)? pendingApproval,
    TResult? Function(ApprovedState value)? online,
    TResult? Function(OfflineState value)? offline,
    TResult? Function(OnTripState value)? onTrip,
    TResult? Function(BlockedState value)? blocked,
    TResult? Function(SoftRejectState value)? softReject,
    TResult? Function(HardRejectState value)? hardReject,
  }) {
    return blocked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PendingSubmissionState value)? pendingSubmission,
    TResult Function(PendingApprovalState value)? pendingApproval,
    TResult Function(ApprovedState value)? online,
    TResult Function(OfflineState value)? offline,
    TResult Function(OnTripState value)? onTrip,
    TResult Function(BlockedState value)? blocked,
    TResult Function(SoftRejectState value)? softReject,
    TResult Function(HardRejectState value)? hardReject,
    required TResult orElse(),
  }) {
    if (blocked != null) {
      return blocked(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockedStateImplToJson(
      this,
    );
  }
}

abstract class BlockedState implements DriverStatus {
  const factory BlockedState() = _$BlockedStateImpl;

  factory BlockedState.fromJson(Map<String, dynamic> json) =
      _$BlockedStateImpl.fromJson;
}

/// @nodoc
abstract class _$$SoftRejectStateImplCopyWith<$Res> {
  factory _$$SoftRejectStateImplCopyWith(_$SoftRejectStateImpl value,
          $Res Function(_$SoftRejectStateImpl) then) =
      __$$SoftRejectStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SoftRejectStateImplCopyWithImpl<$Res>
    extends _$DriverStatusCopyWithImpl<$Res, _$SoftRejectStateImpl>
    implements _$$SoftRejectStateImplCopyWith<$Res> {
  __$$SoftRejectStateImplCopyWithImpl(
      _$SoftRejectStateImpl _value, $Res Function(_$SoftRejectStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SoftRejectStateImpl implements SoftRejectState {
  const _$SoftRejectStateImpl({final String? $type})
      : $type = $type ?? 'softReject';

  factory _$SoftRejectStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoftRejectStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DriverStatus.softReject()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SoftRejectStateImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pendingSubmission,
    required TResult Function() pendingApproval,
    required TResult Function() online,
    required TResult Function() offline,
    required TResult Function() onTrip,
    required TResult Function() blocked,
    required TResult Function() softReject,
    required TResult Function() hardReject,
  }) {
    return softReject();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pendingSubmission,
    TResult? Function()? pendingApproval,
    TResult? Function()? online,
    TResult? Function()? offline,
    TResult? Function()? onTrip,
    TResult? Function()? blocked,
    TResult? Function()? softReject,
    TResult? Function()? hardReject,
  }) {
    return softReject?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pendingSubmission,
    TResult Function()? pendingApproval,
    TResult Function()? online,
    TResult Function()? offline,
    TResult Function()? onTrip,
    TResult Function()? blocked,
    TResult Function()? softReject,
    TResult Function()? hardReject,
    required TResult orElse(),
  }) {
    if (softReject != null) {
      return softReject();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PendingSubmissionState value) pendingSubmission,
    required TResult Function(PendingApprovalState value) pendingApproval,
    required TResult Function(ApprovedState value) online,
    required TResult Function(OfflineState value) offline,
    required TResult Function(OnTripState value) onTrip,
    required TResult Function(BlockedState value) blocked,
    required TResult Function(SoftRejectState value) softReject,
    required TResult Function(HardRejectState value) hardReject,
  }) {
    return softReject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PendingSubmissionState value)? pendingSubmission,
    TResult? Function(PendingApprovalState value)? pendingApproval,
    TResult? Function(ApprovedState value)? online,
    TResult? Function(OfflineState value)? offline,
    TResult? Function(OnTripState value)? onTrip,
    TResult? Function(BlockedState value)? blocked,
    TResult? Function(SoftRejectState value)? softReject,
    TResult? Function(HardRejectState value)? hardReject,
  }) {
    return softReject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PendingSubmissionState value)? pendingSubmission,
    TResult Function(PendingApprovalState value)? pendingApproval,
    TResult Function(ApprovedState value)? online,
    TResult Function(OfflineState value)? offline,
    TResult Function(OnTripState value)? onTrip,
    TResult Function(BlockedState value)? blocked,
    TResult Function(SoftRejectState value)? softReject,
    TResult Function(HardRejectState value)? hardReject,
    required TResult orElse(),
  }) {
    if (softReject != null) {
      return softReject(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SoftRejectStateImplToJson(
      this,
    );
  }
}

abstract class SoftRejectState implements DriverStatus {
  const factory SoftRejectState() = _$SoftRejectStateImpl;

  factory SoftRejectState.fromJson(Map<String, dynamic> json) =
      _$SoftRejectStateImpl.fromJson;
}

/// @nodoc
abstract class _$$HardRejectStateImplCopyWith<$Res> {
  factory _$$HardRejectStateImplCopyWith(_$HardRejectStateImpl value,
          $Res Function(_$HardRejectStateImpl) then) =
      __$$HardRejectStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HardRejectStateImplCopyWithImpl<$Res>
    extends _$DriverStatusCopyWithImpl<$Res, _$HardRejectStateImpl>
    implements _$$HardRejectStateImplCopyWith<$Res> {
  __$$HardRejectStateImplCopyWithImpl(
      _$HardRejectStateImpl _value, $Res Function(_$HardRejectStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$HardRejectStateImpl implements HardRejectState {
  const _$HardRejectStateImpl({final String? $type})
      : $type = $type ?? 'hardReject';

  factory _$HardRejectStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HardRejectStateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DriverStatus.hardReject()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HardRejectStateImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pendingSubmission,
    required TResult Function() pendingApproval,
    required TResult Function() online,
    required TResult Function() offline,
    required TResult Function() onTrip,
    required TResult Function() blocked,
    required TResult Function() softReject,
    required TResult Function() hardReject,
  }) {
    return hardReject();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pendingSubmission,
    TResult? Function()? pendingApproval,
    TResult? Function()? online,
    TResult? Function()? offline,
    TResult? Function()? onTrip,
    TResult? Function()? blocked,
    TResult? Function()? softReject,
    TResult? Function()? hardReject,
  }) {
    return hardReject?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pendingSubmission,
    TResult Function()? pendingApproval,
    TResult Function()? online,
    TResult Function()? offline,
    TResult Function()? onTrip,
    TResult Function()? blocked,
    TResult Function()? softReject,
    TResult Function()? hardReject,
    required TResult orElse(),
  }) {
    if (hardReject != null) {
      return hardReject();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PendingSubmissionState value) pendingSubmission,
    required TResult Function(PendingApprovalState value) pendingApproval,
    required TResult Function(ApprovedState value) online,
    required TResult Function(OfflineState value) offline,
    required TResult Function(OnTripState value) onTrip,
    required TResult Function(BlockedState value) blocked,
    required TResult Function(SoftRejectState value) softReject,
    required TResult Function(HardRejectState value) hardReject,
  }) {
    return hardReject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PendingSubmissionState value)? pendingSubmission,
    TResult? Function(PendingApprovalState value)? pendingApproval,
    TResult? Function(ApprovedState value)? online,
    TResult? Function(OfflineState value)? offline,
    TResult? Function(OnTripState value)? onTrip,
    TResult? Function(BlockedState value)? blocked,
    TResult? Function(SoftRejectState value)? softReject,
    TResult? Function(HardRejectState value)? hardReject,
  }) {
    return hardReject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PendingSubmissionState value)? pendingSubmission,
    TResult Function(PendingApprovalState value)? pendingApproval,
    TResult Function(ApprovedState value)? online,
    TResult Function(OfflineState value)? offline,
    TResult Function(OnTripState value)? onTrip,
    TResult Function(BlockedState value)? blocked,
    TResult Function(SoftRejectState value)? softReject,
    TResult Function(HardRejectState value)? hardReject,
    required TResult orElse(),
  }) {
    if (hardReject != null) {
      return hardReject(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HardRejectStateImplToJson(
      this,
    );
  }
}

abstract class HardRejectState implements DriverStatus {
  const factory HardRejectState() = _$HardRejectStateImpl;

  factory HardRejectState.fromJson(Map<String, dynamic> json) =
      _$HardRejectStateImpl.fromJson;
}
