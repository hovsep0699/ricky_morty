import '../model/local/character_box.dart';
import '../utils/hive_manager.dart';
import 'character_dao.dart';

class CharacterDaoImpl implements CharacterDAO {
  CharacterDaoImpl();

  @override
  Future<void> storeCharacter(CharacterBox character, int page) async {
    final box = await getCharacter(page);
    if (box != null) {
      return ;
    }
    await HiveManager.characterBox.put(page, character);
  }

  @override
  Future<CharacterBox?> getCharacter(int page) async {
    if (HiveManager.characterBox.isEmpty) {
      return null;
    }
    if (!HiveManager.characterBox.containsKey(page)) {
      return null;
    }
    return HiveManager.characterBox.get(page);
  }
}
