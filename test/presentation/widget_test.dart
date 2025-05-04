import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ricky_morty/data/service/preference_service.dart';

import '../core/notifier/mock_theme_notifier.mocks.dart';
import '../data/service/mock_preference_service.mocks.dart';

void main() {
  late MockThemeNotifier mockThemeNotifier;

  setUp(() {
    mockThemeNotifier = MockThemeNotifier();
  });

  test('themeMode returns default value when not set', () {
    when(mockThemeNotifier.themeMode).thenReturn(ThemeMode.system);

    final themeMode = mockThemeNotifier.themeMode;

    expect(themeMode, ThemeMode.system);
  });

  test('setTheme calls setTheme method with correct argument', () async {
    when(mockThemeNotifier.setTheme(ThemeMode.dark)).thenAnswer((_) async => null);

    await mockThemeNotifier.setTheme(ThemeMode.dark);

    verify(mockThemeNotifier.setTheme(ThemeMode.dark)).called(1);
  });

  test('preferenceService returns a mocked PreferencesService', () {
    final mockPreferencesService = MockPreferencesServiceImp();
    when(mockThemeNotifier.preferenceService).thenReturn(mockPreferencesService);

    final preferencesService = mockThemeNotifier.preferenceService;

    expect(preferencesService, isA<PreferencesService>());
  });

  test('addListener is called', () {
    final listener = () {};

    when(mockThemeNotifier.addListener(listener)).thenAnswer((_) => null);

    mockThemeNotifier.addListener(listener);

    verify(mockThemeNotifier.addListener(listener)).called(1);
  });

  test('removeListener is called', () {
    final listener = () {};

    when(mockThemeNotifier.removeListener(listener)).thenAnswer((_) => null);

    mockThemeNotifier.removeListener(listener);

    verify(mockThemeNotifier.removeListener(listener)).called(1);
  });

  test('dispose method is called', () {
    when(mockThemeNotifier.dispose()).thenAnswer((_) => null);

    mockThemeNotifier.dispose();

    verify(mockThemeNotifier.dispose()).called(1);
  });

  test('notifyListeners method is called', () {
    when(mockThemeNotifier.notifyListeners()).thenAnswer((_) => null);

    mockThemeNotifier.notifyListeners();

    verify(mockThemeNotifier.notifyListeners()).called(1);
  });
}
