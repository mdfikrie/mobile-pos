part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  const CartState();
}

class CartInitial extends CartState {
  @override
  List<Object> get props => [];
}

class CartLoaded extends CartState {
  late final int? count;
  CartLoaded({this.count});
  CartLoaded copyWith(int? count) {
    return CartLoaded(count: count ?? this.count);
  }

  @override
  List<Object> get props => [count!];
}
