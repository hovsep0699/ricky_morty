part of 'favorites_bloc.dart';


@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.getFavorites() = _GetFavorites;
  const factory FavoritesEvent.storeFavorite({required CharacterDetails detail}) = _StoreFavorite;
  const factory FavoritesEvent.remoteFavorite({required int id}) = _RemoteFavorite;
  const factory FavoritesEvent.sortBy({required SortOption sortOption}) = _SortBy;
  const factory FavoritesEvent.changeSortOption({required SortOption sortOption}) = _ChangeSortOption;
}

