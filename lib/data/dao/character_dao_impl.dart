
import 'package:hive/hive.dart';

import '../model/local/character_details_box.dart';
import 'character_dao.dart';

class CharacterDaoImpl implements CharacterDAO {
  CharacterDaoImpl(this._characterBox);
  final Box<CharacterDetailsBox> _characterBox;

  @override
  Future<void> saveCharacter(CharacterDetailsBox characterDetails) async {
    await _characterBox.put(characterDetails.id, characterDetails);
  }

  @override
  Future<CharacterDetailsBox?> getCharacterById(int id) async {
    return _characterBox.get(id);
  }

  @override
  Future<List<CharacterDetailsBox>> getAllCharacters() async {
    return _characterBox.values.toList();
  }

  @override
  Future<void> deleteCharacter(int id) async {
    await _characterBox.delete(id);
  }
}