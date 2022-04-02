import 'package:flutter/material.dart';
import 'package:mobile_pos/const/color.dart';
import 'package:mobile_pos/features/carts/widgets/list_carts.dart';

class CartsScreen extends StatelessWidget {
  const CartsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carts'),
        backgroundColor: primaryGreen,
        centerTitle: true,
      ),
      body: ListCarts(),
    );
  }
}
