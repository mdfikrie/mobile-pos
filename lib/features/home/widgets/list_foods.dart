import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/features/description-product/description_product.dart';

import '../../../const/color.dart';

class ListFoods extends StatelessWidget {
  const ListFoods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      childAspectRatio: 4 / 5,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      padding: EdgeInsets.symmetric(horizontal: 20),
      // physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      children: List.generate(
        10,
        (index) => GestureDetector(
          onTap: () {
            Get.to(() => DescriptionProduct());
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/foods.png',
                  width: 140,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Nasi Goreng Ayam Spesial',
                    maxLines: 2,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Rp. 10.000',
                    style: TextStyle(
                      color: primaryGreen,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
