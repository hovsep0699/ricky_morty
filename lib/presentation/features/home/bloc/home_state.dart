part of 'home_bloc.dart';


@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    Character? charactersData,
    @Default([]) List<CharacterDetails> cachedFavorites,
    @Default(4) int maxLength,
    @Default(0) int currentPage,
    @Default(false) bool isLoadingMore,
    @Default([]) List<CharacterDetails> paginatedCharacters,
    String? errorMessage,
  }) = _Initial;
}

enum HomeStatus {initial, loading, failure, success}
