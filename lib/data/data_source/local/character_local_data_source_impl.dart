import 'package:dartz/dartz.dart';

import '../../../core/utils/request_manager.dart';
import '../../../domain/entity/character.dart';
import '../../dao/character_dao.dart';
import '../../mapper/character_hive_mapper.dart';
import '../../model/local/character_box.dart';
import 'character_local_data_source.dart';

class CharacterLocalDataSourceImpl implements CharacterLocalDataSource {
  CharacterLocalDataSourceImpl(this.characterDAO);

  final CharacterDAO characterDAO;
  final _mapper = CharacterHiveMapper();

  @override
  Future<Either<Exception, Character?>> getCharacter(int page) async {
    return RequestManager.requestLocal<Character?, CharacterBox>(
      onRequest: () => characterDAO.getCharacter(page),
      onConvert:
          (response) =>
              response == null ? null : _mapper.convert<CharacterBox, Character>(response),
    );
  }

  @override
  Future<Either<Exception, void>> storeCharacter(Character character, int page) async {
    return RequestManager.requestLocal<void, void>(
      onRequest:
          () => characterDAO.storeCharacter(_mapper.convert<Character, CharacterBox>(character), page),
      onConvert: (response) => response,
    );
  }
}
