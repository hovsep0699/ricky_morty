import '../model/local/character_box.dart';

abstract class CharacterDAO {
  Future<void> storeCharacter(CharacterBox character);
  Future<CharacterBox?> getCharacter();
}
