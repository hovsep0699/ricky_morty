import 'package:dartz/dartz.dart';

import '../../../domain/entity/character.dart';
import '../../../domain/repository/local/character_local_repository.dart';
import '../../data_source/local/character_local_data_source.dart';

class CharacterLocalRepositoryImpl implements CharacterLocalRepository {
  const CharacterLocalRepositoryImpl(this.characterLocalDataSource);

  final CharacterLocalDataSource characterLocalDataSource;

  @override
  Future<Either<Exception, void>> storeCharacter(Character character) =>
      characterLocalDataSource.storeCharacter(character);

  @override
  Future<Either<Exception, Character?>> getCharacter() =>
      characterLocalDataSource.getCharacter();
}
