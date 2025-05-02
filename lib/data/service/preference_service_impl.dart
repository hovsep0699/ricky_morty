import 'package:shared_preferences/shared_preferences.dart';

import '../../core/constants/preference_keys.dart';
import 'preference_service.dart';

class PreferencesServiceImp implements PreferencesService {
  PreferencesServiceImp({required this.sharedPreferences});

  final Future<SharedPreferences> sharedPreferences;

  @override
  Future<String> getCurrentLanguage() async {
    return (await sharedPreferences).getString(PreferencesKeys.language) ??
        'en';
  }

  @override
  Future<void> saveCurrentLanguage(String languageCode) async {
    await (await sharedPreferences)
        .setString(PreferencesKeys.language, languageCode);
  }

  @override
  Future<String> getCurrentTheme() async {
    return (await sharedPreferences)
        .getString(PreferencesKeys.themeMode) ?? 'light';
  }

  @override
  Future<void> saveCurrentTheme(String themeMode) async {
    await (await sharedPreferences)
        .setString(PreferencesKeys.themeMode, themeMode);
  }
}
