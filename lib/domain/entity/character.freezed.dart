// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Character {
  CharacterInfo get info => throw _privateConstructorUsedError;
  List<CharacterDetails> get results => throw _privateConstructorUsedError;

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res, Character>;
  @useResult
  $Res call({CharacterInfo info, List<CharacterDetails> results});

  $CharacterInfoCopyWith<$Res> get info;
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res, $Val extends Character>
    implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? info = null, Object? results = null}) {
    return _then(
      _value.copyWith(
            info:
                null == info
                    ? _value.info
                    : info // ignore: cast_nullable_to_non_nullable
                        as CharacterInfo,
            results:
                null == results
                    ? _value.results
                    : results // ignore: cast_nullable_to_non_nullable
                        as List<CharacterDetails>,
          )
          as $Val,
    );
  }

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterInfoCopyWith<$Res> get info {
    return $CharacterInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterImplCopyWith<$Res>
    implements $CharacterCopyWith<$Res> {
  factory _$$CharacterImplCopyWith(
    _$CharacterImpl value,
    $Res Function(_$CharacterImpl) then,
  ) = __$$CharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CharacterInfo info, List<CharacterDetails> results});

  @override
  $CharacterInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$CharacterImplCopyWithImpl<$Res>
    extends _$CharacterCopyWithImpl<$Res, _$CharacterImpl>
    implements _$$CharacterImplCopyWith<$Res> {
  __$$CharacterImplCopyWithImpl(
    _$CharacterImpl _value,
    $Res Function(_$CharacterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? info = null, Object? results = null}) {
    return _then(
      _$CharacterImpl(
        info:
            null == info
                ? _value.info
                : info // ignore: cast_nullable_to_non_nullable
                    as CharacterInfo,
        results:
            null == results
                ? _value._results
                : results // ignore: cast_nullable_to_non_nullable
                    as List<CharacterDetails>,
      ),
    );
  }
}

/// @nodoc

class _$CharacterImpl implements _Character {
  const _$CharacterImpl({
    required this.info,
    required final List<CharacterDetails> results,
  }) : _results = results;

  @override
  final CharacterInfo info;
  final List<CharacterDetails> _results;
  @override
  List<CharacterDetails> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'Character(info: $info, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    info,
    const DeepCollectionEquality().hash(_results),
  );

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      __$$CharacterImplCopyWithImpl<_$CharacterImpl>(this, _$identity);
}

abstract class _Character implements Character {
  const factory _Character({
    required final CharacterInfo info,
    required final List<CharacterDetails> results,
  }) = _$CharacterImpl;

  @override
  CharacterInfo get info;
  @override
  List<CharacterDetails> get results;

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterDetails {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  CharacterOrigin get origin => throw _privateConstructorUsedError;
  CharacterLocation get location => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<String> get episode => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;

  /// Create a copy of CharacterDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterDetailsCopyWith<CharacterDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailsCopyWith<$Res> {
  factory $CharacterDetailsCopyWith(
    CharacterDetails value,
    $Res Function(CharacterDetails) then,
  ) = _$CharacterDetailsCopyWithImpl<$Res, CharacterDetails>;
  @useResult
  $Res call({
    int id,
    String name,
    String status,
    String species,
    String type,
    String gender,
    CharacterOrigin origin,
    CharacterLocation location,
    String image,
    List<String> episode,
    String url,
    String created,
  });

  $CharacterOriginCopyWith<$Res> get origin;
  $CharacterLocationCopyWith<$Res> get location;
}

/// @nodoc
class _$CharacterDetailsCopyWithImpl<$Res, $Val extends CharacterDetails>
    implements $CharacterDetailsCopyWith<$Res> {
  _$CharacterDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? origin = null,
    Object? location = null,
    Object? image = null,
    Object? episode = null,
    Object? url = null,
    Object? created = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            species:
                null == species
                    ? _value.species
                    : species // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
            gender:
                null == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as String,
            origin:
                null == origin
                    ? _value.origin
                    : origin // ignore: cast_nullable_to_non_nullable
                        as CharacterOrigin,
            location:
                null == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as CharacterLocation,
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as String,
            episode:
                null == episode
                    ? _value.episode
                    : episode // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
            created:
                null == created
                    ? _value.created
                    : created // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of CharacterDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterOriginCopyWith<$Res> get origin {
    return $CharacterOriginCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  /// Create a copy of CharacterDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterLocationCopyWith<$Res> get location {
    return $CharacterLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterDetailsImplCopyWith<$Res>
    implements $CharacterDetailsCopyWith<$Res> {
  factory _$$CharacterDetailsImplCopyWith(
    _$CharacterDetailsImpl value,
    $Res Function(_$CharacterDetailsImpl) then,
  ) = __$$CharacterDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String status,
    String species,
    String type,
    String gender,
    CharacterOrigin origin,
    CharacterLocation location,
    String image,
    List<String> episode,
    String url,
    String created,
  });

