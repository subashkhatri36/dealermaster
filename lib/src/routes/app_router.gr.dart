// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../common/constant/enums.dart' as _i8;
import '../feature/authentication/forget_password.dart' as _i3;
import '../feature/authentication/login_page.dart' as _i1;
import '../feature/authentication/register_page.dart' as _i4;
import '../feature/compnay_info/company_info.dart' as _i5;
import '../feature/splash/splash_page.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    LoginPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    SplashPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SplashPage());
    },
    ForgetPasswordPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ForgetPasswordPage());
    },
    RegisterPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterPage());
    },
    CompanyDetailRegisterPageRoute.name: (routeData) {
      final args = routeData.argsAs<CompanyDetailRegisterPageRouteArgs>(
          orElse: () => const CompanyDetailRegisterPageRouteArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.CompanyDetailRegisterPage(
              key: args.key, userType: args.userType));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i6.RouteConfig(SplashPageRoute.name, path: '/'),
        _i6.RouteConfig(ForgetPasswordPageRoute.name,
            path: '/forget-password-page'),
        _i6.RouteConfig(RegisterPageRoute.name, path: '/register-page'),
        _i6.RouteConfig(CompanyDetailRegisterPageRoute.name,
            path: '/company-detail-register-page')
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginPageRoute extends _i6.PageRouteInfo<void> {
  const LoginPageRoute() : super(LoginPageRoute.name, path: '/login-page');

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashPageRoute extends _i6.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i3.ForgetPasswordPage]
class ForgetPasswordPageRoute extends _i6.PageRouteInfo<void> {
  const ForgetPasswordPageRoute()
      : super(ForgetPasswordPageRoute.name, path: '/forget-password-page');

  static const String name = 'ForgetPasswordPageRoute';
}

/// generated route for
/// [_i4.RegisterPage]
class RegisterPageRoute extends _i6.PageRouteInfo<void> {
  const RegisterPageRoute()
      : super(RegisterPageRoute.name, path: '/register-page');

  static const String name = 'RegisterPageRoute';
}

/// generated route for
/// [_i5.CompanyDetailRegisterPage]
class CompanyDetailRegisterPageRoute
    extends _i6.PageRouteInfo<CompanyDetailRegisterPageRouteArgs> {
  CompanyDetailRegisterPageRoute(
      {_i7.Key? key, _i8.UserType userType = _i8.UserType.staff})
      : super(CompanyDetailRegisterPageRoute.name,
            path: '/company-detail-register-page',
            args: CompanyDetailRegisterPageRouteArgs(
                key: key, userType: userType));

  static const String name = 'CompanyDetailRegisterPageRoute';
}

class CompanyDetailRegisterPageRouteArgs {
  const CompanyDetailRegisterPageRouteArgs(
      {this.key, this.userType = _i8.UserType.staff});

  final _i7.Key? key;

  final _i8.UserType userType;

  @override
  String toString() {
    return 'CompanyDetailRegisterPageRouteArgs{key: $key, userType: $userType}';
  }
}
