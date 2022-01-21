// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_assign.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAssign _$UserAssignFromJson(Map<String, dynamic> json) {
  return _UserAssign.fromJson(json);
}

/// @nodoc
class _$UserAssignTearOff {
  const _$UserAssignTearOff();

  _UserAssign call(
      {@JsonKey(name: '_id') String? id,
      String? compnayid,
      String? branchid,
      String? userid,
      String? remarks}) {
    return _UserAssign(
      id: id,
      compnayid: compnayid,
      branchid: branchid,
      userid: userid,
      remarks: remarks,
    );
  }

  UserAssign fromJson(Map<String, Object?> json) {
    return UserAssign.fromJson(json);
  }
}

/// @nodoc
const $UserAssign = _$UserAssignTearOff();

/// @nodoc
mixin _$UserAssign {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get compnayid => throw _privateConstructorUsedError;
  String? get branchid => throw _privateConstructorUsedError;
  String? get userid => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAssignCopyWith<UserAssign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAssignCopyWith<$Res> {
  factory $UserAssignCopyWith(
          UserAssign value, $Res Function(UserAssign) then) =
      _$UserAssignCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? compnayid,
      String? branchid,
      String? userid,
      String? remarks});
}

/// @nodoc
class _$UserAssignCopyWithImpl<$Res> implements $UserAssignCopyWith<$Res> {
  _$UserAssignCopyWithImpl(this._value, this._then);

  final UserAssign _value;
  // ignore: unused_field
  final $Res Function(UserAssign) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? compnayid = freezed,
    Object? branchid = freezed,
    Object? userid = freezed,
    Object? remarks = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      compnayid: compnayid == freezed
          ? _value.compnayid
          : compnayid // ignore: cast_nullable_to_non_nullable
              as String?,
      branchid: branchid == freezed
          ? _value.branchid
          : branchid // ignore: cast_nullable_to_non_nullable
              as String?,
      userid: userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserAssignCopyWith<$Res> implements $UserAssignCopyWith<$Res> {
  factory _$UserAssignCopyWith(
          _UserAssign value, $Res Function(_UserAssign) then) =
      __$UserAssignCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? compnayid,
      String? branchid,
      String? userid,
      String? remarks});
}

/// @nodoc
class __$UserAssignCopyWithImpl<$Res> extends _$UserAssignCopyWithImpl<$Res>
    implements _$UserAssignCopyWith<$Res> {
  __$UserAssignCopyWithImpl(
      _UserAssign _value, $Res Function(_UserAssign) _then)
      : super(_value, (v) => _then(v as _UserAssign));

  @override
  _UserAssign get _value => super._value as _UserAssign;

  @override
  $Res call({
    Object? id = freezed,
    Object? compnayid = freezed,
    Object? branchid = freezed,
    Object? userid = freezed,
    Object? remarks = freezed,
  }) {
    return _then(_UserAssign(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      compnayid: compnayid == freezed
          ? _value.compnayid
          : compnayid // ignore: cast_nullable_to_non_nullable
              as String?,
      branchid: branchid == freezed
          ? _value.branchid
          : branchid // ignore: cast_nullable_to_non_nullable
              as String?,
      userid: userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserAssign implements _UserAssign {
  const _$_UserAssign(
      {@JsonKey(name: '_id') this.id,
      this.compnayid,
      this.branchid,
      this.userid,
      this.remarks});

  factory _$_UserAssign.fromJson(Map<String, dynamic> json) =>
      _$$_UserAssignFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? compnayid;
  @override
  final String? branchid;
  @override
  final String? userid;
  @override
  final String? remarks;

  @override
  String toString() {
    return 'UserAssign(id: $id, compnayid: $compnayid, branchid: $branchid, userid: $userid, remarks: $remarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserAssign &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.compnayid, compnayid) &&
            const DeepCollectionEquality().equals(other.branchid, branchid) &&
            const DeepCollectionEquality().equals(other.userid, userid) &&
            const DeepCollectionEquality().equals(other.remarks, remarks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(compnayid),
      const DeepCollectionEquality().hash(branchid),
      const DeepCollectionEquality().hash(userid),
      const DeepCollectionEquality().hash(remarks));

  @JsonKey(ignore: true)
  @override
  _$UserAssignCopyWith<_UserAssign> get copyWith =>
      __$UserAssignCopyWithImpl<_UserAssign>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAssignToJson(this);
  }
}

abstract class _UserAssign implements UserAssign {
  const factory _UserAssign(
      {@JsonKey(name: '_id') String? id,
      String? compnayid,
      String? branchid,
      String? userid,
      String? remarks}) = _$_UserAssign;

  factory _UserAssign.fromJson(Map<String, dynamic> json) =
      _$_UserAssign.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get compnayid;
  @override
  String? get branchid;
  @override
  String? get userid;
  @override
  String? get remarks;
  @override
  @JsonKey(ignore: true)
  _$UserAssignCopyWith<_UserAssign> get copyWith =>
      throw _privateConstructorUsedError;
}
