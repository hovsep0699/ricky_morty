import '../model/local/character_details_box.dart';

abstract class CharacterDAO {
  Future<void> saveCharacter(CharacterDetailsBox characterDetails);
  Future<CharacterDetailsBox?> getCharacterById(int id);
  Future<List<CharacterDetailsBox>> getAllCharacters();
  Future<void> deleteCharacter(int id);
}
