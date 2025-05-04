abstract interface class PreferencesService {
  Future<void> saveCurrentLanguage(String languageCode);
  Future<String> getCurrentLanguage();
  Future<String> getCurrentTheme();
  Future<void> saveCurrentTheme(String themeMode);
}