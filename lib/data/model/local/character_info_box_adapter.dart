part of 'character_box.dart';

class CharacterInfoBoxAdapter extends TypeAdapter<CharacterInfoBox> {
  @override
  CharacterInfoBox read(BinaryReader reader) {
    return CharacterInfoBox(
      count: reader.readInt(),
      pages: reader.readInt(),
      next: reader.readNullableString(),
      prev: reader.readNullableString()
    );
  }

  @override
  int get typeId => HiveTypes.characterInfoTypeId;

  @override
  void write(BinaryWriter writer, CharacterInfoBox obj) {
    writer.writeInt(obj.count);
    writer.writeInt(obj.pages);
    writer.writeNullableString(obj.next);
    writer.writeNullableString(obj.prev);
  }
}
