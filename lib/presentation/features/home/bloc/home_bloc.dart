import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/exceptions/exceptions.dart';
import '../../../../core/extensions/either_extension.dart';
import '../../../../domain/entity/character.dart';
import '../../../../domain/use_case/get_cached_character_use_case.dart';
import '../../../../domain/use_case/get_character_use_case.dart';
import '../../../../domain/use_case/get_favorites_use_case.dart';
import '../../../../domain/use_case/store_character_use_case.dart';
import '../../../../domain/use_case/store_favorite_use_case.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this.getCharactersUseCase,
    this.storeFavoriteUseCase,
    this.getFavoritesUseCase,
    this.storeCharacterUseCase,
    this.getCachedCharacterUseCase,
  ) : super(const _Initial()) {
    on<_GetCharacters>(_onGetCharacters);
    on<_StoreFavorite>(_onStoreFavorite);
    on<_LoadMoreCharacters>(_onLoadMoreCharacters);
    on<_ChangePagination>(_onChangePagination);
    on<_ResetPagination>(_onRestPagination);
  }

  final GetCharactersUseCase getCharactersUseCase;
  final StoreFavoriteUseCase storeFavoriteUseCase;
  final StoreCharacterUseCase storeCharacterUseCase;
  final GetFavoritesUseCase getFavoritesUseCase;
  final GetCachedCharacterUseCase getCachedCharacterUseCase;

  Future<void> _onRestPagination(_ResetPagination event, Emitter<HomeState> emit) async {
    emit(state.copyWith(paginatedCharacters: [], isLoadingMore: false, currentPage: 0, maxLength: 4));
  }

  Future<void> _onChangePagination(_ChangePagination event, Emitter<HomeState> emit) async {
    emit(state.copyWith(paginatedCharacters: event.pagination));
  }

  Future<void> _onLoadMoreCharacters(_LoadMoreCharacters event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoadingMore: true));
    if (state.maxLength < (state.charactersData?.results.length ?? 0)) {
      final List<CharacterDetails> lastPag = List<CharacterDetails>.from(state.paginatedCharacters);

      final nextItems =
          state.charactersData?.results
              .skip(state.maxLength)
              .take(Constants.paginationLimit)
              .toList();
      if (nextItems != null) {
        lastPag.addAll(nextItems);
      }

      emit(
        state.copyWith(
          isLoadingMore: false,
          maxLength: state.maxLength + Constants.defaultPagination,
          paginatedCharacters: lastPag,
        ),
      );
      return;
    }
    if (event.internetStatus) {
      if (event.page > (state.charactersData?.info.pages ?? 0)) {
        emit(state.copyWith(isLoadingMore: false));
        return;
      }
      final response = await getCharactersUseCase(event.page);
      response.when(
        onError: (e) {
          emit(
            state.copyWith(
              status: HomeStatus.failure,
              maxLength: Constants.defaultPagination,
              errorMessage: e.toString(),
              isLoadingMore: false,
            ),
          );
        },
        onSuccess: (data) async {
          final List<CharacterDetails> lastPag = List<CharacterDetails>.from(
            state.paginatedCharacters,
          );
          if (state.paginatedCharacters.length < data.results.length) {
            final nextItems =
                data.results
                    .skip(state.paginatedCharacters.length)
                    .take(Constants.paginationLimit)
                    .toList();
            lastPag.addAll(nextItems);
          }
          emit(
            state.copyWith(
              status: HomeStatus.success,
              charactersData: data,
              maxLength: Constants.defaultPagination,
              paginatedCharacters: lastPag,
              isLoadingMore: false,
            ),
          );
        },
      );
      emit(state.copyWith(currentPage: event.page));
    } else if (!event.internetStatus) {
      final response = await getCachedCharacterUseCase();
      response.when(
        onError: (e) {
          emit(
            state.copyWith(
              status: HomeStatus.failure,
              errorMessage: e.toString(),
              isLoadingMore: false,
            ),
          );
        },
        onSuccess: (data) {
          print("load from Cache::: $data");
          emit(
            state.copyWith(status: HomeStatus.success, charactersData: data, isLoadingMore: false),
          );
        },
      );
    }
    emit(state.copyWith(isLoadingMore: false));
  }

  Future<void> _onStoreFavorite(_StoreFavorite event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.loading));
    final response = await storeFavoriteUseCase(event.details);
    response.when(
      onError: (e) {
        print((e as LocalException).stackTrace);
        emit(state.copyWith(status: HomeStatus.failure, errorMessage: e.stackTrace.toString()));
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
    if (event.internetStatus) {
      final response = await getCharactersUseCase(1);
      response.when(
        onError: (e) {
          emit(state.copyWith(status: HomeStatus.failure, errorMessage: e.toString()));
        },
        onSuccess: (data) async {
          final List<CharacterDetails> lastPag = List<CharacterDetails>.from(
            state.paginatedCharacters,
          );
          if (state.paginatedCharacters.length < data.results.length) {
            final nextItems =
                data.results
                    .skip(state.paginatedCharacters.length)
                    .take(Constants.paginationLimit)
                    .toList();
            lastPag.addAll(nextItems);
          }
          emit(
            state.copyWith(
              charactersData: data,
              paginatedCharacters: lastPag,
              status: HomeStatus.success,
              maxLength: Constants.defaultPagination,
            ),
          );
          final store = await storeCharacterUseCase(data);
          store.when(
            onError: (e) {
              print("Cache not written ${(e as LocalException).stackTrace}");
            },
            onSuccess: (data) {
              print("Cache successfully written");
            },
          );
        },
      );
    } else {
      final response = await getCachedCharacterUseCase();
      response.when(
        onError: (e) {
          emit(state.copyWith(status: HomeStatus.failure, errorMessage: e.toString()));
        },
        onSuccess: (data) {
          final List<CharacterDetails> lastPag = List<CharacterDetails>.from(
            state.paginatedCharacters,
          );
          if (state.paginatedCharacters.length < (data?.results.length ?? 0)) {
            final nextItems =
                data?.results
                    .skip(state.paginatedCharacters.length)
                    .take(Constants.paginationLimit)
                    .toList();
            if (nextItems != null) {
              lastPag.addAll(nextItems);
            }
          }
          print("Cached::: $data");
          emit(
            state.copyWith(
              status: HomeStatus.success,
              charactersData: data,
              maxLength: Constants.defaultPagination,
              paginatedCharacters: lastPag,
            ),
          );
        },
      );
    }

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
