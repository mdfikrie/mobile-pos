import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../models/cart_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<AddEvent>((event, emit) {
      int jumlah = mapCartData[event.index].jumlah!;
      jumlah = jumlah + 1;
      mapCartData[event.index].jumlah = jumlah;
      emit(CartLoaded().copyWith(jumlah));
      print(mapCartData[event.index].jumlah);
    });
    on<RemoveEvent>((event, emit) {
      int jumlah = mapCartData[event.index].jumlah!;
      if (jumlah > 0) {
        jumlah = jumlah - 1;
        mapCartData[event.index].jumlah = jumlah;
        emit(CartLoaded().copyWith(jumlah));
        print(mapCartData[event.index].jumlah);
      }
    });
  }
}
