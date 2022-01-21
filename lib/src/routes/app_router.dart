import 'package:auto_route/auto_route.dart';
import 'package:dealermaster/src/feature/authentication/forget_password.dart';
import 'package:dealermaster/src/feature/authentication/login_page.dart';
import 'package:dealermaster/src/feature/authentication/register_page.dart';
import 'package:dealermaster/src/feature/compnay_info/company_info.dart';
import 'package:dealermaster/src/feature/splash/splash_page.dart';

// flutter packages pub run build_runner watch --delete-conflicting-outputs
/*
Chicken farming record to support poultry farming and dealer with cross platform
App Feature:
Login register feature.

 */
@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: LoginPage),
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: ForgetPasswordPage),
  AutoRoute(page: RegisterPage),
  AutoRoute(page: CompanyDetailRegisterPage),
])
class $AppRouter {}
