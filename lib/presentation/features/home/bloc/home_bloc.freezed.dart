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
    required TResult Function(bool internetStatus) getCharacters,
    required TResult Function(CharacterDetails details) storeFavorite,
    required TResult Function(bool internetStatus, int page) loadMoreCharacters,
    required TResult Function(List<CharacterDetails> pagination)
    changePagination,
    required TResult Function(List<CharacterDetails> pagination)
    resetPaginationState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool internetStatus)? getCharacters,
    TResult? Function(CharacterDetails details)? storeFavorite,
    TResult? Function(bool internetStatus, int page)? loadMoreCharacters,
    TResult? Function(List<CharacterDetails> pagination)? changePagination,
    TResult? Function(List<CharacterDetails> pagination)? resetPaginationState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool internetStatus)? getCharacters,
    TResult Function(CharacterDetails details)? storeFavorite,
    TResult Function(bool internetStatus, int page)? loadMoreCharacters,
    TResult Function(List<CharacterDetails> pagination)? changePagination,
    TResult Function(List<CharacterDetails> pagination)? resetPaginationState,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_StoreFavorite value) storeFavorite,
    required TResult Function(_LoadMoreCharacters value) loadMoreCharacters,
    required TResult Function(_ChangePagination value) changePagination,
    required TResult Function(_ResetPagination value) resetPaginationState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_StoreFavorite value)? storeFavorite,
    TResult? Function(_LoadMoreCharacters value)? loadMoreCharacters,
    TResult? Function(_ChangePagination value)? changePagination,
    TResult? Function(_ResetPagination value)? resetPaginationState,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_StoreFavorite value)? storeFavorite,
    TResult Function(_LoadMoreCharacters value)? loadMoreCharacters,
    TResult Function(_ChangePagination value)? changePagination,
    TResult Function(_ResetPagination value)? resetPaginationState,
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
  @useResult
  $Res call({bool internetStatus});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? internetStatus = null}) {
    return _then(
      _$GetCharactersImpl(
        internetStatus:
            null == internetStatus
                ? _value.internetStatus
                : internetStatus // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc

class _$GetCharactersImpl implements _GetCharacters {
  const _$GetCharactersImpl({required this.internetStatus});

  @override
  final bool internetStatus;

  @override
  String toString() {
    return 'HomeEvent.getCharacters(internetStatus: $internetStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCharactersImpl &&
            (identical(other.internetStatus, internetStatus) ||
                other.internetStatus == internetStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, internetStatus);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCharactersImplCopyWith<_$GetCharactersImpl> get copyWith =>
      __$$GetCharactersImplCopyWithImpl<_$GetCharactersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool internetStatus) getCharacters,
    required TResult Function(CharacterDetails details) storeFavorite,
    required TResult Function(bool internetStatus, int page) loadMoreCharacters,
    required TResult Function(List<CharacterDetails> pagination)
    changePagination,
    required TResult Function(List<CharacterDetails> pagination)
    resetPaginationState,
  }) {
    return getCharacters(internetStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool internetStatus)? getCharacters,
    TResult? Function(CharacterDetails details)? storeFavorite,
    TResult? Function(bool internetStatus, int page)? loadMoreCharacters,
    TResult? Function(List<CharacterDetails> pagination)? changePagination,
    TResult? Function(List<CharacterDetails> pagination)? resetPaginationState,
  }) {
    return getCharacters?.call(internetStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool internetStatus)? getCharacters,
    TResult Function(CharacterDetails details)? storeFavorite,
    TResult Function(bool internetStatus, int page)? loadMoreCharacters,
    TResult Function(List<CharacterDetails> pagination)? changePagination,
    TResult Function(List<CharacterDetails> pagination)? resetPaginationState,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(internetStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_StoreFavorite value) storeFavorite,
    required TResult Function(_LoadMoreCharacters value) loadMoreCharacters,
    required TResult Function(_ChangePagination value) changePagination,
    required TResult Function(_ResetPagination value) resetPaginationState,
  }) {
    return getCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_StoreFavorite value)? storeFavorite,
    TResult? Function(_LoadMoreCharacters value)? loadMoreCharacters,
    TResult? Function(_ChangePagination value)? changePagination,
    TResult? Function(_ResetPagination value)? resetPaginationState,
  }) {
    return getCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_StoreFavorite value)? storeFavorite,
    TResult Function(_LoadMoreCharacters value)? loadMoreCharacters,
    TResult Function(_ChangePagination value)? changePagination,
    TResult Function(_ResetPagination value)? resetPaginationState,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(this);
    }
    return orElse();
  }
}

