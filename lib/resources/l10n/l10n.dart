// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(
      _current != null,
      'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(
      instance != null,
      'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Ricky and Morty`
  String get appName {
    return Intl.message('Ricky and Morty', name: 'appName', desc: '', args: []);
  }

  /// `Response is null`
  String get nullResponseMessage {
    return Intl.message(
      'Response is null',
      name: 'nullResponseMessage',
      desc: '',
      args: [],
    );
  }

  /// `Validation error`
  String get validationErrorMessage {
    return Intl.message(
      'Validation error',
      name: 'validationErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Permission denied`
  String get permissionErrorMessage {
    return Intl.message(
      'Permission denied',
      name: 'permissionErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Resource was not found or does not exist`
  String get resourceErrorMessage {
    return Intl.message(
      'Resource was not found or does not exist',
      name: 'resourceErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `No Access to perform the request`
  String get requestAccessErrorMessage {
    return Intl.message(
      'No Access to perform the request',
      name: 'requestAccessErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Request`
  String get invalidRequestErrorMessage {
    return Intl.message(
      'Invalid Request',
      name: 'invalidRequestErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Request failed due to server-side`
  String get serverSideErrorMessage {
    return Intl.message(
      'Request failed due to server-side',
      name: 'serverSideErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Error while communicating to the server`
  String get serverCommunicationErrorMessage {
    return Intl.message(
      'Error while communicating to the server',
      name: 'serverCommunicationErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect credentials`
  String get incorrectCredentialsErrorMessage {
    return Intl.message(
      'Incorrect credentials',
      name: 'incorrectCredentialsErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Conflict error`
  String get conflictErrorMessage {
    return Intl.message(
      'Conflict error',
      name: 'conflictErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Unknown Error`
  String get unknownErrorMessage {
    return Intl.message(
      'Unknown Error',
      name: 'unknownErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Response failed with status code {statusCode}: {message}`
  String responseFailedErrorMessage(int statusCode, String message) {
    return Intl.message(
      'Response failed with status code $statusCode: $message',
      name: 'responseFailedErrorMessage',
      desc: 'Response failed message with status code and actual message',
      args: [statusCode, message],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
