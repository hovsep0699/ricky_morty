import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';

import '../../domain/entity/character.dart';
import '../model/local/character_box.dart';
import '../model/local/character_details_box.dart';
import '../model/local/favorite_box.dart';
import 'character_hive_mapper.auto_mappr.dart';

@AutoMappr([
  MapType<CharacterInfo, CharacterInfoBox>(),
  MapType<CharacterInfoBox, CharacterInfo>(),
  MapType<Character, CharacterBox>(),
  MapType<CharacterBox, Character>(),
  MapType<CharacterDetails, CharacterDetailsBox>(),
  MapType<CharacterDetailsBox, CharacterDetails>(),
  MapType<CharacterDetails, FavoriteBox>(),
  MapType<FavoriteBox, CharacterDetails>(),
  MapType<CharacterLocation, CharacterLocationBox>(),
  MapType<CharacterLocationBox, CharacterLocation>(),
  MapType<CharacterOrigin, CharacterOriginBox>(),
  MapType<CharacterOriginBox, CharacterOrigin>(),
])
class CharacterHiveMapper extends $CharacterHiveMapper {}
