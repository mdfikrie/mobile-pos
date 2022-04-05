part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();
}

class AddEvent extends CartEvent {
  late final int index;
  AddEvent({required this.index});

  @override
  List<Object> get props => [index];
}

class RemoveEvent extends CartEvent {
  late final int index;
  RemoveEvent({required this.index});

  @override
  List<Object> get props => [index];
}