abstract class _GetCharacters implements HomeEvent {
  const factory _GetCharacters({required final bool internetStatus}) =
      _$GetCharactersImpl;

  bool get internetStatus;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCharactersImplCopyWith<_$GetCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(bool internetStatus) getCharacters,
    required TResult Function(CharacterDetails details) storeFavorite,
    required TResult Function(bool internetStatus, int page) loadMoreCharacters,
    required TResult Function(List<CharacterDetails> pagination)
    changePagination,
    required TResult Function(List<CharacterDetails> pagination)
    resetPaginationState,
  }) {
    return storeFavorite(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool internetStatus)? getCharacters,
    TResult? Function(CharacterDetails details)? storeFavorite,
    TResult? Function(bool internetStatus, int page)? loadMoreCharacters,
    TResult? Function(List<CharacterDetails> pagination)? changePagination,
    TResult? Function(List<CharacterDetails> pagination)? resetPaginationState,
  }) {
    return storeFavorite?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool internetStatus)? getCharacters,
    TResult Function(CharacterDetails details)? storeFavorite,
    TResult Function(bool internetStatus, int page)? loadMoreCharacters,
    TResult Function(List<CharacterDetails> pagination)? changePagination,
    TResult Function(List<CharacterDetails> pagination)? resetPaginationState,
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
    required TResult Function(_LoadMoreCharacters value) loadMoreCharacters,
    required TResult Function(_ChangePagination value) changePagination,
    required TResult Function(_ResetPagination value) resetPaginationState,
  }) {
    return storeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_StoreFavorite value)? storeFavorite,
    TResult? Function(_LoadMoreCharacters value)? loadMoreCharacters,
    TResult? Function(_ChangePagination value)? changePagination,
    TResult? Function(_ResetPagination value)? resetPaginationState,
  }) {
    return storeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_StoreFavorite value)? storeFavorite,
    TResult Function(_LoadMoreCharacters value)? loadMoreCharacters,
    TResult Function(_ChangePagination value)? changePagination,
    TResult Function(_ResetPagination value)? resetPaginationState,
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
abstract class _$$LoadMoreCharactersImplCopyWith<$Res> {
  factory _$$LoadMoreCharactersImplCopyWith(
    _$LoadMoreCharactersImpl value,
    $Res Function(_$LoadMoreCharactersImpl) then,
  ) = __$$LoadMoreCharactersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool internetStatus, int page});
}

