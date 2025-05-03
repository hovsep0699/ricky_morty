import 'dart:ui';

import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import 'locale_extension.dart';

extension StringExtension on String {
  Locale? get toLocale {
    final val = LocaleMappings.localeDisplayNames.where<String, String>((key, val) => val == this);
    if (val.isEmpty) {
      return null;
    }
    return Locale(val.keys.first);
  }
}
