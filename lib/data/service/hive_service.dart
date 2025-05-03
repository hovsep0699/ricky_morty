import 'package:hive/hive.dart';

import '../model/local/character_details_box.dart';

abstract interface class HiveService {
  Future<void> openBox<T>(String key);
  Box<T> getBox<T>(String key);
  Future<void> close();
  Box<CharacterDetailsBox> get favoriteBox;
}
