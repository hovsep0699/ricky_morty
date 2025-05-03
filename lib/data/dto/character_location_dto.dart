part of 'character_dto.dart';

@freezed
class CharacterLocationDto with _$CharacterLocationDto  {
  const factory CharacterLocationDto({
    required String name,
    required String url,
  }) = _CharacterLocationDto;

  factory CharacterLocationDto.fromJson(Map<String, dynamic> json) => _$CharacterLocationDtoFromJson(json);
}
