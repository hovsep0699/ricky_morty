part of 'character_box.dart';

class CharacterBoxAdapter extends TypeAdapter<CharacterBox> {
  @override
  final int typeId = HiveTypes.characterTypeId;

  final CharacterInfoBoxAdapter infoBoxAdapter = CharacterInfoBoxAdapter();
  final CharacterDetailsBoxAdapter characterDetailsBoxAdapter = CharacterDetailsBoxAdapter();

  @override
  CharacterBox read(BinaryReader reader) {
    return CharacterBox(
      info: infoBoxAdapter.read(reader),
      results: reader.readListWithAdapter<CharacterDetailsBox, CharacterDetailsBoxAdapter>(
        characterDetailsBoxAdapter,
      ),
    );
  }

  @override
  void write(BinaryWriter writer, CharacterBox obj) {
    infoBoxAdapter.write(writer, obj.info);
    writer.writeListWithAdapter<CharacterDetailsBox, CharacterDetailsBoxAdapter>(
      characterDetailsBoxAdapter,
      obj.results,
    );
  }
}
