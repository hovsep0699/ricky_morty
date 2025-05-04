import 'package:hive/hive.dart';

import '../../../core/extensions/hive_extension.dart';
import '../../../domain/entity/character.dart';
import '../../utils/hive_types.dart';
import 'character_details_box.dart';


part 'character_info_box.dart';
part 'character_info_box_adapter.dart';
part 'character_box_adapter.dart';




class CharacterBox extends HiveObject {
   CharacterBox({
    required this.info,
    required this.results
  });

  CharacterInfoBox info;

  List<CharacterDetailsBox> results;
}

