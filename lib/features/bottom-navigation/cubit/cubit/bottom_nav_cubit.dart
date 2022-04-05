import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavLoaded(index: 0));

  void selectNavigation(int index) async {
    emit(BottomNavLoaded(index: index));
  }
}
