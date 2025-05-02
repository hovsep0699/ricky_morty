import 'package:dartz/dartz.dart';

import '../../../domain/entity/character.dart';
import '../../../domain/repository/local/character_local_repository.dart';
import '../../data_source/local/character_local_data_source.dart';

class CharacterLocalRepositoryImpl implements CharacterLocalRepository {
  const CharacterLocalRepositoryImpl(this.characterLocalDataSource);

  final CharacterLocalDataSource characterLocalDataSource;

  @override
  Future<Either<Exception, void>> addToFavorites(CharacterDetails details) =>
      characterLocalDataSource.addToFavorites(details);

  @override
  Future<Either<Exception, List<CharacterDetails>>> getAllFavorites() =>
      characterLocalDataSource.getAllFavorites();

  @override
  Future<Either<Exception, CharacterDetails?>> getFavorite(int id) =>
      characterLocalDataSource.getFavorite(id);

  @override
  Future<Either<Exception, void>> removeFavorite(int id) =>
      characterLocalDataSource.removeFavorite(id);
}
