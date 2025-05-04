import 'package:hive/hive.dart';

import '../../utils/hive_types.dart';

part 'character_location_box_adapter.dart';

class CharacterLocationBox extends HiveObject {

  CharacterLocationBox({required this.name, required this.url});

  final String name;

  final String url;
}
