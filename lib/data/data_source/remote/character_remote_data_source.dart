import 'package:dartz/dartz.dart';

import '../../../domain/entity/character.dart';


abstract interface class CharacterRemoteDataSource {
  Future<Either<Exception, Character>> getCharacters();
}
