import 'package:dartz/dartz.dart';

import '../../../core/constants/constants.dart';
import '../../../core/exceptions/exceptions.dart';
import '../../../core/extensions/either_extension.dart';
import '../../../core/utils/request_manager.dart';
import '../../../domain/entity/character.dart';
import '../../../network/constants/api_errors.dart';
import '../../../network/service/character_service.dart';
import '../../dto/character_dto.dart';
import '../../dto/error_dto.dart';
import '../../mapper/character_mapper.dart';
import 'character_remote_data_source.dart';

class CharacterRemoteDataSourceImpl implements CharacterRemoteDataSource {
  CharacterRemoteDataSourceImpl(this.characterService);

  CharacterService characterService;

  @override
  Future<Either<Exception, Character?>> getCharacters(int page) async {
    final mapper = CharacterMapper();
    return RequestManager.request(
      onErrorHandle: (response) {
        if (response.error != null) {
          final errorDto = ErrorDto.fromJson(response.error! as Map<String, dynamic>);
          if (errorDto.message == ApiErrors.noAvailableData) {
            return false;
          }
          return true;
        }
        return true;
      },
      onRequest: () => characterService.getCharacters(page: page),
      onConvert: (response) => mapper.convert<CharacterDto, Character>(response),
    );
  }
}
