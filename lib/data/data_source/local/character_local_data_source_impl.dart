import 'package:dartz/dartz.dart';

import '../../../core/utils/request_manager.dart';
import '../../../domain/entity/character.dart';
import '../../dao/character_dao.dart';
import '../../mapper/character_mapper.dart';
import '../../model/local/character_details_box.dart';
import 'character_local_data_source.dart';

class CharacterLocalDataSourceImpl implements CharacterLocalDataSource {
  const CharacterLocalDataSourceImpl(this.characterDAO);

  final CharacterDAO characterDAO;

  @override
  Future<Either<Exception, void>> addToFavorites(CharacterDetails details) async {
    final mapper = CharacterMapper();
    return RequestManager.requestLocal<void, void>(
      onRequest: () => characterDAO.saveCharacter(mapper.convert<CharacterDetails, CharacterDetailsBox>(details)),
      onConvert: (response) => response,
    );
  }

  @override
  Future<Either<Exception, List<CharacterDetails>>> getAllFavorites() async {
    final mapper = CharacterMapper();
    return RequestManager.requestLocal<List<CharacterDetails>, List<CharacterDetailsBox>>(
      onRequest: ()  => characterDAO.getAllCharacters(),
      onConvert: (response) => response.map((res) => mapper.convert<CharacterDetailsBox, CharacterDetails>(res)).toList(),
    );
  }

  @override
  Future<Either<Exception, CharacterDetails?>> getFavorite(int id) async {
    final mapper = CharacterMapper();
    return RequestManager.requestLocal(
      onRequest: () => characterDAO.getCharacterById(id),
      onConvert: (response) => mapper.convert<CharacterDetailsBox, CharacterDetails>(response),
    );
  }

  @override
  Future<Either<Exception, void>> removeFavorite(int id) async {
    return RequestManager.requestLocal<void, void>(
      onRequest: () => characterDAO.deleteCharacter(id),
      onConvert: (response) => response,
    );
  }
}
