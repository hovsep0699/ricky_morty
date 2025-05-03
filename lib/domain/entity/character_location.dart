part of 'character.dart';

@freezed
class CharacterLocation with _$CharacterLocation {
  const factory CharacterLocation({
    required String name,
    required String url,
  }) = _CharacterLocation;
}