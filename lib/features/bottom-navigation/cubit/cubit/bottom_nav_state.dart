part of 'bottom_nav_cubit.dart';

abstract class BottomNavState extends Equatable {
  const BottomNavState();
}

class BottomNavInitial extends BottomNavState {
  @override
  List<Object> get props => [];
}

class BottomNavLoaded extends BottomNavState {
  late final int index;
  BottomNavLoaded({required this.index});
  @override
  List<Object> get props => [index];
}
