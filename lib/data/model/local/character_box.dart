import 'package:hive/hive.dart';

import 'character_details_box.dart';


part 'character_info_box.dart';
part 'character_box.g.dart';


@HiveType(typeId: 5)
class CharacterBox extends HiveObject {
   CharacterBox({
    required this.info,
    required this.results
  });

  @HiveField(0)
  CharacterInfoBox info;

  @HiveField(1)
  List<CharacterDetailsBox> results;
}