/// @nodoc
class __$$LoadMoreCharactersImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadMoreCharactersImpl>
    implements _$$LoadMoreCharactersImplCopyWith<$Res> {
  __$$LoadMoreCharactersImplCopyWithImpl(
    _$LoadMoreCharactersImpl _value,
    $Res Function(_$LoadMoreCharactersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? internetStatus = null, Object? page = null}) {
    return _then(
      _$LoadMoreCharactersImpl(
        internetStatus:
            null == internetStatus
                ? _value.internetStatus
                : internetStatus // ignore: cast_nullable_to_non_nullable
                    as bool,
        page:
            null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

class _$LoadMoreCharactersImpl implements _LoadMoreCharacters {
  const _$LoadMoreCharactersImpl({
    required this.internetStatus,
    required this.page,
  });

  @override
  final bool internetStatus;
  @override
  final int page;

  @override
  String toString() {
    return 'HomeEvent.loadMoreCharacters(internetStatus: $internetStatus, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreCharactersImpl &&
            (identical(other.internetStatus, internetStatus) ||
                other.internetStatus == internetStatus) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, internetStatus, page);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreCharactersImplCopyWith<_$LoadMoreCharactersImpl> get copyWith =>
      __$$LoadMoreCharactersImplCopyWithImpl<_$LoadMoreCharactersImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool internetStatus) getCharacters,
    required TResult Function(CharacterDetails details) storeFavorite,
    required TResult Function(bool internetStatus, int page) loadMoreCharacters,
    required TResult Function(List<CharacterDetails> pagination)
    changePagination,
    required TResult Function(List<CharacterDetails> pagination)
    resetPaginationState,
  }) {
    return loadMoreCharacters(internetStatus, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool internetStatus)? getCharacters,
    TResult? Function(CharacterDetails details)? storeFavorite,
    TResult? Function(bool internetStatus, int page)? loadMoreCharacters,
    TResult? Function(List<CharacterDetails> pagination)? changePagination,
    TResult? Function(List<CharacterDetails> pagination)? resetPaginationState,
  }) {
    return loadMoreCharacters?.call(internetStatus, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool internetStatus)? getCharacters,
    TResult Function(CharacterDetails details)? storeFavorite,
    TResult Function(bool internetStatus, int page)? loadMoreCharacters,
    TResult Function(List<CharacterDetails> pagination)? changePagination,
    TResult Function(List<CharacterDetails> pagination)? resetPaginationState,
    required TResult orElse(),
  }) {
    if (loadMoreCharacters != null) {
      return loadMoreCharacters(internetStatus, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_StoreFavorite value) storeFavorite,
    required TResult Function(_LoadMoreCharacters value) loadMoreCharacters,
    required TResult Function(_ChangePagination value) changePagination,
    required TResult Function(_ResetPagination value) resetPaginationState,
  }) {
    return loadMoreCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_StoreFavorite value)? storeFavorite,
    TResult? Function(_LoadMoreCharacters value)? loadMoreCharacters,
    TResult? Function(_ChangePagination value)? changePagination,
    TResult? Function(_ResetPagination value)? resetPaginationState,
  }) {
    return loadMoreCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_StoreFavorite value)? storeFavorite,
    TResult Function(_LoadMoreCharacters value)? loadMoreCharacters,
    TResult Function(_ChangePagination value)? changePagination,
    TResult Function(_ResetPagination value)? resetPaginationState,
    required TResult orElse(),
  }) {
    if (loadMoreCharacters != null) {
      return loadMoreCharacters(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreCharacters implements HomeEvent {
  const factory _LoadMoreCharacters({
    required final bool internetStatus,
    required final int page,
  }) = _$LoadMoreCharactersImpl;

  bool get internetStatus;
  int get page;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMoreCharactersImplCopyWith<_$LoadMoreCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePaginationImplCopyWith<$Res> {
  factory _$$ChangePaginationImplCopyWith(
    _$ChangePaginationImpl value,
    $Res Function(_$ChangePaginationImpl) then,
  ) = __$$ChangePaginationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CharacterDetails> pagination});
}

/// @nodoc
class __$$ChangePaginationImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ChangePaginationImpl>
    implements _$$ChangePaginationImplCopyWith<$Res> {
  __$$ChangePaginationImplCopyWithImpl(
    _$ChangePaginationImpl _value,
    $Res Function(_$ChangePaginationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pagination = null}) {
    return _then(
      _$ChangePaginationImpl(
        pagination:
            null == pagination
                ? _value._pagination
                : pagination // ignore: cast_nullable_to_non_nullable
                    as List<CharacterDetails>,
      ),
    );
  }
}

/// @nodoc

class _$ChangePaginationImpl implements _ChangePagination {
  const _$ChangePaginationImpl({
    required final List<CharacterDetails> pagination,
  }) : _pagination = pagination;

  final List<CharacterDetails> _pagination;
  @override
  List<CharacterDetails> get pagination {
    if (_pagination is EqualUnmodifiableListView) return _pagination;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pagination);
  }

  @override
  String toString() {
    return 'HomeEvent.changePagination(pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePaginationImpl &&
            const DeepCollectionEquality().equals(
              other._pagination,
              _pagination,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_pagination),
  );

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePaginationImplCopyWith<_$ChangePaginationImpl> get copyWith =>
      __$$ChangePaginationImplCopyWithImpl<_$ChangePaginationImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool internetStatus) getCharacters,
    required TResult Function(CharacterDetails details) storeFavorite,
    required TResult Function(bool internetStatus, int page) loadMoreCharacters,
    required TResult Function(List<CharacterDetails> pagination)
    changePagination,
    required TResult Function(List<CharacterDetails> pagination)
    resetPaginationState,
  }) {
    return changePagination(pagination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool internetStatus)? getCharacters,
    TResult? Function(CharacterDetails details)? storeFavorite,
    TResult? Function(bool internetStatus, int page)? loadMoreCharacters,
    TResult? Function(List<CharacterDetails> pagination)? changePagination,
    TResult? Function(List<CharacterDetails> pagination)? resetPaginationState,
  }) {
    return changePagination?.call(pagination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool internetStatus)? getCharacters,
    TResult Function(CharacterDetails details)? storeFavorite,
    TResult Function(bool internetStatus, int page)? loadMoreCharacters,
    TResult Function(List<CharacterDetails> pagination)? changePagination,
    TResult Function(List<CharacterDetails> pagination)? resetPaginationState,
    required TResult orElse(),
  }) {
    if (changePagination != null) {
      return changePagination(pagination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_StoreFavorite value) storeFavorite,
    required TResult Function(_LoadMoreCharacters value) loadMoreCharacters,
    required TResult Function(_ChangePagination value) changePagination,
    required TResult Function(_ResetPagination value) resetPaginationState,
  }) {
    return changePagination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_StoreFavorite value)? storeFavorite,
    TResult? Function(_LoadMoreCharacters value)? loadMoreCharacters,
    TResult? Function(_ChangePagination value)? changePagination,
    TResult? Function(_ResetPagination value)? resetPaginationState,
  }) {
    return changePagination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_StoreFavorite value)? storeFavorite,
    TResult Function(_LoadMoreCharacters value)? loadMoreCharacters,
    TResult Function(_ChangePagination value)? changePagination,
    TResult Function(_ResetPagination value)? resetPaginationState,
    required TResult orElse(),
  }) {
    if (changePagination != null) {
      return changePagination(this);
    }
    return orElse();
  }
}

