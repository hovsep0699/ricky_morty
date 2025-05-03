// data/services/auth_service.dart

import 'package:chopper/chopper.dart';

import '../../data/dto/character_dto.dart';

import '../constants/api_constants.dart';

part 'character_service.chopper.dart';

@ChopperApi()
abstract class CharacterService extends ChopperService {
  @GET(path: ApiConstants.character)
  Future<Response<CharacterDto>> getCharacters({@Query('page') int page = 1});

  static CharacterService create([ChopperClient? client]) => _$CharacterService(client);
}
