import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mobile_pos/app/modules/cart/views/cart_view.dart';
import 'package:mobile_pos/app/modules/favorite/views/favorite_view.dart';
import 'package:mobile_pos/app/modules/home/views/home_view.dart';
import 'package:mobile_pos/app/modules/profile/views/profile_view.dart';

import '../../../constants/colors.dart';
import '../controllers/navigator_controller.dart';

class NavigatorView extends GetView<NavigatorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller.pageController,
          children: [
            HomeView(),
            FavoriteView(),
            CartView(),
            ProfileView(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: primaryGreen,
          selectedLabelStyle: TextStyle(color: Colors.blue, fontSize: 12),
          unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 12),
          currentIndex: controller.currentIndex.value,
          onTap: (value) {
            controller.pageController.jumpToPage(value);
            controller.currentIndex.value = value;
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
