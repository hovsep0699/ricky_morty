import 'package:dartz/dartz.dart';

import '../../../domain/entity/character.dart';
import '../../../domain/repository/local/favorite_local_repository.dart';
import '../../data_source/local/favorite_local_data_source.dart';

class FavoriteLocalRepositoryImpl implements FavoriteLocalRepository {
  const FavoriteLocalRepositoryImpl(this.favoriteLocalDataSource);

  final FavoriteLocalDataSource favoriteLocalDataSource;

  @override
  Future<Either<Exception, void>> addToFavorites(CharacterDetails details) async =>
      favoriteLocalDataSource.addToFavorites(details);

  @override
  Future<Either<Exception, List<CharacterDetails>>> getAllFavorites() async =>
      favoriteLocalDataSource.getAllFavorites();

  @override
  Future<Either<Exception, CharacterDetails?>> getFavorite(int id) async =>
      favoriteLocalDataSource.getFavorite(id);

  @override
  Future<Either<Exception, void>> removeFavorite(int id) async =>
      favoriteLocalDataSource.removeFavorite(id);
}
