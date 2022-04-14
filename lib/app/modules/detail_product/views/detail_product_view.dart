import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_product_controller.dart';
import 'widgets/bottom_product.dart';
import 'widgets/content_product.dart';
import 'widgets/top_bar_product.dart';

class DetailProductView extends GetView<DetailProductController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Get.height,
          width: Get.width,
          color: Colors.white,
          child: Stack(
            children: [
              ContentProduct(),
              BottomProduct(),
              TopBarProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
