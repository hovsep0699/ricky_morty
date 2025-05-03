import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../data/service/preference_service.dart';
import '../di/service_locator.dart';
import 'notifiers/locale_notifier.dart';
import 'notifiers/theme_notifier.dart';

Widget provideNotifiers({required Widget child}) {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider<ThemeNotifier>(
        create: (_) => ThemeNotifier(getIt<PreferencesService>()),
      ),
      ChangeNotifierProvider<LocaleNotifier>(
        create: (_) => LocaleNotifier(getIt<PreferencesService>()),
      ),
    ],
    child: child,
  );
}
