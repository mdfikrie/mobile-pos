import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_pos/models/cart_model.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  void incrementCart(int index) {
    int jumlah = mapCartData[index].jumlah!;
    jumlah = jumlah + 1;
    mapCartData[index].jumlah = jumlah;
    emit(CartLoaded(jumlah: jumlah));
  }

  void decrementCart(int index) {
    int jumlah = mapCartData[index].jumlah!;
    if (jumlah > 0) {
      jumlah = jumlah - 1;
      mapCartData[index].jumlah = jumlah;
      emit(CartLoaded(jumlah: jumlah));
    }
  }
}
