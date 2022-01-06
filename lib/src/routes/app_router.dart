import 'package:auto_route/auto_route.dart';
import 'package:dealermaster/src/feature/splash/splash_page.dart';

// flutter packages pub run build_runner watch --delete-conflicting-outputs
/*
Chicken farming record to support poultry farming and dealer with cross platform
App Feature:
Login register feature.

 */
@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
])
class $AppRouter {}
