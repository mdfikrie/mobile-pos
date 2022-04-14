import 'package:get/get.dart';

import 'package:mobile_pos/app/modules/cart/bindings/cart_binding.dart';
import 'package:mobile_pos/app/modules/cart/views/cart_view.dart';
import 'package:mobile_pos/app/modules/detail_product/bindings/detail_product_binding.dart';
import 'package:mobile_pos/app/modules/detail_product/views/detail_product_view.dart';
import 'package:mobile_pos/app/modules/favorite/bindings/favorite_binding.dart';
import 'package:mobile_pos/app/modules/favorite/views/favorite_view.dart';
import 'package:mobile_pos/app/modules/home/bindings/home_binding.dart';
import 'package:mobile_pos/app/modules/home/views/home_view.dart';
import 'package:mobile_pos/app/modules/navigator/bindings/navigator_binding.dart';
import 'package:mobile_pos/app/modules/navigator/views/navigator_view.dart';
import 'package:mobile_pos/app/modules/profile/bindings/profile_binding.dart';
import 'package:mobile_pos/app/modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATOR,
      page: () => NavigatorView(),
      binding: NavigatorBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE,
      page: () => FavoriteView(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PRODUCT,
      page: () => DetailProductView(),
      binding: DetailProductBinding(),
    ),
  ];
}
