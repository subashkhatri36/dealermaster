// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterModel _$$_RegisterModelFromJson(Map<String, dynamic> json) =>
    _$_RegisterModel(
      id: json['_id'] as String?,
      fullname: json['fullname'] as String,
      email: json['email'] as String,
      isActive: json['isActive'] as bool? ?? false,
      role: json['role'] as String? ?? "farmer",
    );

Map<String, dynamic> _$$_RegisterModelToJson(_$_RegisterModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'fullname': instance.fullname,
      'email': instance.email,
      'isActive': instance.isActive,
      'role': instance.role,
    };
