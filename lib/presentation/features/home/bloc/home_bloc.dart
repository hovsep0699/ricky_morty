import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/exceptions/exceptions.dart';
import '../../../../core/extensions/either_extension.dart';
import '../../../../data/utils/hive_manager.dart';
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

  int len = 0;
  int len2 = 0;

  Future<void> _onRestPagination(_ResetPagination event, Emitter<HomeState> emit) async {
    emit(
      state.copyWith(paginatedCharacters: [], isLoadingMore: false, currentPage: 1, maxLength: 4, status: HomeStatus.initial),
    );
  }

  Future<void> _onChangePagination(_ChangePagination event, Emitter<HomeState> emit) async {
    emit(state.copyWith(paginatedCharacters: event.pagination));
  }

  Future<void> _onLoadMoreCharacters(_LoadMoreCharacters event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoadingMore: true));
    if (state.maxLength < (state.charactersData?.results.length ?? 0)) {
      return _handleLocal(emit);
    }
    if (event.internetStatus) {
      await _handleOnline(event.page, emit);
    } else {
      await _handleOffline(event.page, emit);
    }
    emit(state.copyWith(isLoadingMore: false));
  }

  Future<void> _onStoreFavorite(_StoreFavorite event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.loading));
    final response = await storeFavoriteUseCase(event.details);
    response.when(
      onError: (e) {
        emit(state.copyWith(status: HomeStatus.failure, errorMessage: e.toString()));
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
      await HiveManager.characterBox.clear();
      await _handleOnline(1, emit);
    } else {
      await _handleOffline(1, emit);
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

  Future<void> _handleOffline(int page, Emitter<HomeState> emit) async {
    final response = await getCachedCharacterUseCase(page);
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
        len2 += data?.results.length ?? 0;
        final List<CharacterDetails> lastPag = List<CharacterDetails>.from(
          state.paginatedCharacters,
        );
        final nextItems =
            data?.results.skip(state.maxLength).take(Constants.paginationLimit).toList() ?? [];
        lastPag.addAll(nextItems);
        if (data != null) {
          emit(
            state.copyWith(
              status: HomeStatus.success,
              charactersData: data,
              maxLength: Constants.defaultPagination,
              isLoadingMore: false,
              currentPage: page,
              paginatedCharacters: lastPag,
            ),
          );
        }
        else {
          // print("")
          emit(state.copyWith(
            status: HomeStatus.success,
            charactersData: data,
            maxLength: Constants.defaultPagination,
            isLoadingMore: false,
            paginatedCharacters: lastPag,
          ));
        }
      },
    );

  }

  Future<void> _handleOnline(int page, Emitter<HomeState> emit) async {
    if (state.charactersData != null && page > state.charactersData!.info.pages) {
      emit(state.copyWith(isLoadingMore: false));
      return;
    }
    final response = await getCharactersUseCase(page);
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
        final nextItems =
            data?.results.skip(state.maxLength).take(Constants.paginationLimit).toList() ?? [];
        lastPag.addAll(nextItems);
        emit(
          state.copyWith(
            status: HomeStatus.success,
            charactersData: data,
            maxLength: Constants.defaultPagination,
            paginatedCharacters: lastPag,
            currentPage: page,
            isLoadingMore: false,
          ),
        );
        if (data != null) {
          final store = await storeCharacterUseCase(data, page);
          store.when(
            onError: (e) {
              print('Cache not written ${(e as LocalException).stackTrace}');
            },
            onSuccess: (_) {
              len += data.results.length;
              print("Cache successfully written ${len}");
            },
          );
        }
      },
    );
    emit(state.copyWith(currentPage: page));
  }

  Future<void> _handleLocal(Emitter<HomeState> emit) async {
    final List<CharacterDetails> lastPag = List<CharacterDetails>.from(state.paginatedCharacters);

    final nextItems =
    state.charactersData?.results
        .skip(state.maxLength)
        .take(Constants.paginationLimit)
        .toList() ?? [];
      lastPag.addAll(nextItems);
    emit(
      state.copyWith(
        isLoadingMore: false,
        maxLength: state.maxLength + Constants.defaultPagination,
        paginatedCharacters: lastPag,
      ),
    );
  }
}
