import 'package:hive/hive.dart';

import '../../core/constants/hive_keys.dart';
import '../model/local/character_details_box.dart';
import 'hive_service.dart';

class HiveServiceImpl implements HiveService {
  HiveServiceImpl();

  late final Map<String, Box<dynamic>> _boxes = {};

  @override
  Future<void> openBox<T>(String key) async {
    _boxes[key] = await Hive.openBox<CharacterDetailsBox>(HiveKeys.favorites);
  }

  @override
  Box<T> getBox<T>(String key) {
    print("LLL::: ${key} ${_boxes}");
    if (!_boxes.containsKey(key)) {
      throw Exception("Box with key '$key' is not opened yet.");
    }
    return _boxes[key]! as Box<T>;
  }

  @override
  Future<void> close() async {
    await Future.wait(_boxes.values.map((e) async => e.close()));
  }

  @override
  Box<CharacterDetailsBox> get favoriteBox => getBox<CharacterDetailsBox>(HiveKeys.favorites);
}
