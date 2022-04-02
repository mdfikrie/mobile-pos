import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/const/color.dart';
import 'package:mobile_pos/features/bottom-navigation/cubit/cubit/bottom_nav_cubit.dart';
import 'package:mobile_pos/features/carts/carts.dart';
import 'package:mobile_pos/features/favorite/favorite.dart';
import 'package:mobile_pos/features/home/home_screen.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return SafeArea(
      child: BlocBuilder<BottomNavCubit, BottomNavState>(
        builder: (context, state) {
          if (state is BottomNavLoaded) {
            return Scaffold(
              body: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: pageController,
                children: [
                  HomeScreen(),
                  FavoriteScreen(),
                  CartsScreen(),
                  HomeScreen(),
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Colors.grey,
                selectedItemColor: primaryGreen,
                selectedLabelStyle: TextStyle(color: Colors.blue, fontSize: 12),
                unselectedLabelStyle:
                    TextStyle(color: Colors.grey, fontSize: 12),
                currentIndex: state.index,
                onTap: (value) {
                  context.read<BottomNavCubit>().selectNavigation(value);
                  pageController.jumpToPage(value);
                },
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    label: 'Favorite',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart),
                    label: 'Cart',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
