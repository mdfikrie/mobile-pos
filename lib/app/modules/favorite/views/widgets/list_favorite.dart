import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

class ListFavorite extends StatelessWidget {
  const ListFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // Get.to(() => DescriptionProduct());
          },
          child: Container(
            height: 120,
            margin: EdgeInsets.only(left: 15, right: 15, top: 15),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  offset: Offset(1, 1),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primaryGreen,
                  ),
                  child: Image.asset('assets/images/foods.png'),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            'Nasi Goreng Spesial',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Rp. 15.000',
                            style: TextStyle(
                              fontSize: 14,
                              color: primaryGreen,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 30,
                          width: 30,
                          margin: EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: grey300),
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: primaryGreen,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
