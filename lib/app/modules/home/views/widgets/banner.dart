import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              color: primaryGreen,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/tea.png',
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  "Order you're \nfavorite \nfood and drink",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
