import 'dart:async';

import 'package:hive/hive.dart';

import '../../core/constants/hive_keys.dart';
import '../../data/model/local/character_box.dart';
import '../../data/model/local/favorite_box.dart';

abstract class HiveManager {
  static final Map<String, Box<HiveObject>> _boxes = {};
  static final Map<String, Completer<void>> _boxOpeningCompleters = {};

  static Future<void> openBox<T extends HiveObject>(String key) async {
    if (_boxes.containsKey(key)) {
      return;
    }

    if (_boxOpeningCompleters.containsKey(key)) {
      await _boxOpeningCompleters[key]!.future;
      return;
    }

    final completer = Completer<void>();
    _boxOpeningCompleters[key] = completer;

    try {
      _boxes[key] = await Hive.openBox<T>(key);
      print("Box '$key' opened successfully.");
    } catch (e, stackTrace) {
      print("Failed to open box '$key'. $e, $stackTrace");
      rethrow;
    } finally {
      completer.complete();
      _boxOpeningCompleters.remove(key);
    }
  }

  static Box<T> getBox<T extends HiveObject>(String key) {
    if (!_boxes.containsKey(key)) {
      print("Box with key '$key' is not opened yet.");
      throw Exception("Box with key '$key' is not opened yet.");
    }
    return _boxes[key]! as Box<T>;
  }

  static Future<bool> closeBox<T extends HiveObject>(String key) async {
    if (!_boxes.containsKey(key)) {
      print("Box with key '$key' is not opened yet.");
      return false;
    }
    try {
      await (_boxes[key]! as Box<T>).close();
      _boxes.remove(key);
      print("Box '$key' closed successfully.");
      return true;
    } catch (e, stackTrace) {
      print("Failed to close box '$key'. $e, $stackTrace");
      return false;
    }
  }

  static Future<void> closeAll() async {
    try {
      await Future.wait(_boxes.values.map((box) => box.close()));
      _boxes.clear();
      print("All boxes closed successfully.");
    } catch (e, stackTrace) {
      print("Failed to close all boxes. $e, $stackTrace");
    }
  }

  static Box<FavoriteBox> get favoriteBox => getBox<FavoriteBox>(HiveKeys.favorites);
  static Box<CharacterBox> get characterBox => getBox<CharacterBox>(HiveKeys.character);

  static bool isBoxOpen(String key) => _boxes.containsKey(key);

}

