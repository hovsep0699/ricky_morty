part of 'character.dart';

@freezed
class CharacterDetails with _$CharacterDetails {
  const factory CharacterDetails({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required CharacterOrigin origin,
    required CharacterLocation location,
    required String image,
    required List<String> episode,
    required String url,
    required String created
  }) = _CharacterDetails;
}