import 'package:dealermaster/src/core/service/shared_pref_provider.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const _localeKey = 'locale';

const supportedLocale = ['en', 'ne'];

/// Provides locale saved to local storage, if not found provides `Locale('fr')`
final localeProvider =
    StateNotifierProvider<LocaleProvider, Locale>((ref) => LocaleProvider());

class LocaleProvider extends StateNotifier<Locale> {
  LocaleProvider()
      : super(Locale(SharedPrefProvider.instance.getString(_localeKey) ??
            supportedLocale.first));

  /// Saves language code of locale to local storage
  Future<void> saveLocale(Locale locale) async {
    state = locale;
    SharedPrefProvider.instance.setString(_localeKey, locale.languageCode);
  }
}
