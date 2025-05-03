import 'package:hive/hive.dart';

import 'character_details_box.dart';
part 'favorite_box.g.dart';

@HiveType(typeId: 3)
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
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String status;

  @HiveField(3)
  String species;

  @HiveField(4)
  String type;

  @HiveField(5)
  String gender;

  @HiveField(6)
  CharacterOriginBox origin;

  @HiveField(7)
  CharacterLocationBox location;

  @HiveField(8)
  String image;

  @HiveField(9)
  List<String> episode;

  @HiveField(10)
  String url;

  @HiveField(11)
  String created;
}
