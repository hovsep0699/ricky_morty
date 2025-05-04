import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ricky_morty/core/constants/preference_keys.dart';
import 'package:ricky_morty/data/service/preference_service_impl.dart';

import 'mock_shared_preferences.mocks.dart';


void main() {
  late PreferencesServiceImp preferencesService;
  late MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    preferencesService = PreferencesServiceImp(
      sharedPreferences: Future.value(mockSharedPreferences),
    );
  });

  test('getCurrentLanguage returns "en" if no language is saved', () async {
    when(mockSharedPreferences.getString(PreferencesKeys.language))
        .thenReturn(null);

    final language = await preferencesService.getCurrentLanguage();
    expect(language, 'en');
  });

  test('getCurrentTheme returns "light" if no theme is saved', () async {
    when(mockSharedPreferences.getString(PreferencesKeys.themeMode))
        .thenReturn(null);

    final theme = await preferencesService.getCurrentTheme();
    expect(theme, 'light');
  });

  test('saveCurrentLanguage stores language correctly', () async {
    when(mockSharedPreferences.setString(PreferencesKeys.language, 'fr'))
        .thenAnswer((_) async => true);

    await preferencesService.saveCurrentLanguage('fr');

    verify(mockSharedPreferences.setString(PreferencesKeys.language, 'fr'))
        .called(1);
  });

  test('saveCurrentTheme stores theme mode correctly', () async {
    when(mockSharedPreferences.setString(PreferencesKeys.themeMode, 'dark'))
        .thenAnswer((_) async => true);

    await preferencesService.saveCurrentTheme('dark');

    verify(mockSharedPreferences.setString(PreferencesKeys.themeMode, 'dark'))
        .called(1);
  });

  test('getCurrentLanguage returns saved language when available', () async {
    when(mockSharedPreferences.getString(PreferencesKeys.language))
        .thenReturn('fr');

    final language = await preferencesService.getCurrentLanguage();
    expect(language, 'fr');
  });

  test('saveCurrentLanguage handles failure to save', () async {
    when(mockSharedPreferences.setString(PreferencesKeys.language, 'es'))
        .thenAnswer((_) async => false);

    await preferencesService.saveCurrentLanguage('es');

    verify(mockSharedPreferences.setString(PreferencesKeys.language, 'es'))
        .called(1);
  });

}
