import 'package:dartz/dartz.dart';

import '../../../domain/entity/character.dart';

abstract interface class CharacterLocalDataSource {
  Future<Either<Exception, Character?>> getCharacter(int page);
  Future<Either<Exception, void>> storeCharacter(Character details, int page);
}