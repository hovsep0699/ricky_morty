part of 'character.dart';

@freezed
class CharacterInfo with _$CharacterInfo {
  const factory CharacterInfo({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _CharacterInfo;
}