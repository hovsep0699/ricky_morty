part of 'character_location_box.dart';

class CharacterLocationBoxAdapter extends TypeAdapter<CharacterLocationBox> {
  @override
  CharacterLocationBox read(BinaryReader reader) {
    return CharacterLocationBox(name: reader.readString(), url: reader.readString());
  }

  @override
  int get typeId => HiveTypes.characterLocationTypeId;

  @override
  void write(BinaryWriter writer, CharacterLocationBox obj) {
    writer.writeString(obj.name);
    writer.writeString(obj.url);
  }
}
