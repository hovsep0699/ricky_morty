import 'package:dartz/dartz.dart';

import '../entity/character.dart';
import '../repository/local/character_local_repository.dart';

class GetFavoritesUseCase {
  const GetFavoritesUseCase(this.characterLocalRepository);

  final CharacterLocalRepository characterLocalRepository;

  Future<Either<Exception, List<CharacterDetails>>> call() async =>
      characterLocalRepository.getAllFavorites();

  Future<Either<Exception, CharacterDetails?>> getFavorite(int id) async =>
      characterLocalRepository.getFavorite(id);
}
