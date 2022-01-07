import 'dart:convert';
import 'package:dealermaster/src/common/constant/api_link.dart';
import 'package:dealermaster/src/common/constant/db_field.dart';
import 'package:dealermaster/src/core/service/repo.dart';
import 'package:dealermaster/src/core/service/shared_pref_provider.dart';
import 'package:dealermaster/src/feature/authentication/bloc/auth_session.dart';
import 'package:dealermaster/src/feature/authentication/data/model/register_model.dart';
import 'package:dealermaster/src/feature/authentication/data/model/user_assign.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepoProvider = Provider((ref) => AuthRepositories());

abstract class IAuth {
  Future<String> login(String email, String password);
  Future<String?> register(
      String email, String password, String repassword, String fullname);
  Future<bool> logout();
  Future<AuthSession?> getUser();
}

class AuthRepositories extends Repo implements IAuth {
  @override
  Future<String> login(String email, String password) async {
    try {
      final data = {
        "email": email,
        "password": password,
      };

      final res = await client.post(ApiLink.login, data: data);

      final assignlist = res['userassign'] as List;
      List<UserAssign> userassign = [];
      if (assignlist.isNotEmpty) {
        userassign =
            userassign = assignlist.map((e) => UserAssign.fromJson(e)).toList();
        if (userassign.isNotEmpty) {
          SharedPrefProvider.instance
              .setString(userAssign, jsonEncode(userassign[0]));
        }
      }

      RegisterModel? userinfo = res['userinfo'] == null
          ? null
          : RegisterModel.fromJson(res['userinfo']);

      AuthSession s = AuthSession(
          token: res[token], userinfo: userinfo, userassign: userassign);

      await Future.wait([AuthSession.toStorage(s)]);

      SharedPrefProvider.instance.setString(token, res[token]);
      if (userassign.isNotEmpty) {
        return "ok".toLowerCase();
      } else {
        return "assign";
      }
    } catch (e) {
      return e.toString();
    }
  }

  @override
  Future<bool> logout() async {
    final String rtoken = SharedPrefProvider.instance.getString(token) ?? "";
    if (rtoken.isNotEmpty) {
      await client.post(ApiLink.logout, data: {token: token});
      await SharedPrefProvider.instance.clear();
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<AuthSession?> getUser() async {
    try {
      return AuthSession.fromStorage();
    } catch (_) {
      await SharedPrefProvider.instance.clear();
    }
  }

  @override
  Future<String?> register(
      String email, String password, String repassword, String fullname) async {
    try {
      final data = {
        "fullname": "skc",
        "email": "sk@gmail.com",
        "password": "subash",
        "repassword": "subash",
        "role": "admin",
        "device": "web",
        "isStaff": true
        // "fullname": fullname,
        // "email": email,
        // "password": password,
        // "repassword": password,
        // "role": "admin",
        // "device": "web",
        // "isStaff": true
      };

      final res = await client.post(ApiLink.register, data: data);

      AuthSession s = AuthSession(
          token: res[token], userinfo: RegisterModel.fromJson(res['userinfo']));

      await Future.wait([AuthSession.toStorage(s)]);

      SharedPrefProvider.instance.setString(token, res[token]);

      return null;
    } catch (error) {
      return error.toString();
    }
  }
}
