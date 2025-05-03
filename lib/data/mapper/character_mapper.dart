import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../domain/entity/character.dart';
import '../dto/character_dto.dart';
import 'character_mapper.auto_mappr.dart';


@AutoMappr([
  MapType<CharacterDto, Character>(),
  MapType<CharacterInfoDto, CharacterInfo>(),
  MapType<CharacterDetailsDto, CharacterDetails>(),
  MapType<CharacterLocationDto, CharacterLocation>(),
  MapType<CharacterOriginDto, CharacterOrigin>(),
])
class CharacterMapper extends $CharacterMapper {}