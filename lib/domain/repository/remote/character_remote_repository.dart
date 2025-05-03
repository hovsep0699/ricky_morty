import 'package:dartz/dartz.dart';

import '../../entity/character.dart';

abstract interface class CharacterRemoteRepository {
  Future<Either<Exception, Character>> getCharacters(int page);

}
