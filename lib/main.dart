import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:mobile_pos/const/color.dart';
import 'package:mobile_pos/features/bottom-navigation/bottom_navigation.dart';
import 'package:mobile_pos/features/bottom-navigation/cubit/cubit/bottom_nav_cubit.dart';
import 'package:mobile_pos/features/carts/bloc/cart_bloc.dart';
import 'package:mobile_pos/features/carts/cubit/select/select_cubit.dart';
import 'features/carts/cubit/cart/cart_cubit.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: primaryGreen,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BottomNavCubit()),
        BlocProvider(create: (context) => CartCubit()),
        BlocProvider(create: (context) => SelectCubit()),
        BlocProvider(create: (context) => CartBloc()),
      ],
      child: GetMaterialApp(
        home: BottomNavigation(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
