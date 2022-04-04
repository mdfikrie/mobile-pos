part of 'cart_cubit.dart';

abstract class CartState extends Equatable {
  const CartState();
}

class CartInitial extends CartState {
  @override
  List<Object> get props => [];
}

class CartLoaded extends CartState {
  late final jumlah;
  CartLoaded({this.jumlah});
  @override
  List<Object> get props => [jumlah];
}
