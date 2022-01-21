// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:dealermaster/src/common/constant/db_field.dart';
import 'package:dealermaster/src/core/service/shared_pref_provider.dart';
import 'package:dealermaster/src/feature/authentication/data/model/register_model.dart';
import 'package:dealermaster/src/feature/authentication/data/model/user_assign.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_session.freezed.dart';
part 'auth_session.g.dart';

@freezed
class AuthSession with _$AuthSession {
  const factory AuthSession({
    @JsonKey(name: "token") required String token,
    RegisterModel? userinfo,
    List<UserAssign>? userassign,
  }) = _AuthSession;

  factory AuthSession.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionFromJson(json);

  static AuthSession? fromStorage() {
    final session = SharedPrefProvider.instance.getString(authSession);
    if (session == null) return null;
    return AuthSession.fromJson(jsonDecode(session) as Map<String, dynamic>);
  }

  static Future<void> toStorage(AuthSession session) async {
    await SharedPrefProvider.instance
        .setString(authSession, jsonEncode(session));
  }
}
