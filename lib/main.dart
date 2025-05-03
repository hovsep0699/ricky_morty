import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'app.dart';
import 'core/hive_adapters.dart';
import 'core/hive_boxes.dart';
import 'core/themes/app_colors.dart';
import 'di/service_locator.dart';

Future<void> initializeHive() async {
  await Hive.initFlutter();
  provideHiveAdapters();
  await openHiveBoxes();
}


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeHive();
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
  configureDependencies();

  runApp(const App());

}
