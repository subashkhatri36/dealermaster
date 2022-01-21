// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthSession _$$_AuthSessionFromJson(Map<String, dynamic> json) =>
    _$_AuthSession(
      token: json['token'] as String,
      userinfo: json['userinfo'] == null
          ? null
          : RegisterModel.fromJson(json['userinfo'] as Map<String, dynamic>),
      userassign: (json['userassign'] as List<dynamic>?)
          ?.map((e) => UserAssign.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AuthSessionToJson(_$_AuthSession instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userinfo': instance.userinfo,
      'userassign': instance.userassign,
    };
