

import 'package:hive/hive.dart';

class CharacterOriginBox extends HiveObject {

  CharacterOriginBox({required this.name, required this.url});

  final String name;

  final String url;
}
