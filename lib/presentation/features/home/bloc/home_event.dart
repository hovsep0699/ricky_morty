part of 'home_bloc.dart';


@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getCharacters({required bool internetStatus}) = _GetCharacters;
  const factory HomeEvent.storeFavorite({required CharacterDetails details}) = _StoreFavorite;
  const factory HomeEvent.loadMoreCharacters({required bool internetStatus, required int page}) = _LoadMoreCharacters;
  const factory HomeEvent.changePagination({required List<CharacterDetails> pagination}) = _ChangePagination;
  const factory HomeEvent.resetPaginationState({required List<CharacterDetails> pagination}) = _ResetPagination;
  const factory HomeEvent.sortBy({required SortOption sortOption}) = _SortBy;
  const factory HomeEvent.changeSortOption({required SortOption sortOption}) = _ChangeSortOption;
}

