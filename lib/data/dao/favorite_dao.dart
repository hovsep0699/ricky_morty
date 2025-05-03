import '../model/local/favorite_box.dart';

abstract class FavoriteDao {
  Future<void> addFavorite(FavoriteBox favorite);
  Future<FavoriteBox?> getFavoriteById(int id);
  Future<List<FavoriteBox>> getAllFavorites();
  Future<void> deleteFavorite(int id);
}
