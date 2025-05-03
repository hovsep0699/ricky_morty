import 'package:dartz/dartz.dart';

import '../entity/character.dart';
import '../repository/local/favorite_local_repository.dart';

class GetFavoritesUseCase {
  const GetFavoritesUseCase(this.favoriteLocalRepository);

  final FavoriteLocalRepository favoriteLocalRepository;

  Future<Either<Exception, List<CharacterDetails>>> call() async =>
      favoriteLocalRepository.getAllFavorites();

  Future<Either<Exception, CharacterDetails?>> getFavorite(int id) async =>
      favoriteLocalRepository.getFavorite(id);
}
