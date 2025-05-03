import 'package:dartz/dartz.dart';

import '../../../domain/entity/character.dart';

abstract interface class CharacterLocalDataSource {
  Future<Either<Exception, Character?>> getCharacter();
  Future<Either<Exception, void>> storeCharacter(Character details);
}