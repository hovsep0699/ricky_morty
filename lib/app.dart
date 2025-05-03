import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'core/bloc_providers.dart';
import 'core/notifier_providers.dart';
import 'core/notifiers/locale_notifier.dart';
import 'core/notifiers/theme_notifier.dart';
import 'core/router/app_router.dart';
import 'core/themes/app_themes.dart';
import 'data/utils/hive_manager.dart';
import 'di/service_locator.dart';
import 'resources/l10n/l10n.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {

  @override
  void dispose() {
    closeBoxes();
    super.dispose();
  }

  Future<void> closeBoxes() async => HiveManager.closeAll();

  @override
  Widget build(BuildContext context) {
    return provideNotifiers(
      child: Builder(
        builder:
            (context) => AppContent(
              initialLanguage: context.watch<LocaleNotifier>().locale,
              initialThemeMode: context.watch<ThemeNotifier>().themeMode,
            ),
      ),
    );
  }
}

class AppContent extends StatelessWidget {
  AppContent({super.key, required this.initialLanguage, required this.initialThemeMode});

  final _appRouter = AppRouter();
  final Locale initialLanguage;
  final ThemeMode initialThemeMode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: provideBlocProviders(
        child: MaterialApp.router(
          themeMode: initialThemeMode,
          theme: initialThemeMode == ThemeMode.light ? lightTheme : darkTheme,
          darkTheme: darkTheme,
          debugShowCheckedModeBanner: false,
          locale: initialLanguage,
          routerConfig: _appRouter.config(includePrefixMatches: false),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.delegate.supportedLocales,
        ),
      ),
    );
  }
}
