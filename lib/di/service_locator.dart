import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/constants/hive_keys.dart';
import '../data/dao/character_dao.dart';
import '../data/dao/character_dao_impl.dart';
import '../data/data_source/local/character_local_data_source.dart';
import '../data/data_source/local/character_local_data_source_impl.dart';
import '../data/data_source/remote/character_remote_data_source.dart';
import '../data/data_source/remote/character_remote_data_source_impl.dart';
import '../data/model/local/character_details_box.dart';
import '../data/repository/local/character_local_repository_impl.dart';
import '../data/repository/remote/character_remote_repository_impl.dart';
import '../data/service/hive_service.dart';
import '../data/service/hive_service_impl.dart';
import '../data/service/preference_service.dart';
import '../data/service/preference_service_impl.dart';
import '../domain/repository/local/character_local_repository.dart';
import '../domain/repository/remote/character_remote_repository.dart';
import '../domain/use_case/delete_favorite_use_case.dart';
import '../domain/use_case/get_character_use_case.dart';
import '../domain/use_case/get_favorites_use_case.dart';
import '../domain/use_case/store_favorite_use_case.dart';
import '../network/client/api_client.dart';
import '../network/constants/api_constants.dart';
import '../network/service/character_service.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async{
  _configureGeneralDependencies();
  await _configureServices();
  _configureRepositories();
  _configureDataSources();
  _configureUseCases();
}

void _configureGeneralDependencies() {
  getIt.registerLazySingleton<PreferencesService>(
    () => PreferencesServiceImp(sharedPreferences: SharedPreferences.getInstance()),
  );
}

Future<void> _configureServices() async{
  getIt.registerLazySingleton<HiveService>(() => HiveServiceImpl());
  final hiveService = getIt<HiveService>();
  await hiveService.openBox<CharacterDetailsBox>(HiveKeys.favorites);
  await hiveService.openBox<CharacterDetailsBox>(HiveKeys.location);
  await hiveService.openBox<CharacterDetailsBox>(HiveKeys.origin);
  getIt.registerFactory<CharacterDAO>(() => CharacterDaoImpl(getIt<HiveService>().getBox(HiveKeys.favorites)));
  getIt.registerLazySingleton<ApiClient>(() => ApiClient(baseUrl: ApiConstants.baseURL));

  getIt.registerLazySingleton(() => CharacterService.create(getIt<ApiClient>().client));
}

void _configureRepositories() {
  getIt.registerFactory<CharacterRemoteRepository>(() => CharacterRemoteRepositoryImpl(getIt()));
  getIt.registerFactory<CharacterLocalRepository>(() => CharacterLocalRepositoryImpl(getIt()));
}

void _configureDataSources() {
  getIt.registerFactory<CharacterRemoteDataSource>(() => CharacterRemoteDataSourceImpl(getIt()));

  getIt.registerFactory<CharacterLocalDataSource>(() => CharacterLocalDataSourceImpl(getIt()));
}

void _configureUseCases() {
  getIt
    ..registerFactory<GetCharactersUseCase>(() => GetCharactersUseCase(getIt()))
    ..registerFactory<GetFavoritesUseCase>(() => GetFavoritesUseCase(getIt()))
    ..registerFactory<StoreFavoriteUseCase>(() => StoreFavoriteUseCase(getIt()))
    ..registerFactory<DeleteFavoriteUseCase>(() => DeleteFavoriteUseCase(getIt()));
}
