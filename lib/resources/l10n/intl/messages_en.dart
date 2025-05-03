// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(statusCode, message) =>
      "Response failed with status code ${statusCode}: ${message}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "appName": MessageLookupByLibrary.simpleMessage("Ricky and Morty"),
    "conflictErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Conflict error",
    ),
    "incorrectCredentialsErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Incorrect credentials",
    ),
    "invalidRequestErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Invalid Request",
    ),
    "lblEmptyFavorites": MessageLookupByLibrary.simpleMessage(
      "There are no favorites yet",
    ),
    "lblFavorites": MessageLookupByLibrary.simpleMessage("Favorites"),
    "lblNoDataAvailable": MessageLookupByLibrary.simpleMessage(
      "There is no data at the moment",
    ),
    "lblSettings": MessageLookupByLibrary.simpleMessage("Settings"),
    "nullResponseMessage": MessageLookupByLibrary.simpleMessage(
      "Response is null",
    ),
    "permissionErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Permission denied",
    ),
    "requestAccessErrorMessage": MessageLookupByLibrary.simpleMessage(
      "No Access to perform the request",
    ),
    "resourceErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Resource was not found or does not exist",
    ),
    "responseFailedErrorMessage": m0,
    "serverCommunicationErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Error while communicating to the server",
    ),
    "serverSideErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Request failed due to server-side",
    ),
    "unknownErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Unknown Error",
    ),
    "validationErrorMessage": MessageLookupByLibrary.simpleMessage(
      "Validation error",
    ),
  };
}
