import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

class BottomProduct extends StatelessWidget {
  const BottomProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: primaryGreen,
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Order Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.add_shopping_cart_rounded,
                color: primaryGreen,
                size: 22,
              ),
            )
          ],
        ),
      ),
    );
  }
}
