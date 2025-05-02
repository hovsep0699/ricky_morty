part of 'home_bloc.dart';


@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    Character? charactersData,
    @Default([]) List<CharacterDetails> cachedFavorites,
    String? errorMessage
  }) = _Initial;
}

enum HomeStatus {initial, loading, failure, success}