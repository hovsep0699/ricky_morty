part of 'character_box.dart';


@HiveType(typeId: 0)
class CharacterInfoBox extends HiveObject {
  CharacterInfoBox({
    required this.count,
    required this.pages,
    required this.next,
    this.prev,
  });

  @HiveField(0)
  int count;

  @HiveField(1)
  int pages;

  @HiveField(2)
  String? next;

  @HiveField(3)
  String? prev;
}
