import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/exceptions/exceptions.dart';
import '../../../../core/extensions/either_extension.dart';
import '../../../../domain/entity/character.dart';
import '../../../../domain/use_case/delete_favorite_use_case.dart';
import '../../../../domain/use_case/get_favorites_use_case.dart';
import '../../../../domain/use_case/store_favorite_use_case.dart';
import '../../../utils/helpers/sort_functions.dart';
import '../../../utils/helpers/sort_options.dart';

part 'favorites_state.dart';

part 'favorites_event.dart';

part 'favorites_bloc.freezed.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc(this.storeFavoriteUseCase, this.getFavoritesUseCase, this.deleteFavoriteUseCase)
    : super(const _Initial()) {
    on<_StoreFavorite>(_onStoreFavorite);
    on<_GetFavorites>(_onGetFavorites);
    on<_RemoteFavorite>(_onRemoveFavorite);
    on<_ChangeSortOption>(_onChangeSortOption);
    on<_SortBy>(_onSortBy);
  }

  final StoreFavoriteUseCase storeFavoriteUseCase;
  final GetFavoritesUseCase getFavoritesUseCase;
  final DeleteFavoriteUseCase deleteFavoriteUseCase;


  Future<void> _onChangeSortOption(_ChangeSortOption event, Emitter<FavoritesState> emit) async {
    emit(state.copyWith(selectedSortOption: event.sortOption));
  }

  Future<void> _onSortBy(_SortBy event, Emitter<FavoritesState> emit) async {
    final sorted = SortFunctions.sortCharacters(state.favorites, event.sortOption);
    print("PPPP::: ${sorted.map((e) => e.species)}");
    emit(
      state.copyWith(
        favorites: sorted,
        selectedSortOption: event.sortOption
      ),
    );
  }


  Future<void> _onStoreFavorite(_StoreFavorite event, Emitter<FavoritesState> emit) async {
    emit(state.copyWith(status: FavoritesStatus.loading));
    final response = await storeFavoriteUseCase(event.detail);
    response.when(
      onError: (e) {
        print((e as LocalException).stackTrace);
        emit(state.copyWith(status: FavoritesStatus.failure, errorMessage: e.stackTrace.toString()));
      },
      onSuccess: (data) {
        final newCache = List<CharacterDetails>.from(state.favorites);
        newCache.add(event.detail);
        emit(state.copyWith(status: FavoritesStatus.success, favorites: newCache));
      },
    );
  }

  Future<void> _onRemoveFavorite(_RemoteFavorite event, Emitter<FavoritesState> emit) async {
    emit(state.copyWith(status: FavoritesStatus.loading));
    final response = await deleteFavoriteUseCase(event.id);
    response.when(
      onError: (e) {
        print((e as LocalException).stackTrace);
        emit(state.copyWith(status: FavoritesStatus.failure, errorMessage: e.stackTrace.toString()));
      },
      onSuccess: (data) {
        final newCache = List<CharacterDetails>.from(state.favorites);
        newCache.removeWhere((fav) => fav.id == event.id);
        emit(state.copyWith(status: FavoritesStatus.success, favorites: newCache));
      },
    );
  }

  Future<void> _onGetFavorites(_GetFavorites event, Emitter<FavoritesState> emit) async {
    emit(state.copyWith(status: FavoritesStatus.loading));
    final response = await getFavoritesUseCase();
    response.when(
      onError: (e) {
        print((e as LocalException).stackTrace);
        emit(state.copyWith(status: FavoritesStatus.failure, errorMessage: e.stackTrace.toString()));
      },
      onSuccess: (data) {
        emit(state.copyWith(status: FavoritesStatus.success, favorites: data));
      },
    );
  }
}
