import 'package:flutter/material.dart';
import 'package:mobile_pos/const/color.dart';
import 'package:mobile_pos/features/home/widgets/list_drinks.dart';
import 'package:mobile_pos/features/home/widgets/list_foods.dart';
import 'package:mobile_pos/features/home/widgets/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/title-img.png',
                      height: 60,
                      color: primaryGreen,
                    ),
                  ),
                  SizedBox(height: 20),
                  Search(),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              child: DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: TabBar(
                  labelColor: primaryGreen,
                  labelStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: primaryGreen,
                  indicatorSize: TabBarIndicatorSize.tab,
                  onTap: (value) {
                    pageController.jumpToPage(value);
                  },
                  tabs: [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.fastfood),
                          SizedBox(width: 5),
                          Text(
                            'Food',
                          ),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.emoji_food_beverage),
                          SizedBox(width: 5),
                          Text('Drink'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          // page view
          Expanded(
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: pageController,
              onPageChanged: (value) {},
              children: [
                ListFoods(),
                ListDrinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
