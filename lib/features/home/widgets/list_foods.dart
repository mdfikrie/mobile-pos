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
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(1, 1),
                    ),
                  ],
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
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
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: grey300),
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    color: primaryGreen,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
