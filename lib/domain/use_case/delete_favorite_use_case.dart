import 'package:dartz/dartz.dart';

import '../entity/character.dart';
import '../repository/local/character_local_repository.dart';

class DeleteFavoriteUseCase {
  const DeleteFavoriteUseCase(this.characterLocalRepository);

  final CharacterLocalRepository characterLocalRepository;

  Future<Either<Exception, void>> call(int id) async =>
      characterLocalRepository.removeFavorite(id);
}
