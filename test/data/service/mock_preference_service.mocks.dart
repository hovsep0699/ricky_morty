// Mocks generated by Mockito 5.4.6 from annotations
// in ricky_morty/test/mock_preference_service.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i5;
import 'package:ricky_morty/data/service/preference_service_impl.dart' as _i3;
import 'package:shared_preferences/shared_preferences.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeSharedPreferences_0 extends _i1.SmartFake
    implements _i2.SharedPreferences {
  _FakeSharedPreferences_0(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

/// A class which mocks [PreferencesServiceImp].
///
/// See the documentation for Mockito's code generation for more information.
class MockPreferencesServiceImp extends _i1.Mock
    implements _i3.PreferencesServiceImp {
  MockPreferencesServiceImp() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.SharedPreferences> get sharedPreferences =>
      (super.noSuchMethod(
            Invocation.getter(#sharedPreferences),
            returnValue: _i4.Future<_i2.SharedPreferences>.value(
              _FakeSharedPreferences_0(
                this,
                Invocation.getter(#sharedPreferences),
              ),
            ),
          )
          as _i4.Future<_i2.SharedPreferences>);

  @override
  _i4.Future<String> getCurrentLanguage() =>
      (super.noSuchMethod(
            Invocation.method(#getCurrentLanguage, []),
            returnValue: _i4.Future<String>.value(
              _i5.dummyValue<String>(
                this,
                Invocation.method(#getCurrentLanguage, []),
              ),
            ),
          )
          as _i4.Future<String>);

  @override
  _i4.Future<void> saveCurrentLanguage(String? languageCode) =>
      (super.noSuchMethod(
            Invocation.method(#saveCurrentLanguage, [languageCode]),
            returnValue: _i4.Future<void>.value(),
            returnValueForMissingStub: _i4.Future<void>.value(),
          )
          as _i4.Future<void>);

  @override
  _i4.Future<String> getCurrentTheme() =>
      (super.noSuchMethod(
            Invocation.method(#getCurrentTheme, []),
            returnValue: _i4.Future<String>.value(
              _i5.dummyValue<String>(
                this,
                Invocation.method(#getCurrentTheme, []),
              ),
            ),
          )
          as _i4.Future<String>);

  @override
  _i4.Future<void> saveCurrentTheme(String? themeMode) =>
      (super.noSuchMethod(
            Invocation.method(#saveCurrentTheme, [themeMode]),
            returnValue: _i4.Future<void>.value(),
            returnValueForMissingStub: _i4.Future<void>.value(),
          )
          as _i4.Future<void>);
}
