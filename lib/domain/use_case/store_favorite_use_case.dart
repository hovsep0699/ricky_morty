import 'package:dartz/dartz.dart';

import '../entity/character.dart';
import '../repository/local/favorite_local_repository.dart';

class StoreFavoriteUseCase {
  const StoreFavoriteUseCase(this.favoriteLocalRepository);

  final FavoriteLocalRepository favoriteLocalRepository;

  Future<Either<Exception, void>> call(CharacterDetails details) async =>
      favoriteLocalRepository.addToFavorites(details);
}
