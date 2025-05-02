import 'package:dartz/dartz.dart';

import '../entity/character.dart';
import '../repository/remote/character_remote_repository.dart';

class GetCharactersUseCase {
  const GetCharactersUseCase(this.characterRemoteRepository);

  final CharacterRemoteRepository characterRemoteRepository;

  Future<Either<Exception, Character>> call() async => characterRemoteRepository.getCharacters();
}
