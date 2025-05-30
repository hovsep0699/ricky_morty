// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(statusCode, message) =>
      "Ошибка ответа с кодом ${statusCode}: ${message}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "appName": MessageLookupByLibrary.simpleMessage("Рик и Морти"),
    "conflictErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Ошибка конфликта",
    ),
    "incorrectCredentialsErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Неверные учетные данные",
    ),
    "invalidRequestErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Неверный запрос",
    ),
    "lblEmptyFavorites": MessageLookupByLibrary.simpleMessage(
      "Пока нет избранных",
    ),
    "lblFavorites": MessageLookupByLibrary.simpleMessage("Избранное"),
    "lblNoDataAvailable": MessageLookupByLibrary.simpleMessage(
      "На данный момент данных нет",
    ),
    "lblSettings": MessageLookupByLibrary.simpleMessage("Настройки"),
    "nullResponseMessage": MessageLookupByLibrary.simpleMessage(
      "Ответ отсутствует",
    ),
    "permissionErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Доступ запрещён",
    ),
    "requestAccessErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Нет доступа для выполнения запроса",
    ),
    "resourceErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Ресурс не найден или не существует",
    ),
    "responseFailedErrorMessage": m0,
    "serverCommunicationErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Ошибка при соединении с сервером",
    ),
    "serverSideErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Запрос не выполнен из-за ошибки на сервере",
    ),
    "unknownErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Неизвестная ошибка",
    ),
    "validationErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Ошибка валидации",
    ),
  };
}
