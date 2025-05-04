// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FavoritesState {
  FavoritesStatus get status => throw _privateConstructorUsedError;
  List<CharacterDetails> get favorites => throw _privateConstructorUsedError;
  dynamic get selectedSortOption => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoritesStateCopyWith<FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
    FavoritesState value,
    $Res Function(FavoritesState) then,
  ) = _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
  @useResult
  $Res call({
    FavoritesStatus status,
    List<CharacterDetails> favorites,
    dynamic selectedSortOption,
    String? errorMessage,
  });
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? favorites = null,
    Object? selectedSortOption = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as FavoritesStatus,
            favorites:
                null == favorites
                    ? _value.favorites
                    : favorites // ignore: cast_nullable_to_non_nullable
                        as List<CharacterDetails>,
            selectedSortOption:
                freezed == selectedSortOption
                    ? _value.selectedSortOption
                    : selectedSortOption // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    FavoritesStatus status,
    List<CharacterDetails> favorites,
    dynamic selectedSortOption,
    String? errorMessage,
  });
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? favorites = null,
    Object? selectedSortOption = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$InitialImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as FavoritesStatus,
        favorites:
            null == favorites
                ? _value._favorites
                : favorites // ignore: cast_nullable_to_non_nullable
                    as List<CharacterDetails>,
        selectedSortOption:
            freezed == selectedSortOption
                ? _value.selectedSortOption!
                : selectedSortOption,
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
    this.status = FavoritesStatus.initial,
    final List<CharacterDetails> favorites = const [],
    this.selectedSortOption = SortOption.status,
    this.errorMessage,
  }) : _favorites = favorites;

  @override
  @JsonKey()
  final FavoritesStatus status;
  final List<CharacterDetails> _favorites;
  @override
  @JsonKey()
  List<CharacterDetails> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  @JsonKey()
  final dynamic selectedSortOption;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'FavoritesState(status: $status, favorites: $favorites, selectedSortOption: $selectedSortOption, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._favorites,
              _favorites,
            ) &&
            const DeepCollectionEquality().equals(
              other.selectedSortOption,
              selectedSortOption,
            ) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_favorites),
    const DeepCollectionEquality().hash(selectedSortOption),
    errorMessage,
  );

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements FavoritesState {
  const factory _Initial({
    final FavoritesStatus status,
    final List<CharacterDetails> favorites,
    final dynamic selectedSortOption,
    final String? errorMessage,
  }) = _$InitialImpl;

  @override
  FavoritesStatus get status;
  @override
  List<CharacterDetails> get favorites;
  @override
  dynamic get selectedSortOption;
  @override
  String? get errorMessage;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavorites,
    required TResult Function(CharacterDetails detail) storeFavorite,
    required TResult Function(int id) remoteFavorite,
    required TResult Function(SortOption sortOption) sortBy,
    required TResult Function(SortOption sortOption) changeSortOption,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavorites,
    TResult? Function(CharacterDetails detail)? storeFavorite,
    TResult? Function(int id)? remoteFavorite,
    TResult? Function(SortOption sortOption)? sortBy,
    TResult? Function(SortOption sortOption)? changeSortOption,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavorites,
    TResult Function(CharacterDetails detail)? storeFavorite,
    TResult Function(int id)? remoteFavorite,
    TResult Function(SortOption sortOption)? sortBy,
    TResult Function(SortOption sortOption)? changeSortOption,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavorites value) getFavorites,
    required TResult Function(_StoreFavorite value) storeFavorite,
    required TResult Function(_RemoteFavorite value) remoteFavorite,
    required TResult Function(_SortBy value) sortBy,
    required TResult Function(_ChangeSortOption value) changeSortOption,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavorites value)? getFavorites,
    TResult? Function(_StoreFavorite value)? storeFavorite,
    TResult? Function(_RemoteFavorite value)? remoteFavorite,
    TResult? Function(_SortBy value)? sortBy,
    TResult? Function(_ChangeSortOption value)? changeSortOption,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavorites value)? getFavorites,
    TResult Function(_StoreFavorite value)? storeFavorite,
    TResult Function(_RemoteFavorite value)? remoteFavorite,
    TResult Function(_SortBy value)? sortBy,
    TResult Function(_ChangeSortOption value)? changeSortOption,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
    FavoritesEvent value,
    $Res Function(FavoritesEvent) then,
  ) = _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetFavoritesImplCopyWith<$Res> {
  factory _$$GetFavoritesImplCopyWith(
    _$GetFavoritesImpl value,
    $Res Function(_$GetFavoritesImpl) then,
  ) = __$$GetFavoritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavoritesImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$GetFavoritesImpl>
    implements _$$GetFavoritesImplCopyWith<$Res> {
  __$$GetFavoritesImplCopyWithImpl(
    _$GetFavoritesImpl _value,
    $Res Function(_$GetFavoritesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetFavoritesImpl implements _GetFavorites {
  const _$GetFavoritesImpl();

  @override
  String toString() {
    return 'FavoritesEvent.getFavorites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFavoritesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavorites,
    required TResult Function(CharacterDetails detail) storeFavorite,
    required TResult Function(int id) remoteFavorite,
    required TResult Function(SortOption sortOption) sortBy,
    required TResult Function(SortOption sortOption) changeSortOption,
  }) {
    return getFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavorites,
    TResult? Function(CharacterDetails detail)? storeFavorite,
    TResult? Function(int id)? remoteFavorite,
    TResult? Function(SortOption sortOption)? sortBy,
    TResult? Function(SortOption sortOption)? changeSortOption,
  }) {
    return getFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavorites,
    TResult Function(CharacterDetails detail)? storeFavorite,
    TResult Function(int id)? remoteFavorite,
    TResult Function(SortOption sortOption)? sortBy,
    TResult Function(SortOption sortOption)? changeSortOption,
    required TResult orElse(),
  }) {
    if (getFavorites != null) {
      return getFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavorites value) getFavorites,
    required TResult Function(_StoreFavorite value) storeFavorite,
    required TResult Function(_RemoteFavorite value) remoteFavorite,
    required TResult Function(_SortBy value) sortBy,
    required TResult Function(_ChangeSortOption value) changeSortOption,
  }) {
    return getFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavorites value)? getFavorites,
    TResult? Function(_StoreFavorite value)? storeFavorite,
    TResult? Function(_RemoteFavorite value)? remoteFavorite,
    TResult? Function(_SortBy value)? sortBy,
    TResult? Function(_ChangeSortOption value)? changeSortOption,
  }) {
    return getFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavorites value)? getFavorites,
    TResult Function(_StoreFavorite value)? storeFavorite,
    TResult Function(_RemoteFavorite value)? remoteFavorite,
    TResult Function(_SortBy value)? sortBy,
    TResult Function(_ChangeSortOption value)? changeSortOption,
    required TResult orElse(),
  }) {
    if (getFavorites != null) {
      return getFavorites(this);
    }
    return orElse();
  }
}

