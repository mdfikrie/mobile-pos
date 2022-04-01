import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/const/color.dart';
import 'package:mobile_pos/features/description-product/widgets/bottom_product.dart';
import 'package:mobile_pos/features/description-product/widgets/content_product.dart';
import 'package:mobile_pos/features/description-product/widgets/top_bar_product.dart';

class DescriptionProduct extends StatelessWidget {
  const DescriptionProduct({Key? key}) : super(key: key);

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
