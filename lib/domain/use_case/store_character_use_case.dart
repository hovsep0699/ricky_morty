import 'package:dartz/dartz.dart';

import '../entity/character.dart';
import '../repository/local/character_local_repository.dart';

class StoreCharacterUseCase {
  const StoreCharacterUseCase(this.characterLocalRepository);

  final CharacterLocalRepository characterLocalRepository;

  Future<Either<Exception, void>> call(Character character) async => characterLocalRepository.storeCharacter(character);
}
