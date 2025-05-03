part of 'character_details_box.dart';

@HiveType(typeId: 2)
class CharacterLocationBox extends HiveObject{

  CharacterLocationBox({required this.name, required this.url});

  @HiveField(0)
  final String name;

  @HiveField(1)
  final String url;
}