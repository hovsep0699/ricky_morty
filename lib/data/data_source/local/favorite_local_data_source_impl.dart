import 'package:dartz/dartz.dart';

import '../../../core/utils/request_manager.dart';
import '../../../domain/entity/character.dart';
import '../../dao/favorite_dao.dart';
import '../../mapper/character_hive_mapper.dart';
import '../../model/local/favorite_box.dart';
import 'favorite_local_data_source.dart';

class FavoriteLocalDataSourceImpl implements FavoriteLocalDataSource {

  FavoriteLocalDataSourceImpl(this.favoriteDao);

  final FavoriteDao favoriteDao;
  final _mapper = CharacterHiveMapper();


  @override
  Future<Either<Exception, void>> addToFavorites(CharacterDetails details) async {
    return RequestManager.requestLocal<void, void>(
      onRequest: () => favoriteDao.addFavorite(_mapper.convert<CharacterDetails, FavoriteBox>(details)),
      onConvert: (response) => response,
    );
  }

  @override
  Future<Either<Exception, List<CharacterDetails>>> getAllFavorites() async {
    return RequestManager.requestLocal<List<CharacterDetails>, List<FavoriteBox>>(
      onRequest: ()  => favoriteDao.getAllFavorites(),
      onConvert: (response) => response.map((res) => _mapper.convert<FavoriteBox, CharacterDetails>(res)).toList(),
    );
  }

  @override
  Future<Either<Exception, CharacterDetails?>> getFavorite(int id) {
    return RequestManager.requestLocal(
      onRequest: () => favoriteDao.getFavoriteById(id),
      onConvert: (response) => _mapper.convert<FavoriteBox, CharacterDetails>(response),
    );
  }

  @override
  Future<Either<Exception, void>> removeFavorite(int id) {
    return RequestManager.requestLocal<void, void>(
      onRequest: () => favoriteDao.deleteFavorite(id),
      onConvert: (response) => response,
    );
  }
}
