part of 'character_details_box.dart';

class CharacterDetailsBoxAdapter extends TypeAdapter<CharacterDetailsBox> {
  final originAdapter = CharacterOriginBoxAdapter();
  final locationAdapter = CharacterLocationBoxAdapter();

  @override
  CharacterDetailsBox read(BinaryReader reader) {
    return CharacterDetailsBox(
      id: reader.readInt(),
      name: reader.readString(),
      status: reader.readString(),
      species: reader.readString(),
      type: reader.readString(),
      gender: reader.readString(),
      origin: originAdapter.read(reader),
      location: locationAdapter.read(reader),
      image: reader.readString(),
      episode: reader.readStringList(),
      url: reader.readString(),
      created: reader.readString(),
    );
  }

  @override
  int get typeId => HiveTypes.characterDetailsTypeId;

  @override
  void write(BinaryWriter writer, CharacterDetailsBox obj) {

    writer.writeInt(obj.id);
    writer.writeString(obj.name);
    writer.writeString(obj.status);
    writer.writeString(obj.species);
    writer.writeString(obj.type);
    writer.writeString(obj.gender);
    originAdapter.write(writer, obj.origin);
    locationAdapter.write(writer, obj.location);
    writer.writeString(obj.image);
    writer.writeStringList(obj.episode);
    writer.writeString(obj.url);
    writer.writeString(obj.created);
  }
}
