import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dealermaster/locale_provider.dart';
import 'package:dealermaster/src/core/service/shared_pref_provider.dart';
import 'package:dealermaster/src/routes/router.dart';
import 'package:dealermaster/src/theme_data/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'configure_nonweb.dart'; // if (dart.library.html) 'configure_web.dart';

import 'app_localization.dart';

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureApp();

  await SharedPrefProvider.initialize();
  //initializeDateFormatting().then((_) =>
  runApp(
    ProviderScope(
      observers: [Logger()],
      child: const MyApp(),
    ),
  );
  //);
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends ConsumerState<MyApp> {
  final appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
  }

//https://developers.google.com/admob/flutter/rewarded
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        return MaterialApp.router(
          routerDelegate: AutoRouterDelegate(appRouter),
          routeInformationParser: appRouter.defaultRouteParser(),
          title: 'Chicken Farming',
          debugShowCheckedModeBanner: false,
          theme: Themes.light,
          locale: ref.watch(localeProvider),
          supportedLocales: supportedLocale.map((e) => Locale(e)).toList(),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        );
      });
    });
  }
}
