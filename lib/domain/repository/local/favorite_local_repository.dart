import 'package:dartz/dartz.dart';

import '../../entity/character.dart';

abstract interface class FavoriteLocalRepository {
  Future<Either<Exception, CharacterDetails?>> getFavorite(int id);
  Future<Either<Exception, void>> addToFavorites(CharacterDetails details);
  Future<Either<Exception, void>> removeFavorite(int id);
  Future<Either<Exception, List<CharacterDetails>>> getAllFavorites();
}
