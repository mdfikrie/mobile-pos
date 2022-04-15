import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../../constants/colors.dart';
import '../../controllers/detail_product_controller.dart';

class ContentProduct extends GetView<DetailProductController> {
  const ContentProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          height: Get.height * 0.5,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: primaryGreen,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 10,
                offset: Offset(2, 2),
              ),
              BoxShadow(
                color: Colors.white,
                blurRadius: 10,
                offset: Offset(-5, -5),
              ),
            ],
            image: DecorationImage(
              image: NetworkImage(
                '${controller.product.path}',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '${controller.product.nama}',
            style: GoogleFonts.roboto(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '${NumberFormat.currency(locale: 'ID', symbol: 'Rp. ', decimalDigits: 0).format(int.parse(controller.product.harga!))}',
            style: GoogleFonts.roboto(
              color: primaryGreen,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '${controller.product.keterangan}',
            textAlign: TextAlign.justify,
            style: GoogleFonts.poppins(fontSize: 16, color: Colors.black54),
          ),
        ),
        SizedBox(height: 60),
      ],
    );
  }
}
