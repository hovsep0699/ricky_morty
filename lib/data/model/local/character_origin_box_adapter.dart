part of 'character_details_box.dart';

class CharacterOriginBoxAdapter extends TypeAdapter<CharacterOriginBox> {
  @override
  CharacterOriginBox read(BinaryReader reader) {
    return CharacterOriginBox(name: reader.readString(), url: reader.readString());
  }

  @override
  int get typeId => HiveTypes.characterOriginTypeId;

  @override
  void write(BinaryWriter writer, CharacterOriginBox obj) {
    writer.writeString(obj.name);
    writer.writeString(obj.url);
  }
}
