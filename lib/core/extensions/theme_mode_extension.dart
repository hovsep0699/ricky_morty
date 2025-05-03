import 'package:flutter/material.dart';


extension ThemeModeExtension on List<ThemeMode> {
  ThemeMode fromString(String themeMode) =>
      firstWhere((theme) => theme.name.toLowerCase() == themeMode,
          orElse: () => ThemeMode.light);
  List<String> get stringValues => map((theme) => theme.name).toList();
}
