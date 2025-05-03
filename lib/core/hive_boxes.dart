import '../data/model/local/character_box.dart';
import '../data/model/local/favorite_box.dart';
import '../data/utils/hive_manager.dart';
import 'constants/hive_keys.dart';

Future<void> openHiveBoxes() async {
  await HiveManager.openBox<CharacterBox>(HiveKeys.character);
  await HiveManager.openBox<FavoriteBox>(HiveKeys.favorites);
}