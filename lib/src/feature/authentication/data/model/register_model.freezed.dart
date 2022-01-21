// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) {
  return _RegisterModel.fromJson(json);
}

/// @nodoc
class _$RegisterModelTearOff {
  const _$RegisterModelTearOff();

  _RegisterModel call(
      {@JsonKey(name: '_id') String? id,
      required String fullname,
      required String email,
      bool isActive = false,
      String role = "farmer"}) {
    return _RegisterModel(
      id: id,
      fullname: fullname,
      email: email,
      isActive: isActive,
      role: role,
    );
  }

  RegisterModel fromJson(Map<String, Object?> json) {
    return RegisterModel.fromJson(json);
  }
}

/// @nodoc
const $RegisterModel = _$RegisterModelTearOff();

/// @nodoc
mixin _$RegisterModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String get fullname => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterModelCopyWith<RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterModelCopyWith<$Res> {
  factory $RegisterModelCopyWith(
          RegisterModel value, $Res Function(RegisterModel) then) =
      _$RegisterModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String fullname,
      String email,
      bool isActive,
      String role});
}

/// @nodoc
class _$RegisterModelCopyWithImpl<$Res>
    implements $RegisterModelCopyWith<$Res> {
  _$RegisterModelCopyWithImpl(this._value, this._then);

  final RegisterModel _value;
  // ignore: unused_field
  final $Res Function(RegisterModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? isActive = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegisterModelCopyWith<$Res>
    implements $RegisterModelCopyWith<$Res> {
  factory _$RegisterModelCopyWith(
          _RegisterModel value, $Res Function(_RegisterModel) then) =
      __$RegisterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String fullname,
      String email,
      bool isActive,
      String role});
}

/// @nodoc
class __$RegisterModelCopyWithImpl<$Res>
    extends _$RegisterModelCopyWithImpl<$Res>
    implements _$RegisterModelCopyWith<$Res> {
  __$RegisterModelCopyWithImpl(
      _RegisterModel _value, $Res Function(_RegisterModel) _then)
      : super(_value, (v) => _then(v as _RegisterModel));

  @override
  _RegisterModel get _value => super._value as _RegisterModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? isActive = freezed,
    Object? role = freezed,
  }) {
    return _then(_RegisterModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: fullname == freezed
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterModel implements _RegisterModel {
  const _$_RegisterModel(
      {@JsonKey(name: '_id') this.id,
      required this.fullname,
      required this.email,
      this.isActive = false,
      this.role = "farmer"});

  factory _$_RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String fullname;
  @override
  final String email;
  @JsonKey()
  @override
  final bool isActive;
  @JsonKey()
  @override
  final String role;

  @override
  String toString() {
    return 'RegisterModel(id: $id, fullname: $fullname, email: $email, isActive: $isActive, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.fullname, fullname) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.role, role));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(fullname),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(isActive),
      const DeepCollectionEquality().hash(role));

  @JsonKey(ignore: true)
  @override
  _$RegisterModelCopyWith<_RegisterModel> get copyWith =>
      __$RegisterModelCopyWithImpl<_RegisterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterModelToJson(this);
  }
}

abstract class _RegisterModel implements RegisterModel {
  const factory _RegisterModel(
      {@JsonKey(name: '_id') String? id,
      required String fullname,
      required String email,
      bool isActive,
      String role}) = _$_RegisterModel;

  factory _RegisterModel.fromJson(Map<String, dynamic> json) =
      _$_RegisterModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String get fullname;
  @override
  String get email;
  @override
  bool get isActive;
  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$RegisterModelCopyWith<_RegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
