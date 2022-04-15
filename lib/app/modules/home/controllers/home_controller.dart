import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/app/data/database/favorite/favorite_database.dart';
import 'package:mobile_pos/app/data/database/favorite/favorite_model.dart';
import 'package:mobile_pos/app/data/models/product_model.dart';
import 'package:mobile_pos/app/utils/interceptor/interceptor_api.dart';
import 'package:dio/src/response.dart' as dioResponse;

class HomeController extends GetxController {
  PageController pageController = PageController();
  final favoriteDatabase = FavoriteDatabase();
  Dio get dio => _dio();
  Dio _dio() {
    var dio = Dio();
    dio.interceptors.add(InterceptorApi());
    return dio;
  }

  var listProduct = <ProductModel>[].obs;
  var isLoading = false.obs;

  final count = 0.obs;
  @override
  void onInit() async {
    pageController = PageController();
    isLoading.value = true;
    await loadProduct();
    isLoading.value = false;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future<void> loadProduct() async {
    dioResponse.Response response = await dio.get('product');
    final result = (response.data as Map<String, dynamic>)['data'] as List;
    listProduct.value =
        await result.map((e) => ProductModel.fromJson(e)).toList();
    print(listProduct[0].nama);
  }

  Future<void> addFavorite(FavoriteModel favorite) async {
    await favoriteDatabase
        .addFavorite(favorite)
        .then((value) => print('add to database success'));
  }
}
