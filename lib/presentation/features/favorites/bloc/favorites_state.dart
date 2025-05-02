part of 'favorites_bloc.dart';


@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState({
    @Default(FavoritesStatus.initial) FavoritesStatus status,
    @Default([]) List<CharacterDetails> favorites,
    String? errorMessage
  }) = _Initial;
}

enum FavoritesStatus {initial, loading, failure, success}