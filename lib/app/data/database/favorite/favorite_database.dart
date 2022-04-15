import 'package:hive/hive.dart';
import 'package:mobile_pos/app/data/database/favorite/favorite_model.dart';

class FavoriteDatabase {
  String _boxName = 'Favorite';

  Future<Box> getBox() async {
    final box = await Hive.openBox<FavoriteModel>(_boxName);
    return box;
  }

  Future<void> addFavorite(FavoriteModel favorite) async {
    final box = await getBox();
    box.add(favorite);
  }
}
