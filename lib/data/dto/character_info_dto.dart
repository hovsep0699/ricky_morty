part of 'character_dto.dart';

@freezed
class CharacterInfoDto with _$CharacterInfoDto {
  const factory CharacterInfoDto({
    required int count,
    required int pages,
    required String? next,
    String? prev,
  }) = _CharacterInfoDto;

  factory CharacterInfoDto.fromJson(Map<String, dynamic> json) => _$CharacterInfoDtoFromJson(json);
}
