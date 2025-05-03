// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../domain/entity/character.dart' as _i3;
import '../dto/character_dto.dart' as _i2;
import '../model/local/character_details_box.dart' as _i4;

/// {@template package:ricky_morty/data/mapper/character_mapper.dart}
/// Available mappings:
/// - `CharacterDto` → `Character`.
/// - `CharacterInfoDto` → `CharacterInfo`.
/// - `CharacterDetailsDto` → `CharacterDetails`.
/// - `CharacterLocationDto` → `CharacterLocation`.
/// - `CharacterOriginDto` → `CharacterOrigin`.
/// - `CharacterDetails` → `CharacterDetailsBox`.
/// - `CharacterDetailsBox` → `CharacterDetails`.
/// - `CharacterLocation` → `CharacterLocationBox`.
/// - `CharacterLocationBox` → `CharacterLocation`.
/// - `CharacterOrigin` → `CharacterOriginBox`.
/// - `CharacterOriginBox` → `CharacterOrigin`.
/// {@endtemplate}
class $CharacterMapper implements _i1.AutoMapprInterface {
  const $CharacterMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:ricky_morty/data/mapper/character_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.CharacterDto>() ||
            sourceTypeOf == _typeOf<_i2.CharacterDto?>()) &&
        (targetTypeOf == _typeOf<_i3.Character>() ||
            targetTypeOf == _typeOf<_i3.Character?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i2.CharacterInfoDto>() ||
            sourceTypeOf == _typeOf<_i2.CharacterInfoDto?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterInfo>() ||
            targetTypeOf == _typeOf<_i3.CharacterInfo?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i2.CharacterDetailsDto>() ||
            sourceTypeOf == _typeOf<_i2.CharacterDetailsDto?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterDetails>() ||
            targetTypeOf == _typeOf<_i3.CharacterDetails?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i2.CharacterLocationDto>() ||
            sourceTypeOf == _typeOf<_i2.CharacterLocationDto?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterLocation>() ||
            targetTypeOf == _typeOf<_i3.CharacterLocation?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i2.CharacterOriginDto>() ||
            sourceTypeOf == _typeOf<_i2.CharacterOriginDto?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterOrigin>() ||
            targetTypeOf == _typeOf<_i3.CharacterOrigin?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.CharacterDetails>() ||
            sourceTypeOf == _typeOf<_i3.CharacterDetails?>()) &&
        (targetTypeOf == _typeOf<_i4.CharacterDetailsBox>() ||
            targetTypeOf == _typeOf<_i4.CharacterDetailsBox?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.CharacterDetailsBox>() ||
            sourceTypeOf == _typeOf<_i4.CharacterDetailsBox?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterDetails>() ||
            targetTypeOf == _typeOf<_i3.CharacterDetails?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.CharacterLocation>() ||
            sourceTypeOf == _typeOf<_i3.CharacterLocation?>()) &&
        (targetTypeOf == _typeOf<_i4.CharacterLocationBox>() ||
            targetTypeOf == _typeOf<_i4.CharacterLocationBox?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.CharacterLocationBox>() ||
            sourceTypeOf == _typeOf<_i4.CharacterLocationBox?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterLocation>() ||
            targetTypeOf == _typeOf<_i3.CharacterLocation?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.CharacterOrigin>() ||
            sourceTypeOf == _typeOf<_i3.CharacterOrigin?>()) &&
        (targetTypeOf == _typeOf<_i4.CharacterOriginBox>() ||
            targetTypeOf == _typeOf<_i4.CharacterOriginBox?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.CharacterOriginBox>() ||
            sourceTypeOf == _typeOf<_i4.CharacterOriginBox?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterOrigin>() ||
            targetTypeOf == _typeOf<_i3.CharacterOrigin?>())) {
      return true;
    }
    if (recursive) {
      for (final mappr in _delegates) {
        if (mappr.canConvert<SOURCE, TARGET>()) {
          return true;
        }
      }
    }
    return false;
  }

  /// {@macro AutoMapprInterface:convert}
  /// {@macro package:ricky_morty/data/mapper/character_mapper.dart}
  @override
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(model)!;
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convert(model)!;
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:tryConvert}
  /// {@macro package:ricky_morty/data/mapper/character_mapper.dart}
  @override
  TARGET? tryConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _safeConvert(model, onMappingError: onMappingError);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvert(model, onMappingError: onMappingError);
      }
    }

    return null;
  }

  /// {@macro AutoMapprInterface:convertIterable}
  /// {@macro package:ricky_morty/data/mapper/character_mapper.dart}
  @override
  Iterable<TARGET> convertIterable<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET>((item) => _convert(item)!);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Iterable.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:ricky_morty/data/mapper/character_mapper.dart}
  @override
  Iterable<TARGET?> tryConvertIterable<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET?>(
        (item) => _safeConvert(item, onMappingError: onMappingError),
      );
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertIterable(model, onMappingError: onMappingError);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertList}
  /// {@macro package:ricky_morty/data/mapper/character_mapper.dart}
  @override
  List<TARGET> convertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into List.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:ricky_morty/data/mapper/character_mapper.dart}
  @override
  List<TARGET?> tryConvertList<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertList(model, onMappingError: onMappingError);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertSet}
  /// {@macro package:ricky_morty/data/mapper/character_mapper.dart}
  @override
  Set<TARGET> convertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Set.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:ricky_morty/data/mapper/character_mapper.dart}
  @override
  Set<TARGET?> tryConvertSet<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertSet(model, onMappingError: onMappingError);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  TARGET? _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.CharacterDto>() ||
            sourceTypeOf == _typeOf<_i2.CharacterDto?>()) &&
        (targetTypeOf == _typeOf<_i3.Character>() ||
            targetTypeOf == _typeOf<_i3.Character?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$CharacterDto_To__i3$Character(
            (model as _i2.CharacterDto?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i2.CharacterInfoDto>() ||
            sourceTypeOf == _typeOf<_i2.CharacterInfoDto?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterInfo>() ||
            targetTypeOf == _typeOf<_i3.CharacterInfo?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$CharacterInfoDto_To__i3$CharacterInfo(
            (model as _i2.CharacterInfoDto?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i2.CharacterDetailsDto>() ||
            sourceTypeOf == _typeOf<_i2.CharacterDetailsDto?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterDetails>() ||
            targetTypeOf == _typeOf<_i3.CharacterDetails?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$CharacterDetailsDto_To__i3$CharacterDetails(
            (model as _i2.CharacterDetailsDto?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i2.CharacterLocationDto>() ||
            sourceTypeOf == _typeOf<_i2.CharacterLocationDto?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterLocation>() ||
            targetTypeOf == _typeOf<_i3.CharacterLocation?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$CharacterLocationDto_To__i3$CharacterLocation(
            (model as _i2.CharacterLocationDto?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i2.CharacterOriginDto>() ||
            sourceTypeOf == _typeOf<_i2.CharacterOriginDto?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterOrigin>() ||
            targetTypeOf == _typeOf<_i3.CharacterOrigin?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$CharacterOriginDto_To__i3$CharacterOrigin(
            (model as _i2.CharacterOriginDto?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.CharacterDetails>() ||
            sourceTypeOf == _typeOf<_i3.CharacterDetails?>()) &&
        (targetTypeOf == _typeOf<_i4.CharacterDetailsBox>() ||
            targetTypeOf == _typeOf<_i4.CharacterDetailsBox?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$CharacterDetails_To__i4$CharacterDetailsBox(
            (model as _i3.CharacterDetails?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.CharacterDetailsBox>() ||
            sourceTypeOf == _typeOf<_i4.CharacterDetailsBox?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterDetails>() ||
            targetTypeOf == _typeOf<_i3.CharacterDetails?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$CharacterDetailsBox_To__i3$CharacterDetails(
            (model as _i4.CharacterDetailsBox?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.CharacterLocation>() ||
            sourceTypeOf == _typeOf<_i3.CharacterLocation?>()) &&
        (targetTypeOf == _typeOf<_i4.CharacterLocationBox>() ||
            targetTypeOf == _typeOf<_i4.CharacterLocationBox?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$CharacterLocation_To__i4$CharacterLocationBox(
            (model as _i3.CharacterLocation?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.CharacterLocationBox>() ||
            sourceTypeOf == _typeOf<_i4.CharacterLocationBox?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterLocation>() ||
            targetTypeOf == _typeOf<_i3.CharacterLocation?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$CharacterLocationBox_To__i3$CharacterLocation(
            (model as _i4.CharacterLocationBox?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.CharacterOrigin>() ||
            sourceTypeOf == _typeOf<_i3.CharacterOrigin?>()) &&
        (targetTypeOf == _typeOf<_i4.CharacterOriginBox>() ||
            targetTypeOf == _typeOf<_i4.CharacterOriginBox?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$CharacterOrigin_To__i4$CharacterOriginBox(
            (model as _i3.CharacterOrigin?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.CharacterOriginBox>() ||
            sourceTypeOf == _typeOf<_i4.CharacterOriginBox?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterOrigin>() ||
            targetTypeOf == _typeOf<_i3.CharacterOrigin?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$CharacterOriginBox_To__i3$CharacterOrigin(
            (model as _i4.CharacterOriginBox?),
          )
          as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  TARGET? _safeConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
    onMappingError,
  }) {
    if (!useSafeMapping<SOURCE, TARGET>()) {
      return _convert(model, canReturnNull: true);
    }
    try {
      return _convert(model, canReturnNull: true);
    } catch (e, s) {
      onMappingError?.call(e, s, model);
      return null;
    }
  }

  /// {@macro AutoMapprInterface:useSafeMapping}
  /// {@macro package:ricky_morty/data/mapper/character_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.Character _map__i2$CharacterDto_To__i3$Character(
    _i2.CharacterDto? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterDto → Character failed because CharacterDto was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterDto, Character> to handle null values during mapping.',
      );
    }
    return _i3.Character(
      info: _map__i2$CharacterInfoDto_To__i3$CharacterInfo(model.info),
      results:
          model.results
              .map<_i3.CharacterDetails>(
                (value) =>
                    _map__i2$CharacterDetailsDto_To__i3$CharacterDetails(value),
              )
              .toList(),
    );
  }

  _i3.CharacterInfo _map__i2$CharacterInfoDto_To__i3$CharacterInfo(
    _i2.CharacterInfoDto? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterInfoDto → CharacterInfo failed because CharacterInfoDto was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterInfoDto, CharacterInfo> to handle null values during mapping.',
      );
    }
    return _i3.CharacterInfo(
      count: model.count,
      pages: model.pages,
      next: model.next,
      prev: model.prev,
    );
  }

  _i3.CharacterDetails _map__i2$CharacterDetailsDto_To__i3$CharacterDetails(
    _i2.CharacterDetailsDto? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterDetailsDto → CharacterDetails failed because CharacterDetailsDto was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterDetailsDto, CharacterDetails> to handle null values during mapping.',
      );
    }
    return _i3.CharacterDetails(
      id: model.id,
      name: model.name,
      status: model.status,
      species: model.species,
      type: model.type,
      gender: model.gender,
      origin: _map__i2$CharacterOriginDto_To__i3$CharacterOrigin(model.origin),
      location: _map__i2$CharacterLocationDto_To__i3$CharacterLocation(
        model.location,
      ),
      image: model.image,
      episode: model.episode,
      url: model.url,
      created: model.created,
    );
  }

  _i3.CharacterLocation _map__i2$CharacterLocationDto_To__i3$CharacterLocation(
    _i2.CharacterLocationDto? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterLocationDto → CharacterLocation failed because CharacterLocationDto was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterLocationDto, CharacterLocation> to handle null values during mapping.',
      );
    }
    return _i3.CharacterLocation(name: model.name, url: model.url);
  }

  _i3.CharacterOrigin _map__i2$CharacterOriginDto_To__i3$CharacterOrigin(
    _i2.CharacterOriginDto? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterOriginDto → CharacterOrigin failed because CharacterOriginDto was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterOriginDto, CharacterOrigin> to handle null values during mapping.',
      );
    }
    return _i3.CharacterOrigin(name: model.name, url: model.url);
  }

  _i4.CharacterDetailsBox _map__i3$CharacterDetails_To__i4$CharacterDetailsBox(
    _i3.CharacterDetails? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterDetails → CharacterDetailsBox failed because CharacterDetails was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterDetails, CharacterDetailsBox> to handle null values during mapping.',
      );
    }
    return _i4.CharacterDetailsBox(
      id: model.id,
      name: model.name,
      status: model.status,
      species: model.species,
      type: model.type,
      gender: model.gender,
      origin: _map__i3$CharacterOrigin_To__i4$CharacterOriginBox(model.origin),
      location: _map__i3$CharacterLocation_To__i4$CharacterLocationBox(
        model.location,
      ),
      image: model.image,
      episode: model.episode,
      url: model.url,
      created: model.created,
    );
  }

  _i3.CharacterDetails _map__i4$CharacterDetailsBox_To__i3$CharacterDetails(
    _i4.CharacterDetailsBox? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterDetailsBox → CharacterDetails failed because CharacterDetailsBox was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterDetailsBox, CharacterDetails> to handle null values during mapping.',
      );
    }
    return _i3.CharacterDetails(
      id: model.id,
      name: model.name,
      status: model.status,
      species: model.species,
      type: model.type,
      gender: model.gender,
      origin: _map__i4$CharacterOriginBox_To__i3$CharacterOrigin(model.origin),
      location: _map__i4$CharacterLocationBox_To__i3$CharacterLocation(
        model.location,
      ),
      image: model.image,
      episode: model.episode,
      url: model.url,
      created: model.created,
    );
  }

  _i4.CharacterLocationBox
  _map__i3$CharacterLocation_To__i4$CharacterLocationBox(
    _i3.CharacterLocation? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterLocation → CharacterLocationBox failed because CharacterLocation was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterLocation, CharacterLocationBox> to handle null values during mapping.',
      );
    }
    return _i4.CharacterLocationBox(name: model.name, url: model.url);
  }

  _i3.CharacterLocation _map__i4$CharacterLocationBox_To__i3$CharacterLocation(
    _i4.CharacterLocationBox? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterLocationBox → CharacterLocation failed because CharacterLocationBox was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterLocationBox, CharacterLocation> to handle null values during mapping.',
      );
    }
    return _i3.CharacterLocation(name: model.name, url: model.url);
  }

  _i4.CharacterOriginBox _map__i3$CharacterOrigin_To__i4$CharacterOriginBox(
    _i3.CharacterOrigin? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterOrigin → CharacterOriginBox failed because CharacterOrigin was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterOrigin, CharacterOriginBox> to handle null values during mapping.',
      );
    }
    return _i4.CharacterOriginBox(name: model.name, url: model.url);
  }

  _i3.CharacterOrigin _map__i4$CharacterOriginBox_To__i3$CharacterOrigin(
    _i4.CharacterOriginBox? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterOriginBox → CharacterOrigin failed because CharacterOriginBox was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterOriginBox, CharacterOrigin> to handle null values during mapping.',
      );
    }
    return _i3.CharacterOrigin(name: model.name, url: model.url);
  }
}
