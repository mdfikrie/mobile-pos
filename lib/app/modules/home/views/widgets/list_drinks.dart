import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/colors.dart';
import '../../../../routes/app_pages.dart';

class ListDrinks extends StatelessWidget {
  const ListDrinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      childAspectRatio: 4 / 5,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      padding: EdgeInsets.symmetric(horizontal: 20),
      crossAxisCount: 2,
      children: List.generate(
        10,
        (index) => GestureDetector(
          onTap: () {
            Get.toNamed(Routes.DETAIL_PRODUCT);
          },
          child: Container(
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
                  'assets/images/tea.png',
                  width: 140,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Es Teh Manis',
                    maxLines: 2,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Rp. 2.000',
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
