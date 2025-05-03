part of 'character.dart';

@freezed
class CharacterOrigin with _$CharacterOrigin {
  const factory CharacterOrigin({
    required String name,
    required String url,
  }) = _CharacterOrigin;
}