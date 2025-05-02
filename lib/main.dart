import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'app.dart';
import 'core/themes/app_colors.dart';
import 'data/model/local/character_details_box.dart';
import 'di/service_locator.dart';

Future<void> initializeHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter<CharacterDetailsBox>(CharacterDetailsBoxAdapter());
  Hive.registerAdapter<CharacterLocationBox>(CharacterLocationBoxAdapter());
  Hive.registerAdapter<CharacterOriginBox>(CharacterOriginBoxAdapter());
}


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemStatusBarContrastEnforced: true,
      statusBarColor: lightColorScheme.surface,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarContrastEnforced: true,
      systemNavigationBarColor: lightColorScheme.surface,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: lightColorScheme.surface));
  await initializeHive();
  await configureDependencies();

  runApp(const App());

}
