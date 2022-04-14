import 'package:flutter/material.dart';
import '../../../../constants/colors.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: EdgeInsets.only(right: 7),
      decoration: BoxDecoration(
        color: grey300,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                hintText: 'Search food or drink..',
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: grey500,
                ),
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3,
                ),
              ],
            ),
            child: Icon(
              Icons.search,
              color: primaryGreen,
            ),
          ),
        ],
      ),
    );
  }
}
