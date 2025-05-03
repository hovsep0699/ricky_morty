import 'package:dartz/dartz.dart';

import '../repository/local/favorite_local_repository.dart';

class DeleteFavoriteUseCase {
  const DeleteFavoriteUseCase(this.favoriteLocalRepository);

  final FavoriteLocalRepository favoriteLocalRepository;

  Future<Either<Exception, void>> call(int id) async =>
      favoriteLocalRepository.removeFavorite(id);
}
