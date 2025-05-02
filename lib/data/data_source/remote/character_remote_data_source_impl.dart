import 'package:dartz/dartz.dart';

import '../../../core/utils/request_manager.dart';
import '../../../domain/entity/character.dart';
import '../../../network/service/character_service.dart';
import '../../dto/character_dto.dart';
import '../../mapper/character_mapper.dart';
import 'character_remote_data_source.dart';

class CharacterRemoteDataSourceImpl implements CharacterRemoteDataSource {
  CharacterRemoteDataSourceImpl(this.characterService);

  CharacterService characterService;

  @override
  Future<Either<Exception, Character>> getCharacters() async {
    final mapper = CharacterMapper();
    return RequestManager.request(
        onRequest: () => characterService.getCharacters(),
        onConvert: (response) => mapper.convert<CharacterDto, Character>(response));
  }
}
