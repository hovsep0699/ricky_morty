part of 'home_bloc.dart';


@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getCharacters() = _GetCharacters;
  const factory HomeEvent.storeFavorite({required CharacterDetails details}) = _StoreFavorite;
}

