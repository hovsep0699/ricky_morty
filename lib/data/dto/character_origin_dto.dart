part of 'character_dto.dart';

@freezed
class CharacterOriginDto with _$CharacterOriginDto  {
  const factory CharacterOriginDto({
    required String name,
    required String url,
  }) = _CharacterOriginDto;

  factory CharacterOriginDto.fromJson(Map<String, dynamic> json) => _$CharacterOriginDtoFromJson(json);
}