abstract class _ChangePagination implements HomeEvent {
  const factory _ChangePagination({
    required final List<CharacterDetails> pagination,
  }) = _$ChangePaginationImpl;

  List<CharacterDetails> get pagination;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePaginationImplCopyWith<_$ChangePaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPaginationImplCopyWith<$Res> {
  factory _$$ResetPaginationImplCopyWith(
    _$ResetPaginationImpl value,
    $Res Function(_$ResetPaginationImpl) then,
  ) = __$$ResetPaginationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CharacterDetails> pagination});
}

/// @nodoc
class __$$ResetPaginationImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ResetPaginationImpl>
    implements _$$ResetPaginationImplCopyWith<$Res> {
  __$$ResetPaginationImplCopyWithImpl(
    _$ResetPaginationImpl _value,
    $Res Function(_$ResetPaginationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pagination = null}) {
    return _then(
      _$ResetPaginationImpl(
        pagination:
            null == pagination
                ? _value._pagination
                : pagination // ignore: cast_nullable_to_non_nullable
                    as List<CharacterDetails>,
      ),
    );
  }
}

/// @nodoc

class _$ResetPaginationImpl implements _ResetPagination {
  const _$ResetPaginationImpl({
    required final List<CharacterDetails> pagination,
  }) : _pagination = pagination;

  final List<CharacterDetails> _pagination;
  @override
  List<CharacterDetails> get pagination {
    if (_pagination is EqualUnmodifiableListView) return _pagination;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pagination);
  }

  @override
  String toString() {
    return 'HomeEvent.resetPaginationState(pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPaginationImpl &&
            const DeepCollectionEquality().equals(
              other._pagination,
              _pagination,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_pagination),
  );

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPaginationImplCopyWith<_$ResetPaginationImpl> get copyWith =>
      __$$ResetPaginationImplCopyWithImpl<_$ResetPaginationImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool internetStatus) getCharacters,
    required TResult Function(CharacterDetails details) storeFavorite,
    required TResult Function(bool internetStatus, int page) loadMoreCharacters,
    required TResult Function(List<CharacterDetails> pagination)
    changePagination,
    required TResult Function(List<CharacterDetails> pagination)
    resetPaginationState,
  }) {
    return resetPaginationState(pagination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool internetStatus)? getCharacters,
    TResult? Function(CharacterDetails details)? storeFavorite,
    TResult? Function(bool internetStatus, int page)? loadMoreCharacters,
    TResult? Function(List<CharacterDetails> pagination)? changePagination,
    TResult? Function(List<CharacterDetails> pagination)? resetPaginationState,
  }) {
    return resetPaginationState?.call(pagination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool internetStatus)? getCharacters,
    TResult Function(CharacterDetails details)? storeFavorite,
    TResult Function(bool internetStatus, int page)? loadMoreCharacters,
    TResult Function(List<CharacterDetails> pagination)? changePagination,
    TResult Function(List<CharacterDetails> pagination)? resetPaginationState,
    required TResult orElse(),
  }) {
    if (resetPaginationState != null) {
      return resetPaginationState(pagination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_StoreFavorite value) storeFavorite,
    required TResult Function(_LoadMoreCharacters value) loadMoreCharacters,
    required TResult Function(_ChangePagination value) changePagination,
    required TResult Function(_ResetPagination value) resetPaginationState,
  }) {
    return resetPaginationState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_StoreFavorite value)? storeFavorite,
    TResult? Function(_LoadMoreCharacters value)? loadMoreCharacters,
    TResult? Function(_ChangePagination value)? changePagination,
    TResult? Function(_ResetPagination value)? resetPaginationState,
  }) {
    return resetPaginationState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_StoreFavorite value)? storeFavorite,
    TResult Function(_LoadMoreCharacters value)? loadMoreCharacters,
    TResult Function(_ChangePagination value)? changePagination,
    TResult Function(_ResetPagination value)? resetPaginationState,
    required TResult orElse(),
  }) {
    if (resetPaginationState != null) {
      return resetPaginationState(this);
    }
    return orElse();
  }
}