abstract class _GetFavorites implements FavoritesEvent {
  const factory _GetFavorites() = _$GetFavoritesImpl;
}

/// @nodoc
abstract class _$$StoreFavoriteImplCopyWith<$Res> {
  factory _$$StoreFavoriteImplCopyWith(
    _$StoreFavoriteImpl value,
    $Res Function(_$StoreFavoriteImpl) then,
  ) = __$$StoreFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CharacterDetails detail});

  $CharacterDetailsCopyWith<$Res> get detail;
}

/// @nodoc
class __$$StoreFavoriteImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$StoreFavoriteImpl>
    implements _$$StoreFavoriteImplCopyWith<$Res> {
  __$$StoreFavoriteImplCopyWithImpl(
    _$StoreFavoriteImpl _value,
    $Res Function(_$StoreFavoriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? detail = null}) {
    return _then(
      _$StoreFavoriteImpl(
        detail:
            null == detail
                ? _value.detail
                : detail // ignore: cast_nullable_to_non_nullable
                    as CharacterDetails,
      ),
    );
  }

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterDetailsCopyWith<$Res> get detail {
    return $CharacterDetailsCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value));
    });
  }
}

/// @nodoc

class _$StoreFavoriteImpl implements _StoreFavorite {
  const _$StoreFavoriteImpl({required this.detail});

  @override
  final CharacterDetails detail;

