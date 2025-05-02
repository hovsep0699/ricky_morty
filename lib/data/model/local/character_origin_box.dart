part of 'character_details_box.dart';

@HiveType(typeId: 3)
class CharacterOriginBox extends HiveObject {

  CharacterOriginBox({required this.name, required this.url});

  @HiveField(0)
  final String name;

  @HiveField(1)
  final String url;
}
