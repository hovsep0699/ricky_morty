import 'package:dartz/dartz.dart';

import '../entity/character.dart';
import '../repository/local/character_local_repository.dart';

class StoreFavoriteUseCase {
  const StoreFavoriteUseCase(this.characterLocalRepository);

  final CharacterLocalRepository characterLocalRepository;

  Future<Either<Exception, void>> call(CharacterDetails details) async =>
      characterLocalRepository.addToFavorites(details);
}