  @override
  String toString() {
    return 'FavoritesEvent.storeFavorite(detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreFavoriteImpl &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detail);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreFavoriteImplCopyWith<_$StoreFavoriteImpl> get copyWith =>
      __$$StoreFavoriteImplCopyWithImpl<_$StoreFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavorites,
    required TResult Function(CharacterDetails detail) storeFavorite,
    required TResult Function(int id) remoteFavorite,
    required TResult Function(SortOption sortOption) sortBy,
    required TResult Function(SortOption sortOption) changeSortOption,
  }) {
    return storeFavorite(detail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavorites,
    TResult? Function(CharacterDetails detail)? storeFavorite,
    TResult? Function(int id)? remoteFavorite,
    TResult? Function(SortOption sortOption)? sortBy,
    TResult? Function(SortOption sortOption)? changeSortOption,
  }) {
    return storeFavorite?.call(detail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavorites,
    TResult Function(CharacterDetails detail)? storeFavorite,
    TResult Function(int id)? remoteFavorite,
    TResult Function(SortOption sortOption)? sortBy,
    TResult Function(SortOption sortOption)? changeSortOption,
    required TResult orElse(),
  }) {
    if (storeFavorite != null) {
      return storeFavorite(detail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavorites value) getFavorites,
    required TResult Function(_StoreFavorite value) storeFavorite,
    required TResult Function(_RemoteFavorite value) remoteFavorite,
    required TResult Function(_SortBy value) sortBy,
    required TResult Function(_ChangeSortOption value) changeSortOption,
  }) {
    return storeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavorites value)? getFavorites,
    TResult? Function(_StoreFavorite value)? storeFavorite,
    TResult? Function(_RemoteFavorite value)? remoteFavorite,
    TResult? Function(_SortBy value)? sortBy,
    TResult? Function(_ChangeSortOption value)? changeSortOption,
  }) {
    return storeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavorites value)? getFavorites,
    TResult Function(_StoreFavorite value)? storeFavorite,
    TResult Function(_RemoteFavorite value)? remoteFavorite,
    TResult Function(_SortBy value)? sortBy,
    TResult Function(_ChangeSortOption value)? changeSortOption,
    required TResult orElse(),
  }) {
    if (storeFavorite != null) {
      return storeFavorite(this);
    }
    return orElse();
  }
}

abstract class _StoreFavorite implements FavoritesEvent {
  const factory _StoreFavorite({required final CharacterDetails detail}) =
      _$StoreFavoriteImpl;

  CharacterDetails get detail;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreFavoriteImplCopyWith<_$StoreFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteFavoriteImplCopyWith<$Res> {
  factory _$$RemoteFavoriteImplCopyWith(
    _$RemoteFavoriteImpl value,
    $Res Function(_$RemoteFavoriteImpl) then,
  ) = __$$RemoteFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$RemoteFavoriteImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$RemoteFavoriteImpl>
    implements _$$RemoteFavoriteImplCopyWith<$Res> {
  __$$RemoteFavoriteImplCopyWithImpl(
    _$RemoteFavoriteImpl _value,
    $Res Function(_$RemoteFavoriteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$RemoteFavoriteImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$RemoteFavoriteImpl implements _RemoteFavorite {
  const _$RemoteFavoriteImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FavoritesEvent.remoteFavorite(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteFavoriteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteFavoriteImplCopyWith<_$RemoteFavoriteImpl> get copyWith =>
      __$$RemoteFavoriteImplCopyWithImpl<_$RemoteFavoriteImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavorites,
    required TResult Function(CharacterDetails detail) storeFavorite,
    required TResult Function(int id) remoteFavorite,
    required TResult Function(SortOption sortOption) sortBy,
    required TResult Function(SortOption sortOption) changeSortOption,
  }) {
    return remoteFavorite(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavorites,
    TResult? Function(CharacterDetails detail)? storeFavorite,
    TResult? Function(int id)? remoteFavorite,
    TResult? Function(SortOption sortOption)? sortBy,
    TResult? Function(SortOption sortOption)? changeSortOption,
  }) {
    return remoteFavorite?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavorites,
    TResult Function(CharacterDetails detail)? storeFavorite,
    TResult Function(int id)? remoteFavorite,
    TResult Function(SortOption sortOption)? sortBy,
    TResult Function(SortOption sortOption)? changeSortOption,
    required TResult orElse(),
  }) {
    if (remoteFavorite != null) {
      return remoteFavorite(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavorites value) getFavorites,
    required TResult Function(_StoreFavorite value) storeFavorite,
    required TResult Function(_RemoteFavorite value) remoteFavorite,
    required TResult Function(_SortBy value) sortBy,
    required TResult Function(_ChangeSortOption value) changeSortOption,
  }) {
    return remoteFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavorites value)? getFavorites,
    TResult? Function(_StoreFavorite value)? storeFavorite,
    TResult? Function(_RemoteFavorite value)? remoteFavorite,
    TResult? Function(_SortBy value)? sortBy,
    TResult? Function(_ChangeSortOption value)? changeSortOption,
  }) {
    return remoteFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavorites value)? getFavorites,
    TResult Function(_StoreFavorite value)? storeFavorite,
    TResult Function(_RemoteFavorite value)? remoteFavorite,
    TResult Function(_SortBy value)? sortBy,
    TResult Function(_ChangeSortOption value)? changeSortOption,
    required TResult orElse(),
  }) {
    if (remoteFavorite != null) {
      return remoteFavorite(this);
    }
    return orElse();
  }
}

