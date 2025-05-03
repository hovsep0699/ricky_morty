import '../model/local/character_box.dart';
import '../utils/hive_manager.dart';
import 'character_dao.dart';

class CharacterDaoImpl implements CharacterDAO {
  CharacterDaoImpl();

  @override
  Future<void> storeCharacter(CharacterBox character) async {
    await HiveManager.characterBox.clear();
    await HiveManager.characterBox.add(character);
  }

  @override
  Future<CharacterBox?> getCharacter() async {
    return HiveManager.characterBox.getAt(0);
  }
}
