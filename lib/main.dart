import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:mobile_pos/app/data/database/favorite/favorite_model.dart';
import 'package:path_provider/path_provider.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final path = await getApplicationDocumentsDirectory();
  Hive.init(path.path);
  Hive.registerAdapter<FavoriteModel>(FavoriteModelAdapter());
  Hive.openBox<FavoriteModel>('Favorite');
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Mobile Pos",
      initialRoute: Routes.NAVIGATOR,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