abstract class _ResetPagination implements HomeEvent {
  const factory _ResetPagination({
    required final List<CharacterDetails> pagination,
  }) = _$ResetPaginationImpl;

  List<CharacterDetails> get pagination;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPaginationImplCopyWith<_$ResetPaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  HomeStatus get status => throw _privateConstructorUsedError;
  Character? get charactersData => throw _privateConstructorUsedError;
  List<CharacterDetails> get cachedFavorites =>
      throw _privateConstructorUsedError;
  int get maxLength => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  List<CharacterDetails> get paginatedCharacters =>
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
    int maxLength,
    int currentPage,
    bool isLoadingMore,
    List<CharacterDetails> paginatedCharacters,
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
    Object? maxLength = null,
    Object? currentPage = null,
    Object? isLoadingMore = null,
    Object? paginatedCharacters = null,
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
            maxLength:
                null == maxLength
                    ? _value.maxLength
                    : maxLength // ignore: cast_nullable_to_non_nullable
                        as int,
            currentPage:
                null == currentPage
                    ? _value.currentPage
                    : currentPage // ignore: cast_nullable_to_non_nullable
                        as int,
            isLoadingMore:
                null == isLoadingMore
                    ? _value.isLoadingMore
                    : isLoadingMore // ignore: cast_nullable_to_non_nullable
                        as bool,
            paginatedCharacters:
                null == paginatedCharacters
                    ? _value.paginatedCharacters
                    : paginatedCharacters // ignore: cast_nullable_to_non_nullable
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
    int maxLength,
    int currentPage,
    bool isLoadingMore,
    List<CharacterDetails> paginatedCharacters,
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
    Object? maxLength = null,
    Object? currentPage = null,
    Object? isLoadingMore = null,
    Object? paginatedCharacters = null,
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
        maxLength:
            null == maxLength
                ? _value.maxLength
                : maxLength // ignore: cast_nullable_to_non_nullable
                    as int,
        currentPage:
            null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                    as int,
        isLoadingMore:
            null == isLoadingMore
                ? _value.isLoadingMore
                : isLoadingMore // ignore: cast_nullable_to_non_nullable
                    as bool,
        paginatedCharacters:
            null == paginatedCharacters
                ? _value._paginatedCharacters
                : paginatedCharacters // ignore: cast_nullable_to_non_nullable
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
    this.maxLength = 4,
    this.currentPage = 1,
    this.isLoadingMore = false,
    final List<CharacterDetails> paginatedCharacters = const [],
    this.errorMessage,
  }) : _cachedFavorites = cachedFavorites,
       _paginatedCharacters = paginatedCharacters;

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
  @JsonKey()
  final int maxLength;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final bool isLoadingMore;
  final List<CharacterDetails> _paginatedCharacters;
  @override
  @JsonKey()
  List<CharacterDetails> get paginatedCharacters {
    if (_paginatedCharacters is EqualUnmodifiableListView)
      return _paginatedCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paginatedCharacters);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HomeState(status: $status, charactersData: $charactersData, cachedFavorites: $cachedFavorites, maxLength: $maxLength, currentPage: $currentPage, isLoadingMore: $isLoadingMore, paginatedCharacters: $paginatedCharacters, errorMessage: $errorMessage)';
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
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            const DeepCollectionEquality().equals(
              other._paginatedCharacters,
              _paginatedCharacters,
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
    maxLength,
    currentPage,
    isLoadingMore,
    const DeepCollectionEquality().hash(_paginatedCharacters),
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
    final int maxLength,
    final int currentPage,
    final bool isLoadingMore,
    final List<CharacterDetails> paginatedCharacters,
    final String? errorMessage,
  }) = _$InitialImpl;

  @override
  HomeStatus get status;
  @override
  Character? get charactersData;
  @override
  List<CharacterDetails> get cachedFavorites;
  @override
  int get maxLength;
  @override
  int get currentPage;
  @override
  bool get isLoadingMore;
  @override
  List<CharacterDetails> get paginatedCharacters;
  @override
  String? get errorMessage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
