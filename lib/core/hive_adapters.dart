import 'package:hive/hive.dart';

import '../data/model/local/character_box.dart';
import '../data/model/local/character_details_box.dart';
import '../data/model/local/favorite_box.dart';

void provideHiveAdapters() {
  Hive.registerAdapter(CharacterDetailsBoxAdapter());
  Hive.registerAdapter(CharacterBoxAdapter());
  Hive.registerAdapter(FavoriteBoxAdapter());
  Hive.registerAdapter(CharacterLocationBoxAdapter());
  Hive.registerAdapter(CharacterOriginBoxAdapter());
  Hive.registerAdapter(CharacterInfoBoxAdapter());
}