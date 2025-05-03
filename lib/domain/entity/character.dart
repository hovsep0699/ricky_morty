import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';
part 'character_details.dart';
part 'character_info.dart';
part 'character_location.dart';
part 'character_origin.dart';


@freezed
class Character with _$Character {
  const factory Character({
    required CharacterInfo info,
    required List<CharacterDetails> results
  }) = _Character;
}
