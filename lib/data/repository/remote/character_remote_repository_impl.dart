import 'package:dartz/dartz.dart';

import '../../../domain/entity/character.dart';
import '../../../domain/repository/remote/character_remote_repository.dart';
import '../../data_source/remote/character_remote_data_source.dart';

class CharacterRemoteRepositoryImpl implements CharacterRemoteRepository {
  CharacterRemoteRepositoryImpl(this.characterDataSource);

  final CharacterRemoteDataSource characterDataSource;

  @override
  Future<Either<Exception, Character>> getCharacters(int page) async =>
      characterDataSource.getCharacters(page);
}
