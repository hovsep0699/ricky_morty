part of 'character_dto.dart';

@freezed
class CharacterDetailsDto with _$CharacterDetailsDto {
  const factory CharacterDetailsDto({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required CharacterOriginDto origin,
    required CharacterLocationDto location,
    required String image,
    required List<String> episode,
    required String url,
    required String created
  }) = _CharacterDetailsDto;

  factory CharacterDetailsDto.fromJson(Map<String, dynamic> json) => _$CharacterDetailsDtoFromJson(json);

}
