import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/dao/character_dao.dart';
import '../data/dao/character_dao_impl.dart';
import '../data/dao/favorite_dao.dart';
import '../data/dao/favorite_dao_impl.dart';
import '../data/data_source/local/character_local_data_source.dart';
import '../data/data_source/local/character_local_data_source_impl.dart';
import '../data/data_source/local/favorite_local_data_source.dart';
import '../data/data_source/local/favorite_local_data_source_impl.dart';
import '../data/data_source/remote/character_remote_data_source.dart';
import '../data/data_source/remote/character_remote_data_source_impl.dart';
import '../data/repository/local/character_local_repository_impl.dart';
import '../data/repository/local/favorite_local_repository_impl.dart';
import '../data/repository/remote/character_remote_repository_impl.dart';
import '../data/service/preference_service.dart';
import '../data/service/preference_service_impl.dart';
import '../domain/repository/local/character_local_repository.dart';
import '../domain/repository/local/favorite_local_repository.dart';
import '../domain/repository/remote/character_remote_repository.dart';
import '../domain/use_case/delete_favorite_use_case.dart';
import '../domain/use_case/get_cached_character_use_case.dart';
import '../domain/use_case/get_character_use_case.dart';
import '../domain/use_case/get_favorites_use_case.dart';
import '../domain/use_case/store_character_use_case.dart';
import '../domain/use_case/store_favorite_use_case.dart';
import '../network/client/api_client.dart';
import '../network/constants/api_constants.dart';
import '../network/service/character_service.dart';
import '../network/service/internet_checker.dart';

final getIt = GetIt.instance;

void configureDependencies(){
  _configureGeneralDependencies();
  _configureServices();
  _configureRepositories();
  _configureDataSources();
  _configureUseCases();
}

void _configureGeneralDependencies() {
  getIt.registerLazySingleton<PreferencesService>(
    () => PreferencesServiceImp(sharedPreferences: SharedPreferences.getInstance()),
  );
}

void _configureServices() {
  getIt.registerLazySingleton<NetworkStatusService>(() => NetworkStatusService());
  getIt.registerFactory<CharacterDAO>(() => CharacterDaoImpl());
  getIt.registerFactory<FavoriteDao>(() => FavoriteDaoImpl());
  getIt.registerLazySingleton<ApiClient>(() => ApiClient(baseUrl: ApiConstants.baseURL));

  getIt.registerLazySingleton(() => CharacterService.create(getIt<ApiClient>().client));
}

void _configureRepositories() {
  getIt.registerFactory<CharacterRemoteRepository>(() => CharacterRemoteRepositoryImpl(getIt()));
  getIt.registerFactory<CharacterLocalRepository>(() => CharacterLocalRepositoryImpl(getIt()));
  getIt.registerFactory<FavoriteLocalRepository>(() => FavoriteLocalRepositoryImpl(getIt()));
}

void _configureDataSources() {
  getIt.registerFactory<CharacterRemoteDataSource>(() => CharacterRemoteDataSourceImpl(getIt()));

  getIt.registerFactory<CharacterLocalDataSource>(() => CharacterLocalDataSourceImpl(getIt()));
  getIt.registerFactory<FavoriteLocalDataSource>(() => FavoriteLocalDataSourceImpl(getIt()));
}

void _configureUseCases() {
  getIt
    ..registerFactory<GetCharactersUseCase>(() => GetCharactersUseCase(getIt()))
    ..registerFactory<GetFavoritesUseCase>(() => GetFavoritesUseCase(getIt()))
    ..registerFactory<StoreFavoriteUseCase>(() => StoreFavoriteUseCase(getIt()))
    ..registerFactory<DeleteFavoriteUseCase>(() => DeleteFavoriteUseCase(getIt()))
    ..registerFactory<StoreCharacterUseCase>(() => StoreCharacterUseCase(getIt()))
    ..registerFactory<GetCachedCharacterUseCase>(() => GetCachedCharacterUseCase(getIt()));
}
