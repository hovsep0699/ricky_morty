
import 'dart:ui';

import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';


abstract class LocaleMappings {
  static Map<String, String> get localeDisplayNames => {
    'en': 'English',
    'ru': 'Russian',
    'sl': 'Slovenian',
    'fr': 'French',
    'es': 'Spanish',
    'de': 'German',
    'it': 'Italian',
    'zh': 'Chinese',
    'ja': 'Japanese',
    'hi': 'Hindi',
  };
}



extension LocaleExtension on Locale {
  String toValue() {
    return LocaleMappings.localeDisplayNames[languageCode] ?? languageCode;
  }
}
