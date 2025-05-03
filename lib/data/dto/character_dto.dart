import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_dto.freezed.dart';

part 'character_dto.g.dart';

part 'character_details_dto.dart';

part 'character_info_dto.dart';

part 'character_location_dto.dart';

part 'character_origin_dto.dart';

@freezed
class CharacterDto with _$CharacterDto{
  const factory CharacterDto(
      {required CharacterInfoDto info, required List<CharacterDetailsDto> results}) = _CharacterDto;

  factory CharacterDto.fromJson(Map<String, dynamic> json) => _$CharacterDtoFromJson(json);
}