  @override
  $CharacterOriginCopyWith<$Res> get origin;
  @override
  $CharacterLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$CharacterDetailsImplCopyWithImpl<$Res>
    extends _$CharacterDetailsCopyWithImpl<$Res, _$CharacterDetailsImpl>
    implements _$$CharacterDetailsImplCopyWith<$Res> {
  __$$CharacterDetailsImplCopyWithImpl(
    _$CharacterDetailsImpl _value,
    $Res Function(_$CharacterDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharacterDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? origin = null,
    Object? location = null,
    Object? image = null,
    Object? episode = null,
    Object? url = null,
    Object? created = null,
  }) {
    return _then(
      _$CharacterDetailsImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        species:
            null == species
                ? _value.species
                : species // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
        gender:
            null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as String,
        origin:
            null == origin
                ? _value.origin
                : origin // ignore: cast_nullable_to_non_nullable
                    as CharacterOrigin,
        location:
            null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                    as CharacterLocation,
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as String,
        episode:
            null == episode
                ? _value._episode
                : episode // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
        created:
            null == created
                ? _value.created
                : created // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$CharacterDetailsImpl implements _CharacterDetails {
  const _$CharacterDetailsImpl({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required final List<String> episode,
    required this.url,
    required this.created,
  }) : _episode = episode;

  @override
  final int id;
  @override
  final String name;
  @override
  final String status;
  @override
  final String species;
  @override
  final String type;
  @override
  final String gender;
  @override
  final CharacterOrigin origin;
  @override
  final CharacterLocation location;
  @override
  final String image;
  final List<String> _episode;
  @override
  List<String> get episode {
    if (_episode is EqualUnmodifiableListView) return _episode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episode);
  }

  @override
  final String url;
  @override
  final String created;

  @override
  String toString() {
    return 'CharacterDetails(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, image: $image, episode: $episode, url: $url, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._episode, _episode) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.created, created) || other.created == created));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    status,
    species,
    type,
    gender,
    origin,
    location,
    image,
    const DeepCollectionEquality().hash(_episode),
    url,
    created,
  );

  /// Create a copy of CharacterDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDetailsImplCopyWith<_$CharacterDetailsImpl> get copyWith =>
      __$$CharacterDetailsImplCopyWithImpl<_$CharacterDetailsImpl>(
        this,
        _$identity,
      );
}

abstract class _CharacterDetails implements CharacterDetails {
  const factory _CharacterDetails({
    required final int id,
    required final String name,
    required final String status,
    required final String species,
    required final String type,
    required final String gender,
    required final CharacterOrigin origin,
    required final CharacterLocation location,
    required final String image,
    required final List<String> episode,
    required final String url,
    required final String created,
  }) = _$CharacterDetailsImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get status;
  @override
  String get species;
  @override
  String get type;
  @override
  String get gender;
  @override
  CharacterOrigin get origin;
  @override
  CharacterLocation get location;
  @override
  String get image;
  @override
  List<String> get episode;
  @override
  String get url;
  @override
  String get created;

  /// Create a copy of CharacterDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterDetailsImplCopyWith<_$CharacterDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterInfo {
  int get count => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  String get next => throw _privateConstructorUsedError;
  String? get prev => throw _privateConstructorUsedError;

  /// Create a copy of CharacterInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterInfoCopyWith<CharacterInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterInfoCopyWith<$Res> {
  factory $CharacterInfoCopyWith(
    CharacterInfo value,
    $Res Function(CharacterInfo) then,
  ) = _$CharacterInfoCopyWithImpl<$Res, CharacterInfo>;
  @useResult
  $Res call({int count, int pages, String next, String? prev});
}

/// @nodoc
class _$CharacterInfoCopyWithImpl<$Res, $Val extends CharacterInfo>
    implements $CharacterInfoCopyWith<$Res> {
  _$CharacterInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = null,
    Object? prev = freezed,
  }) {
    return _then(
      _value.copyWith(
            count:
                null == count
                    ? _value.count
                    : count // ignore: cast_nullable_to_non_nullable
                        as int,
            pages:
                null == pages
                    ? _value.pages
                    : pages // ignore: cast_nullable_to_non_nullable
                        as int,
            next:
                null == next
                    ? _value.next
                    : next // ignore: cast_nullable_to_non_nullable
                        as String,
            prev:
                freezed == prev
                    ? _value.prev
                    : prev // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CharacterInfoImplCopyWith<$Res>
    implements $CharacterInfoCopyWith<$Res> {
  factory _$$CharacterInfoImplCopyWith(
    _$CharacterInfoImpl value,
    $Res Function(_$CharacterInfoImpl) then,
  ) = __$$CharacterInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int pages, String next, String? prev});
}

/// @nodoc
class __$$CharacterInfoImplCopyWithImpl<$Res>
    extends _$CharacterInfoCopyWithImpl<$Res, _$CharacterInfoImpl>
    implements _$$CharacterInfoImplCopyWith<$Res> {
  __$$CharacterInfoImplCopyWithImpl(
    _$CharacterInfoImpl _value,
    $Res Function(_$CharacterInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharacterInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = null,
    Object? prev = freezed,
  }) {
    return _then(
      _$CharacterInfoImpl(
        count:
            null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                    as int,
        pages:
            null == pages
                ? _value.pages
                : pages // ignore: cast_nullable_to_non_nullable
                    as int,
        next:
            null == next
                ? _value.next
                : next // ignore: cast_nullable_to_non_nullable
                    as String,
        prev:
            freezed == prev
                ? _value.prev
                : prev // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$CharacterInfoImpl implements _CharacterInfo {
  const _$CharacterInfoImpl({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
  });

  @override
  final int count;
  @override
  final int pages;
  @override
  final String next;
  @override
  final String? prev;

  @override
  String toString() {
    return 'CharacterInfo(count: $count, pages: $pages, next: $next, prev: $prev)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterInfoImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.prev, prev) || other.prev == prev));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, pages, next, prev);

  /// Create a copy of CharacterInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterInfoImplCopyWith<_$CharacterInfoImpl> get copyWith =>
      __$$CharacterInfoImplCopyWithImpl<_$CharacterInfoImpl>(this, _$identity);
}

abstract class _CharacterInfo implements CharacterInfo {
  const factory _CharacterInfo({
    required final int count,
    required final int pages,
    required final String next,
    required final String? prev,
  }) = _$CharacterInfoImpl;

  @override
  int get count;
  @override
  int get pages;
  @override
  String get next;
  @override
  String? get prev;

  /// Create a copy of CharacterInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterInfoImplCopyWith<_$CharacterInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterLocation {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Create a copy of CharacterLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterLocationCopyWith<CharacterLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterLocationCopyWith<$Res> {
  factory $CharacterLocationCopyWith(
    CharacterLocation value,
    $Res Function(CharacterLocation) then,
  ) = _$CharacterLocationCopyWithImpl<$Res, CharacterLocation>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$CharacterLocationCopyWithImpl<$Res, $Val extends CharacterLocation>
    implements $CharacterLocationCopyWith<$Res> {
  _$CharacterLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CharacterLocationImplCopyWith<$Res>
    implements $CharacterLocationCopyWith<$Res> {
  factory _$$CharacterLocationImplCopyWith(
    _$CharacterLocationImpl value,
    $Res Function(_$CharacterLocationImpl) then,
  ) = __$$CharacterLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$CharacterLocationImplCopyWithImpl<$Res>
    extends _$CharacterLocationCopyWithImpl<$Res, _$CharacterLocationImpl>
    implements _$$CharacterLocationImplCopyWith<$Res> {
  __$$CharacterLocationImplCopyWithImpl(
    _$CharacterLocationImpl _value,
    $Res Function(_$CharacterLocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharacterLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _$CharacterLocationImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$CharacterLocationImpl implements _CharacterLocation {
  const _$CharacterLocationImpl({required this.name, required this.url});

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'CharacterLocation(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterLocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of CharacterLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterLocationImplCopyWith<_$CharacterLocationImpl> get copyWith =>
      __$$CharacterLocationImplCopyWithImpl<_$CharacterLocationImpl>(
        this,
        _$identity,
      );
}

abstract class _CharacterLocation implements CharacterLocation {
  const factory _CharacterLocation({
    required final String name,
    required final String url,
  }) = _$CharacterLocationImpl;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of CharacterLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterLocationImplCopyWith<_$CharacterLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterOrigin {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Create a copy of CharacterOrigin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterOriginCopyWith<CharacterOrigin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterOriginCopyWith<$Res> {
  factory $CharacterOriginCopyWith(
    CharacterOrigin value,
    $Res Function(CharacterOrigin) then,
  ) = _$CharacterOriginCopyWithImpl<$Res, CharacterOrigin>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$CharacterOriginCopyWithImpl<$Res, $Val extends CharacterOrigin>
    implements $CharacterOriginCopyWith<$Res> {
  _$CharacterOriginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterOrigin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CharacterOriginImplCopyWith<$Res>
    implements $CharacterOriginCopyWith<$Res> {
  factory _$$CharacterOriginImplCopyWith(
    _$CharacterOriginImpl value,
    $Res Function(_$CharacterOriginImpl) then,
  ) = __$$CharacterOriginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$CharacterOriginImplCopyWithImpl<$Res>
    extends _$CharacterOriginCopyWithImpl<$Res, _$CharacterOriginImpl>
    implements _$$CharacterOriginImplCopyWith<$Res> {
  __$$CharacterOriginImplCopyWithImpl(
    _$CharacterOriginImpl _value,
    $Res Function(_$CharacterOriginImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharacterOrigin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _$CharacterOriginImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$CharacterOriginImpl implements _CharacterOrigin {
  const _$CharacterOriginImpl({required this.name, required this.url});

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'CharacterOrigin(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterOriginImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of CharacterOrigin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterOriginImplCopyWith<_$CharacterOriginImpl> get copyWith =>
      __$$CharacterOriginImplCopyWithImpl<_$CharacterOriginImpl>(
        this,
        _$identity,
      );
}

abstract class _CharacterOrigin implements CharacterOrigin {
  const factory _CharacterOrigin({
    required final String name,
    required final String url,
  }) = _$CharacterOriginImpl;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of CharacterOrigin
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterOriginImplCopyWith<_$CharacterOriginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
