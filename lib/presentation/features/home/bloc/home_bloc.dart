import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/exceptions/exceptions.dart';
import '../../../../core/extensions/either_extension.dart';
import '../../../../domain/entity/character.dart';
import '../../../../domain/use_case/get_character_use_case.dart';
import '../../../../domain/use_case/get_favorites_use_case.dart';
import '../../../../domain/use_case/store_favorite_use_case.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this.getCharactersUseCase, this.storeFavoriteUseCase, this.getFavoritesUseCase)
    : super(const _Initial()) {
    on<_GetCharacters>(_onGetCharacters);
    on<_StoreFavorite>(_onStoreFavorite);
  }

  final GetCharactersUseCase getCharactersUseCase;
  final StoreFavoriteUseCase storeFavoriteUseCase;
  final GetFavoritesUseCase getFavoritesUseCase;

  Future<void> _onStoreFavorite(_StoreFavorite event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.loading));
    final response = await storeFavoriteUseCase(event.details);
    response.when(
      onError: (e) {
        print((e as LocalException).stackTrace);
        emit(state.copyWith(status: HomeStatus.failure, errorMessage: (e as LocalException).stackTrace.toString()));
      },
      onSuccess: (data) {
        final newCache = List<CharacterDetails>.from(state.cachedFavorites);
        newCache.add(event.details);
        emit(state.copyWith(status: HomeStatus.success, cachedFavorites: newCache));
      },
    );
  }

  Future<void> _onGetCharacters(_GetCharacters event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.loading));
    final response = await getCharactersUseCase();
    response.when(
      onError: (e) {
        emit(state.copyWith(status: HomeStatus.failure, errorMessage: e.toString()));
      },
      onSuccess: (data) {
        emit(state.copyWith(status: HomeStatus.success, charactersData: data));
      },
    );

    final cached = await getFavoritesUseCase();
    cached.when(
      onError: (e) {
        emit(state.copyWith(status: HomeStatus.failure, errorMessage: e.toString()));
      },
      onSuccess: (data) {
        emit(state.copyWith(status: HomeStatus.success, cachedFavorites: data));
      },
    );
  }
}
