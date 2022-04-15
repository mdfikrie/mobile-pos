import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../../../constants/colors.dart';
import '../../../../routes/app_pages.dart';
import '../../controllers/home_controller.dart';

class ListDrinks extends GetView<HomeController> {
  const ListDrinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GridView.count(
        shrinkWrap: true,
        childAspectRatio: 4 / 5.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.symmetric(horizontal: 10),
        crossAxisCount: 2,
        children: List.generate(
          controller.listProduct.length,
          (index) => GestureDetector(
            onTap: () {
              Get.toNamed(Routes.DETAIL_PRODUCT,
                  arguments: controller.listProduct[index]);
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
                      Image.network(
                        '${controller.listProduct[index].path}',
                        width: 140,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${controller.listProduct[index].nama}',
                          maxLines: 2,
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${NumberFormat.currency(locale: 'ID', decimalDigits: 0, symbol: 'Rp. ').format(int.parse(controller.listProduct[index].harga!))}',
                          style: GoogleFonts.roboto(
                            color: primaryGreen,
                            fontSize: 13,
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
      ),
    );
  }
}
