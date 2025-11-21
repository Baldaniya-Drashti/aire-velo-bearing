import 'package:shared_preferences/shared_preferences.dart';

class FavouriteRepository {
  static const String favKey = "fav_products";

  Future<void> toggleFavourite(int productId) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> ids = prefs.getStringList(favKey) ?? [];

    if (ids.contains(productId.toString())) {
      ids.remove(productId.toString());
    } else {
      ids.add(productId.toString());
    }

    await prefs.setStringList(favKey, ids);
  }

  Future<bool> isFavourite(int productId) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> ids = prefs.getStringList(favKey) ?? [];
    return ids.contains(productId.toString());
  }
}
