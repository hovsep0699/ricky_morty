import 'package:flutter/material.dart';

import '../../data/service/preference_service.dart';
import '../extensions/theme_mode_extension.dart';

class ThemeNotifier extends ChangeNotifier {

  ThemeNotifier(this.preferenceService) : _currentMode = ThemeMode.light {
    _loadTheme();
  }
  ThemeMode _currentMode;
  final PreferencesService preferenceService;

  Future<void> _loadTheme() async {
    final savedTheme = await preferenceService.getCurrentTheme();
    _currentMode = ThemeMode.values.fromString(savedTheme);
    notifyListeners();
  }

  Future<void> setTheme(ThemeMode themeMode) async {
    _currentMode = themeMode;
    await preferenceService.saveCurrentTheme(themeMode.toString().toLowerCase());
    notifyListeners();
  }

  ThemeMode get themeMode => _currentMode;
}
