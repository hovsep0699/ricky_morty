import 'package:hive/hive.dart';

import '../../utils/hive_types.dart';
import 'character_details_box.dart';
import 'character_location_box.dart';
import 'character_origin_box.dart';
part 'favorite_box_adapter.dart';

class FavoriteBox extends HiveObject {
  FavoriteBox({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });
  int id;

  String name;

  String status;

  String species;

  String type;

  String gender;

  CharacterOriginBox origin;

  CharacterLocationBox location;

  String image;

  List<String> episode;

  String url;

  String created;
}
