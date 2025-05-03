import '../model/local/favorite_box.dart';
import '../utils/hive_manager.dart';
import 'favorite_dao.dart';

class FavoriteDaoImpl implements FavoriteDao {
  FavoriteDaoImpl();

  @override
  Future<void> addFavorite(FavoriteBox favorite) async {
    await HiveManager.favoriteBox.put(favorite.id, favorite);
  }

  @override
  Future<FavoriteBox?> getFavoriteById(int id) async {
    if (HiveManager.favoriteBox.isEmpty) {
      return null;
    }
    return HiveManager.favoriteBox.get(id);
  }
    @override
    Future<List<FavoriteBox>> getAllFavorites() async => HiveManager.favoriteBox.values.toList();

    @override
    Future<void> deleteFavorite(int id) async => HiveManager.favoriteBox.delete(id);
  }
