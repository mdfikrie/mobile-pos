import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:mobile_pos/features/carts/bloc/cart_bloc.dart';
import 'package:mobile_pos/features/carts/cubit/select/select_cubit.dart';
import 'package:mobile_pos/models/cart_model.dart';

import '../../../const/color.dart';
import '../../description-product/description_product.dart';

class ListCarts extends StatelessWidget {
  const ListCarts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataCart.length,
      itemBuilder: (context, index) {
        return Container(
          height: 120,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
          child: Stack(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => DescriptionProduct());
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: primaryGreen,
                      ),
                      child: Image.asset('${mapCartData[index].image}'),
                    ),
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
                            GestureDetector(
                              onTap: () {
                                Get.to(() => DescriptionProduct());
                              },
                              child: Text(
                                '${mapCartData[index].name}',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '${mapCartData[index].harga}',
                              style: TextStyle(
                                fontSize: 14,
                                color: primaryGreen,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // context
                                  //     .read<CartCubit>()
                                  //     .decrementCart(index);
                                  context
                                      .read<CartBloc>()
                                      .add(RemoveEvent(index: index));
                                },
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: grey200,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text('-'),
                                ),
                              ),
                              SizedBox(width: 10),
                              BlocBuilder<CartBloc, CartState>(
                                builder: (context, state) {
                                  if (state is CartLoaded) {
                                    return Text('${mapCartData[index].jumlah}');
                                  } else {
                                    return Text('${mapCartData[index].jumlah}');
                                  }
                                },
                              ),
                              SizedBox(width: 10),
                              GestureDetector(
                                onTap: () {
                                  context
                                      .read<CartBloc>()
                                      .add(AddEvent(index: index));
                                },
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: grey200,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text('+'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      if (mapCartData[index].select == false) {
                        context.read<SelectCubit>().selectItem(index);
                      } else {
                        context.read<SelectCubit>().unSelectItem(index);
                      }
                    },
                    child: BlocBuilder<SelectCubit, SelectState>(
                      builder: (context, state) {
                        print(state);
                        if (state is SelectLoaded) {
                          return mapCartData[index].select == true
                              ? Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    color: primaryGreen,
                                    border: Border.all(color: primaryGreen),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                )
                              : Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: primaryGreen),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                );
                        } else {
                          return Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              border: Border.all(color: primaryGreen),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
