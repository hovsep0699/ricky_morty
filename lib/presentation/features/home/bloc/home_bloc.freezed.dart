// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCharacters,
    required TResult Function(CharacterDetails details) storeFavorite,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCharacters,
    TResult? Function(CharacterDetails details)? storeFavorite,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCharacters,
    TResult Function(CharacterDetails details)? storeFavorite,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_StoreFavorite value) storeFavorite,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_StoreFavorite value)? storeFavorite,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_StoreFavorite value)? storeFavorite,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCharactersImplCopyWith<$Res> {
  factory _$$GetCharactersImplCopyWith(
    _$GetCharactersImpl value,
    $Res Function(_$GetCharactersImpl) then,
  ) = __$$GetCharactersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCharactersImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCharactersImpl>
    implements _$$GetCharactersImplCopyWith<$Res> {
  __$$GetCharactersImplCopyWithImpl(
    _$GetCharactersImpl _value,
    $Res Function(_$GetCharactersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCharactersImpl implements _GetCharacters {
  const _$GetCharactersImpl();

  @override
  String toString() {
    return 'HomeEvent.getCharacters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCharactersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCharacters,
    required TResult Function(CharacterDetails details) storeFavorite,
  }) {
    return getCharacters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCharacters,
    TResult? Function(CharacterDetails details)? storeFavorite,
  }) {
    return getCharacters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCharacters,
    TResult Function(CharacterDetails details)? storeFavorite,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_StoreFavorite value) storeFavorite,
  }) {
    return getCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_StoreFavorite value)? storeFavorite,
  }) {
    return getCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_StoreFavorite value)? storeFavorite,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(this);
    }
    return orElse();
  }
}

abstract class _GetCharacters implements HomeEvent {
  const factory _GetCharacters() = _$GetCharactersImpl;
}

/// @nodoc
abstract class _$$StoreFavoriteImplCopyWith<$Res> {
  factory _$$StoreFavoriteImplCopyWith(
    _$StoreFavoriteImpl value,
    $Res Function(_$StoreFavoriteImpl) then,
  ) = __$$StoreFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CharacterDetails details});

  $CharacterDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$$StoreFavoriteImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StoreFavoriteImpl>
    implements _$$StoreFavoriteImplCopyWith<$Res> {
  __$$StoreFavoriteImplCopyWithImpl(
    _$StoreFavoriteImpl _value,
    $Res Function(_$StoreFavoriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? details = null}) {
    return _then(
      _$StoreFavoriteImpl(
        details:
            null == details
                ? _value.details
                : details // ignore: cast_nullable_to_non_nullable
                    as CharacterDetails,
      ),
    );
  }

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterDetailsCopyWith<$Res> get details {
    return $CharacterDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc

class _$StoreFavoriteImpl implements _StoreFavorite {
  const _$StoreFavoriteImpl({required this.details});

  @override
  final CharacterDetails details;

  @override
  String toString() {
    return 'HomeEvent.storeFavorite(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreFavoriteImpl &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, details);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreFavoriteImplCopyWith<_$StoreFavoriteImpl> get copyWith =>
      __$$StoreFavoriteImplCopyWithImpl<_$StoreFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCharacters,
    required TResult Function(CharacterDetails details) storeFavorite,
  }) {
    return storeFavorite(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCharacters,
    TResult? Function(CharacterDetails details)? storeFavorite,
  }) {
    return storeFavorite?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCharacters,
    TResult Function(CharacterDetails details)? storeFavorite,
    required TResult orElse(),
  }) {
    if (storeFavorite != null) {
      return storeFavorite(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_StoreFavorite value) storeFavorite,
  }) {
    return storeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_StoreFavorite value)? storeFavorite,
  }) {
    return storeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_StoreFavorite value)? storeFavorite,
    required TResult orElse(),
  }) {
    if (storeFavorite != null) {
      return storeFavorite(this);
    }
    return orElse();
  }
}

abstract class _StoreFavorite implements HomeEvent {
  const factory _StoreFavorite({required final CharacterDetails details}) =
      _$StoreFavoriteImpl;

  CharacterDetails get details;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreFavoriteImplCopyWith<_$StoreFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  HomeStatus get status => throw _privateConstructorUsedError;
  Character? get charactersData => throw _privateConstructorUsedError;
  List<CharacterDetails> get cachedFavorites =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({
    HomeStatus status,
    Character? charactersData,
    List<CharacterDetails> cachedFavorites,
    String? errorMessage,
  });

  $CharacterCopyWith<$Res>? get charactersData;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? charactersData = freezed,
    Object? cachedFavorites = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as HomeStatus,
            charactersData:
                freezed == charactersData
                    ? _value.charactersData
                    : charactersData // ignore: cast_nullable_to_non_nullable
                        as Character?,
            cachedFavorites:
                null == cachedFavorites
                    ? _value.cachedFavorites
                    : cachedFavorites // ignore: cast_nullable_to_non_nullable
                        as List<CharacterDetails>,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res>? get charactersData {
    if (_value.charactersData == null) {
      return null;
    }

    return $CharacterCopyWith<$Res>(_value.charactersData!, (value) {
      return _then(_value.copyWith(charactersData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    HomeStatus status,
    Character? charactersData,
    List<CharacterDetails> cachedFavorites,
    String? errorMessage,
  });

  @override
  $CharacterCopyWith<$Res>? get charactersData;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? charactersData = freezed,
    Object? cachedFavorites = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$InitialImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as HomeStatus,
        charactersData:
            freezed == charactersData
                ? _value.charactersData
                : charactersData // ignore: cast_nullable_to_non_nullable
                    as Character?,
        cachedFavorites:
            null == cachedFavorites
                ? _value._cachedFavorites
                : cachedFavorites // ignore: cast_nullable_to_non_nullable
                    as List<CharacterDetails>,
        errorMessage:
            freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({
    this.status = HomeStatus.initial,
    this.charactersData,
    final List<CharacterDetails> cachedFavorites = const [],
    this.errorMessage,
  }) : _cachedFavorites = cachedFavorites;

  @override
  @JsonKey()
  final HomeStatus status;
  @override
  final Character? charactersData;
  final List<CharacterDetails> _cachedFavorites;
  @override
  @JsonKey()
  List<CharacterDetails> get cachedFavorites {
    if (_cachedFavorites is EqualUnmodifiableListView) return _cachedFavorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cachedFavorites);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HomeState(status: $status, charactersData: $charactersData, cachedFavorites: $cachedFavorites, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.charactersData, charactersData) ||
                other.charactersData == charactersData) &&
            const DeepCollectionEquality().equals(
              other._cachedFavorites,
              _cachedFavorites,
            ) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    charactersData,
    const DeepCollectionEquality().hash(_cachedFavorites),
    errorMessage,
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial({
    final HomeStatus status,
    final Character? charactersData,
    final List<CharacterDetails> cachedFavorites,
    final String? errorMessage,
  }) = _$InitialImpl;

  @override
  HomeStatus get status;
  @override
  Character? get charactersData;
  @override
  List<CharacterDetails> get cachedFavorites;
  @override
  String? get errorMessage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
