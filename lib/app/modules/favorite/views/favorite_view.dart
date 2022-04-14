import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../controllers/favorite_controller.dart';
import 'widgets/list_favorite.dart';

class FavoriteView extends GetView<FavoriteController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: primaryGreen,
        title: Text('Favorite'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListFavorite(),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