abstract class _RemoteFavorite implements FavoritesEvent {
  const factory _RemoteFavorite({required final int id}) = _$RemoteFavoriteImpl;

  int get id;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoteFavoriteImplCopyWith<_$RemoteFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortByImplCopyWith<$Res> {
  factory _$$SortByImplCopyWith(
    _$SortByImpl value,
    $Res Function(_$SortByImpl) then,
  ) = __$$SortByImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SortOption sortOption});
}

/// @nodoc
class __$$SortByImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$SortByImpl>
    implements _$$SortByImplCopyWith<$Res> {
  __$$SortByImplCopyWithImpl(
    _$SortByImpl _value,
    $Res Function(_$SortByImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sortOption = null}) {
    return _then(
      _$SortByImpl(
        sortOption:
            null == sortOption
                ? _value.sortOption
                : sortOption // ignore: cast_nullable_to_non_nullable
                    as SortOption,
      ),
    );
  }
}

/// @nodoc

class _$SortByImpl implements _SortBy {
  const _$SortByImpl({required this.sortOption});

  @override
  final SortOption sortOption;

  @override
  String toString() {
    return 'FavoritesEvent.sortBy(sortOption: $sortOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortByImpl &&
            (identical(other.sortOption, sortOption) ||
                other.sortOption == sortOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortOption);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortByImplCopyWith<_$SortByImpl> get copyWith =>
      __$$SortByImplCopyWithImpl<_$SortByImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavorites,
    required TResult Function(CharacterDetails detail) storeFavorite,
    required TResult Function(int id) remoteFavorite,
    required TResult Function(SortOption sortOption) sortBy,
    required TResult Function(SortOption sortOption) changeSortOption,
  }) {
    return sortBy(sortOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavorites,
    TResult? Function(CharacterDetails detail)? storeFavorite,
    TResult? Function(int id)? remoteFavorite,
    TResult? Function(SortOption sortOption)? sortBy,
    TResult? Function(SortOption sortOption)? changeSortOption,
  }) {
    return sortBy?.call(sortOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavorites,
    TResult Function(CharacterDetails detail)? storeFavorite,
    TResult Function(int id)? remoteFavorite,
    TResult Function(SortOption sortOption)? sortBy,
    TResult Function(SortOption sortOption)? changeSortOption,
    required TResult orElse(),
  }) {
    if (sortBy != null) {
      return sortBy(sortOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavorites value) getFavorites,
    required TResult Function(_StoreFavorite value) storeFavorite,
    required TResult Function(_RemoteFavorite value) remoteFavorite,
    required TResult Function(_SortBy value) sortBy,
    required TResult Function(_ChangeSortOption value) changeSortOption,
  }) {
    return sortBy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavorites value)? getFavorites,
    TResult? Function(_StoreFavorite value)? storeFavorite,
    TResult? Function(_RemoteFavorite value)? remoteFavorite,
    TResult? Function(_SortBy value)? sortBy,
    TResult? Function(_ChangeSortOption value)? changeSortOption,
  }) {
    return sortBy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavorites value)? getFavorites,
    TResult Function(_StoreFavorite value)? storeFavorite,
    TResult Function(_RemoteFavorite value)? remoteFavorite,
    TResult Function(_SortBy value)? sortBy,
    TResult Function(_ChangeSortOption value)? changeSortOption,
    required TResult orElse(),
  }) {
    if (sortBy != null) {
      return sortBy(this);
    }
    return orElse();
  }
}

