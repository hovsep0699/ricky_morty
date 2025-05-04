part of 'character_box.dart';


class CharacterInfoBox extends HiveObject {
  CharacterInfoBox({
    required this.count,
    required this.pages,
    required this.next,
    this.prev,
  });

  int count;

  int pages;

  String? next;

  String? prev;
}
