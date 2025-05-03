// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterDtoImpl _$$CharacterDtoImplFromJson(Map<String, dynamic> json) =>
    _$CharacterDtoImpl(
      info: CharacterInfoDto.fromJson(json['info'] as Map<String, dynamic>),
      results:
          (json['results'] as List<dynamic>)
              .map(
                (e) => CharacterDetailsDto.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
    );

Map<String, dynamic> _$$CharacterDtoImplToJson(_$CharacterDtoImpl instance) =>
    <String, dynamic>{'info': instance.info, 'results': instance.results};

_$CharacterDetailsDtoImpl _$$CharacterDetailsDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CharacterDetailsDtoImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  status: json['status'] as String,
  species: json['species'] as String,
  type: json['type'] as String,
  gender: json['gender'] as String,
  origin: CharacterOriginDto.fromJson(json['origin'] as Map<String, dynamic>),
  location: CharacterLocationDto.fromJson(
    json['location'] as Map<String, dynamic>,
  ),
  image: json['image'] as String,
  episode: (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
  url: json['url'] as String,
  created: json['created'] as String,
);

Map<String, dynamic> _$$CharacterDetailsDtoImplToJson(
  _$CharacterDetailsDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'status': instance.status,
  'species': instance.species,
  'type': instance.type,
  'gender': instance.gender,
  'origin': instance.origin,
  'location': instance.location,
  'image': instance.image,
  'episode': instance.episode,
  'url': instance.url,
  'created': instance.created,
};

_$CharacterInfoDtoImpl _$$CharacterInfoDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CharacterInfoDtoImpl(
  count: (json['count'] as num).toInt(),
  pages: (json['pages'] as num).toInt(),
  next: json['next'] as String,
  prev: json['prev'] as String?,
);

Map<String, dynamic> _$$CharacterInfoDtoImplToJson(
  _$CharacterInfoDtoImpl instance,
) => <String, dynamic>{
  'count': instance.count,
  'pages': instance.pages,
  'next': instance.next,
  'prev': instance.prev,
};

_$CharacterLocationDtoImpl _$$CharacterLocationDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CharacterLocationDtoImpl(
  name: json['name'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$$CharacterLocationDtoImplToJson(
  _$CharacterLocationDtoImpl instance,
) => <String, dynamic>{'name': instance.name, 'url': instance.url};

_$CharacterOriginDtoImpl _$$CharacterOriginDtoImplFromJson(
  Map<String, dynamic> json,
) => _$CharacterOriginDtoImpl(
  name: json['name'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$$CharacterOriginDtoImplToJson(
  _$CharacterOriginDtoImpl instance,
) => <String, dynamic>{'name': instance.name, 'url': instance.url};
