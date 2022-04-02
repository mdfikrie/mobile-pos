import 'package:flutter/material.dart';
import 'package:mobile_pos/const/color.dart';
import 'package:mobile_pos/features/favorite/widgets/list_favorite.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

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
        child: ListFavorite(),
      ),
    );
  }
}
