import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../data/models/cart_model.dart';
import '../controllers/cart_controller.dart';
import 'widgets/list_carts.dart';

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carts'),
        backgroundColor: primaryGreen,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListCarts(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: grey400,
                    offset: Offset(-1, -1),
                    blurRadius: 5,
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total: Rp. 12.000'),
                  Container(
                    height: 50,
                    width: Get.width * 0.4,
                    decoration: BoxDecoration(
                      color: primaryGreen,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Checkout (${dataCart.length})',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
