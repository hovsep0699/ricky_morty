import 'package:dartz/dartz.dart';

import '../../entity/character.dart';

abstract interface class CharacterLocalRepository {
  Future<Either<Exception, Character?>> getCharacter();
  Future<Either<Exception, void>> storeCharacter(Character character);
}
