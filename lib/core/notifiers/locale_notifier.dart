import 'package:flutter/material.dart';

import '../../data/service/preference_service.dart';
import '../constants/preference_values.dart';

class LocaleNotifier extends ChangeNotifier {
  LocaleNotifier(this.preferenceService) : _currentLocale = Locale(PreferenceValues.localeEn) {
    _loadLocale();
  }

  Locale _currentLocale;
  final PreferencesService preferenceService;

  Future<void> _loadLocale() async {
    final savedLanguage = await preferenceService.getCurrentLanguage();
    _currentLocale = Locale(savedLanguage);
    notifyListeners();
  }

  Future<void> setLocale(Locale locale) async {
    _currentLocale = locale;
    await preferenceService.saveCurrentLanguage(locale.languageCode);
    notifyListeners();
  }

  Locale get locale => _currentLocale;
}
