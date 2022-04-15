import 'package:get/get.dart';
import 'package:mobile_pos/app/data/models/product_model.dart';

class DetailProductController extends GetxController {
  late ProductModel product;

  @override
  void onInit() {
    super.onInit();
    getDetailProduct();
  }

  @override
  void onClose() {}

  Future<void> getDetailProduct() async {
    product = Get.arguments;
  }
}