abstract class _SortBy implements FavoritesEvent {
  const factory _SortBy({required final SortOption sortOption}) = _$SortByImpl;

  SortOption get sortOption;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortByImplCopyWith<_$SortByImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSortOptionImplCopyWith<$Res> {
  factory _$$ChangeSortOptionImplCopyWith(
    _$ChangeSortOptionImpl value,
    $Res Function(_$ChangeSortOptionImpl) then,
  ) = __$$ChangeSortOptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SortOption sortOption});
}

/// @nodoc
class __$$ChangeSortOptionImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$ChangeSortOptionImpl>
    implements _$$ChangeSortOptionImplCopyWith<$Res> {
  __$$ChangeSortOptionImplCopyWithImpl(
    _$ChangeSortOptionImpl _value,
    $Res Function(_$ChangeSortOptionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sortOption = null}) {
    return _then(
      _$ChangeSortOptionImpl(
        sortOption:
            null == sortOption
                ? _value.sortOption
                : sortOption // ignore: cast_nullable_to_non_nullable
                    as SortOption,
      ),
    );
  }
}

/// @nodoc

class _$ChangeSortOptionImpl implements _ChangeSortOption {
  const _$ChangeSortOptionImpl({required this.sortOption});

  @override
  final SortOption sortOption;

  @override
  String toString() {
    return 'FavoritesEvent.changeSortOption(sortOption: $sortOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSortOptionImpl &&
            (identical(other.sortOption, sortOption) ||
                other.sortOption == sortOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortOption);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSortOptionImplCopyWith<_$ChangeSortOptionImpl> get copyWith =>
      __$$ChangeSortOptionImplCopyWithImpl<_$ChangeSortOptionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFavorites,
    required TResult Function(CharacterDetails detail) storeFavorite,
    required TResult Function(int id) remoteFavorite,
    required TResult Function(SortOption sortOption) sortBy,
    required TResult Function(SortOption sortOption) changeSortOption,
  }) {
    return changeSortOption(sortOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getFavorites,
    TResult? Function(CharacterDetails detail)? storeFavorite,
    TResult? Function(int id)? remoteFavorite,
    TResult? Function(SortOption sortOption)? sortBy,
    TResult? Function(SortOption sortOption)? changeSortOption,
  }) {
    return changeSortOption?.call(sortOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFavorites,
    TResult Function(CharacterDetails detail)? storeFavorite,
    TResult Function(int id)? remoteFavorite,
    TResult Function(SortOption sortOption)? sortBy,
    TResult Function(SortOption sortOption)? changeSortOption,
    required TResult orElse(),
  }) {
    if (changeSortOption != null) {
      return changeSortOption(sortOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavorites value) getFavorites,
    required TResult Function(_StoreFavorite value) storeFavorite,
    required TResult Function(_RemoteFavorite value) remoteFavorite,
    required TResult Function(_SortBy value) sortBy,
    required TResult Function(_ChangeSortOption value) changeSortOption,
  }) {
    return changeSortOption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavorites value)? getFavorites,
    TResult? Function(_StoreFavorite value)? storeFavorite,
    TResult? Function(_RemoteFavorite value)? remoteFavorite,
    TResult? Function(_SortBy value)? sortBy,
    TResult? Function(_ChangeSortOption value)? changeSortOption,
  }) {
    return changeSortOption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavorites value)? getFavorites,
    TResult Function(_StoreFavorite value)? storeFavorite,
    TResult Function(_RemoteFavorite value)? remoteFavorite,
    TResult Function(_SortBy value)? sortBy,
    TResult Function(_ChangeSortOption value)? changeSortOption,
    required TResult orElse(),
  }) {
    if (changeSortOption != null) {
      return changeSortOption(this);
    }
    return orElse();
  }
}

abstract class _ChangeSortOption implements FavoritesEvent {
  const factory _ChangeSortOption({required final SortOption sortOption}) =
      _$ChangeSortOptionImpl;

  SortOption get sortOption;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeSortOptionImplCopyWith<_$ChangeSortOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
