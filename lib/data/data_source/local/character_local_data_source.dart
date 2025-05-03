import 'package:dartz/dartz.dart';

import '../../../domain/entity/character.dart';

abstract interface class CharacterLocalDataSource {
  Future<Either<Exception, CharacterDetails?>> getFavorite(int id);
  Future<Either<Exception, void>> addToFavorites(CharacterDetails details);
  Future<Either<Exception, void>> removeFavorite(int id);
  Future<Either<Exception, List<CharacterDetails>>> getAllFavorites();
}