import 'package:dartz/dartz.dart';

import '../entity/character.dart';
import '../repository/local/character_local_repository.dart';

class GetCachedCharacterUseCase {
  const GetCachedCharacterUseCase(this.characterLocalRepository);

  final CharacterLocalRepository characterLocalRepository;

  Future<Either<Exception, Character?>> call() async => characterLocalRepository.getCharacter();
}
