// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../domain/entity/character.dart' as _i2;
import '../model/local/character_box.dart' as _i3;
import '../model/local/character_details_box.dart' as _i4;
import '../model/local/character_location_box.dart' as _i6;
import '../model/local/character_origin_box.dart' as _i7;
import '../model/local/favorite_box.dart' as _i5;

/// {@template package:ricky_morty/data/mapper/character_hive_mapper.dart}
/// Available mappings:
/// - `CharacterInfo` → `CharacterInfoBox`.
/// - `CharacterInfoBox` → `CharacterInfo`.
/// - `Character` → `CharacterBox`.
/// - `CharacterBox` → `Character`.
/// - `CharacterDetails` → `CharacterDetailsBox`.
/// - `CharacterDetailsBox` → `CharacterDetails`.
/// - `CharacterDetails` → `FavoriteBox`.
/// - `FavoriteBox` → `CharacterDetails`.
/// - `CharacterLocation` → `CharacterLocationBox`.
/// - `CharacterLocationBox` → `CharacterLocation`.
/// - `CharacterOrigin` → `CharacterOriginBox`.
/// - `CharacterOriginBox` → `CharacterOrigin`.
/// {@endtemplate}
class $CharacterHiveMapper implements _i1.AutoMapprInterface {
  const $CharacterHiveMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:ricky_morty/data/mapper/character_hive_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.CharacterInfo>() ||
            sourceTypeOf == _typeOf<_i2.CharacterInfo?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterInfoBox>() ||
            targetTypeOf == _typeOf<_i3.CharacterInfoBox?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.CharacterInfoBox>() ||
            sourceTypeOf == _typeOf<_i3.CharacterInfoBox?>()) &&
        (targetTypeOf == _typeOf<_i2.CharacterInfo>() ||
            targetTypeOf == _typeOf<_i2.CharacterInfo?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i2.Character>() ||
            sourceTypeOf == _typeOf<_i2.Character?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterBox>() ||
            targetTypeOf == _typeOf<_i3.CharacterBox?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.CharacterBox>() ||
            sourceTypeOf == _typeOf<_i3.CharacterBox?>()) &&
        (targetTypeOf == _typeOf<_i2.Character>() ||
            targetTypeOf == _typeOf<_i2.Character?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i2.CharacterDetails>() ||
            sourceTypeOf == _typeOf<_i2.CharacterDetails?>()) &&
        (targetTypeOf == _typeOf<_i4.CharacterDetailsBox>() ||
            targetTypeOf == _typeOf<_i4.CharacterDetailsBox?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i4.CharacterDetailsBox>() ||
            sourceTypeOf == _typeOf<_i4.CharacterDetailsBox?>()) &&
        (targetTypeOf == _typeOf<_i2.CharacterDetails>() ||
            targetTypeOf == _typeOf<_i2.CharacterDetails?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i2.CharacterDetails>() ||
            sourceTypeOf == _typeOf<_i2.CharacterDetails?>()) &&
        (targetTypeOf == _typeOf<_i5.FavoriteBox>() ||
            targetTypeOf == _typeOf<_i5.FavoriteBox?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i5.FavoriteBox>() ||
            sourceTypeOf == _typeOf<_i5.FavoriteBox?>()) &&
        (targetTypeOf == _typeOf<_i2.CharacterDetails>() ||
            targetTypeOf == _typeOf<_i2.CharacterDetails?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i2.CharacterLocation>() ||
            sourceTypeOf == _typeOf<_i2.CharacterLocation?>()) &&
        (targetTypeOf == _typeOf<_i6.CharacterLocationBox>() ||
            targetTypeOf == _typeOf<_i6.CharacterLocationBox?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i6.CharacterLocationBox>() ||
            sourceTypeOf == _typeOf<_i6.CharacterLocationBox?>()) &&
        (targetTypeOf == _typeOf<_i2.CharacterLocation>() ||
            targetTypeOf == _typeOf<_i2.CharacterLocation?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i2.CharacterOrigin>() ||
            sourceTypeOf == _typeOf<_i2.CharacterOrigin?>()) &&
        (targetTypeOf == _typeOf<_i7.CharacterOriginBox>() ||
            targetTypeOf == _typeOf<_i7.CharacterOriginBox?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i7.CharacterOriginBox>() ||
            sourceTypeOf == _typeOf<_i7.CharacterOriginBox?>()) &&
        (targetTypeOf == _typeOf<_i2.CharacterOrigin>() ||
            targetTypeOf == _typeOf<_i2.CharacterOrigin?>())) {
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
  /// {@macro package:ricky_morty/data/mapper/character_hive_mapper.dart}
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
  /// {@macro package:ricky_morty/data/mapper/character_hive_mapper.dart}
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
  /// {@macro package:ricky_morty/data/mapper/character_hive_mapper.dart}
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
  /// {@macro package:ricky_morty/data/mapper/character_hive_mapper.dart}
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
  /// {@macro package:ricky_morty/data/mapper/character_hive_mapper.dart}
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
  /// {@macro package:ricky_morty/data/mapper/character_hive_mapper.dart}
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
  /// {@macro package:ricky_morty/data/mapper/character_hive_mapper.dart}
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
  /// {@macro package:ricky_morty/data/mapper/character_hive_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.CharacterInfo>() ||
            sourceTypeOf == _typeOf<_i2.CharacterInfo?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterInfoBox>() ||
            targetTypeOf == _typeOf<_i3.CharacterInfoBox?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$CharacterInfo_To__i3$CharacterInfoBox(
            (model as _i2.CharacterInfo?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.CharacterInfoBox>() ||
            sourceTypeOf == _typeOf<_i3.CharacterInfoBox?>()) &&
        (targetTypeOf == _typeOf<_i2.CharacterInfo>() ||
            targetTypeOf == _typeOf<_i2.CharacterInfo?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$CharacterInfoBox_To__i2$CharacterInfo(
            (model as _i3.CharacterInfoBox?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i2.Character>() ||
            sourceTypeOf == _typeOf<_i2.Character?>()) &&
        (targetTypeOf == _typeOf<_i3.CharacterBox>() ||
            targetTypeOf == _typeOf<_i3.CharacterBox?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$Character_To__i3$CharacterBox((model as _i2.Character?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.CharacterBox>() ||
            sourceTypeOf == _typeOf<_i3.CharacterBox?>()) &&
        (targetTypeOf == _typeOf<_i2.Character>() ||
            targetTypeOf == _typeOf<_i2.Character?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$CharacterBox_To__i2$Character(
            (model as _i3.CharacterBox?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i2.CharacterDetails>() ||
            sourceTypeOf == _typeOf<_i2.CharacterDetails?>()) &&
        (targetTypeOf == _typeOf<_i4.CharacterDetailsBox>() ||
            targetTypeOf == _typeOf<_i4.CharacterDetailsBox?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$CharacterDetails_To__i4$CharacterDetailsBox(
            (model as _i2.CharacterDetails?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i4.CharacterDetailsBox>() ||
            sourceTypeOf == _typeOf<_i4.CharacterDetailsBox?>()) &&
        (targetTypeOf == _typeOf<_i2.CharacterDetails>() ||
            targetTypeOf == _typeOf<_i2.CharacterDetails?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i4$CharacterDetailsBox_To__i2$CharacterDetails(
            (model as _i4.CharacterDetailsBox?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i2.CharacterDetails>() ||
            sourceTypeOf == _typeOf<_i2.CharacterDetails?>()) &&
        (targetTypeOf == _typeOf<_i5.FavoriteBox>() ||
            targetTypeOf == _typeOf<_i5.FavoriteBox?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$CharacterDetails_To__i5$FavoriteBox(
            (model as _i2.CharacterDetails?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i5.FavoriteBox>() ||
            sourceTypeOf == _typeOf<_i5.FavoriteBox?>()) &&
        (targetTypeOf == _typeOf<_i2.CharacterDetails>() ||
            targetTypeOf == _typeOf<_i2.CharacterDetails?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i5$FavoriteBox_To__i2$CharacterDetails(
            (model as _i5.FavoriteBox?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i2.CharacterLocation>() ||
            sourceTypeOf == _typeOf<_i2.CharacterLocation?>()) &&
        (targetTypeOf == _typeOf<_i6.CharacterLocationBox>() ||
            targetTypeOf == _typeOf<_i6.CharacterLocationBox?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$CharacterLocation_To__i6$CharacterLocationBox(
            (model as _i2.CharacterLocation?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i6.CharacterLocationBox>() ||
            sourceTypeOf == _typeOf<_i6.CharacterLocationBox?>()) &&
        (targetTypeOf == _typeOf<_i2.CharacterLocation>() ||
            targetTypeOf == _typeOf<_i2.CharacterLocation?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i6$CharacterLocationBox_To__i2$CharacterLocation(
            (model as _i6.CharacterLocationBox?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i2.CharacterOrigin>() ||
            sourceTypeOf == _typeOf<_i2.CharacterOrigin?>()) &&
        (targetTypeOf == _typeOf<_i7.CharacterOriginBox>() ||
            targetTypeOf == _typeOf<_i7.CharacterOriginBox?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$CharacterOrigin_To__i7$CharacterOriginBox(
            (model as _i2.CharacterOrigin?),
          )
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i7.CharacterOriginBox>() ||
            sourceTypeOf == _typeOf<_i7.CharacterOriginBox?>()) &&
        (targetTypeOf == _typeOf<_i2.CharacterOrigin>() ||
            targetTypeOf == _typeOf<_i2.CharacterOrigin?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i7$CharacterOriginBox_To__i2$CharacterOrigin(
            (model as _i7.CharacterOriginBox?),
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
  /// {@macro package:ricky_morty/data/mapper/character_hive_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.CharacterInfoBox _map__i2$CharacterInfo_To__i3$CharacterInfoBox(
    _i2.CharacterInfo? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterInfo → CharacterInfoBox failed because CharacterInfo was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterInfo, CharacterInfoBox> to handle null values during mapping.',
      );
    }
    return _i3.CharacterInfoBox(
      count: model.count,
      pages: model.pages,
      next: model.next,
      prev: model.prev,
    );
  }

  _i2.CharacterInfo _map__i3$CharacterInfoBox_To__i2$CharacterInfo(
    _i3.CharacterInfoBox? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterInfoBox → CharacterInfo failed because CharacterInfoBox was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterInfoBox, CharacterInfo> to handle null values during mapping.',
      );
    }
    return _i2.CharacterInfo(
      count: model.count,
      pages: model.pages,
      next: model.next,
      prev: model.prev,
    );
  }

  _i3.CharacterBox _map__i2$Character_To__i3$CharacterBox(
    _i2.Character? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping Character → CharacterBox failed because Character was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<Character, CharacterBox> to handle null values during mapping.',
      );
    }
    return _i3.CharacterBox(
      info: _map__i2$CharacterInfo_To__i3$CharacterInfoBox(model.info),
      results:
          model.results
              .map<_i4.CharacterDetailsBox>(
                (value) =>
                    _map__i2$CharacterDetails_To__i4$CharacterDetailsBox(value),
              )
              .toList(),
    );
  }

  _i2.Character _map__i3$CharacterBox_To__i2$Character(
    _i3.CharacterBox? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterBox → Character failed because CharacterBox was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterBox, Character> to handle null values during mapping.',
      );
    }
    return _i2.Character(
      info: _map__i3$CharacterInfoBox_To__i2$CharacterInfo(model.info),
      results:
          model.results
              .map<_i2.CharacterDetails>(
                (value) =>
                    _map__i4$CharacterDetailsBox_To__i2$CharacterDetails(value),
              )
              .toList(),
    );
  }

  _i4.CharacterDetailsBox _map__i2$CharacterDetails_To__i4$CharacterDetailsBox(
    _i2.CharacterDetails? input,
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
      origin: _map__i2$CharacterOrigin_To__i7$CharacterOriginBox(model.origin),
      location: _map__i2$CharacterLocation_To__i6$CharacterLocationBox(
        model.location,
      ),
      image: model.image,
      episode: model.episode,
      url: model.url,
      created: model.created,
    );
  }

  _i2.CharacterDetails _map__i4$CharacterDetailsBox_To__i2$CharacterDetails(
    _i4.CharacterDetailsBox? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterDetailsBox → CharacterDetails failed because CharacterDetailsBox was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterDetailsBox, CharacterDetails> to handle null values during mapping.',
      );
    }
    return _i2.CharacterDetails(
      id: model.id,
      name: model.name,
      status: model.status,
      species: model.species,
      type: model.type,
      gender: model.gender,
      origin: _map__i7$CharacterOriginBox_To__i2$CharacterOrigin(model.origin),
      location: _map__i6$CharacterLocationBox_To__i2$CharacterLocation(
        model.location,
      ),
      image: model.image,
      episode: model.episode,
      url: model.url,
      created: model.created,
    );
  }

  _i5.FavoriteBox _map__i2$CharacterDetails_To__i5$FavoriteBox(
    _i2.CharacterDetails? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterDetails → FavoriteBox failed because CharacterDetails was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterDetails, FavoriteBox> to handle null values during mapping.',
      );
    }
    return _i5.FavoriteBox(
      id: model.id,
      name: model.name,
      status: model.status,
      species: model.species,
      type: model.type,
      gender: model.gender,
      origin: _map__i2$CharacterOrigin_To__i7$CharacterOriginBox(model.origin),
      location: _map__i2$CharacterLocation_To__i6$CharacterLocationBox(
        model.location,
      ),
      image: model.image,
      episode: model.episode,
      url: model.url,
      created: model.created,
    );
  }

  _i2.CharacterDetails _map__i5$FavoriteBox_To__i2$CharacterDetails(
    _i5.FavoriteBox? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping FavoriteBox → CharacterDetails failed because FavoriteBox was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<FavoriteBox, CharacterDetails> to handle null values during mapping.',
      );
    }
    return _i2.CharacterDetails(
      id: model.id,
      name: model.name,
      status: model.status,
      species: model.species,
      type: model.type,
      gender: model.gender,
      origin: _map__i7$CharacterOriginBox_To__i2$CharacterOrigin(model.origin),
      location: _map__i6$CharacterLocationBox_To__i2$CharacterLocation(
        model.location,
      ),
      image: model.image,
      episode: model.episode,
      url: model.url,
      created: model.created,
    );
  }

  _i6.CharacterLocationBox
  _map__i2$CharacterLocation_To__i6$CharacterLocationBox(
    _i2.CharacterLocation? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterLocation → CharacterLocationBox failed because CharacterLocation was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterLocation, CharacterLocationBox> to handle null values during mapping.',
      );
    }
    return _i6.CharacterLocationBox(name: model.name, url: model.url);
  }

  _i2.CharacterLocation _map__i6$CharacterLocationBox_To__i2$CharacterLocation(
    _i6.CharacterLocationBox? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterLocationBox → CharacterLocation failed because CharacterLocationBox was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterLocationBox, CharacterLocation> to handle null values during mapping.',
      );
    }
    return _i2.CharacterLocation(name: model.name, url: model.url);
  }

  _i7.CharacterOriginBox _map__i2$CharacterOrigin_To__i7$CharacterOriginBox(
    _i2.CharacterOrigin? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterOrigin → CharacterOriginBox failed because CharacterOrigin was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterOrigin, CharacterOriginBox> to handle null values during mapping.',
      );
    }
    return _i7.CharacterOriginBox(name: model.name, url: model.url);
  }

  _i2.CharacterOrigin _map__i7$CharacterOriginBox_To__i2$CharacterOrigin(
    _i7.CharacterOriginBox? input,
  ) {
    final model = input;
    if (model == null) {
      throw Exception(
        r'Mapping CharacterOriginBox → CharacterOrigin failed because CharacterOriginBox was null, and no default value was provided. '
        r'Consider setting the whenSourceIsNull parameter on the MapType<CharacterOriginBox, CharacterOrigin> to handle null values during mapping.',
      );
    }
    return _i2.CharacterOrigin(name: model.name, url: model.url);
  }
}
