import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_pos/models/cart_model.dart';

part 'select_state.dart';

class SelectCubit extends Cubit<SelectState> {
  SelectCubit() : super(SelectLoaded(select: false));

  void selectItem(int index) {
    var selectItem = mapCartData[index].select!;
    selectItem = true;
    mapCartData[index].select = selectItem;
    emit(SelectLoaded(select: true));
    print('terselect');
  }

  void unSelectItem(int index) {
    var selectItem = mapCartData[index].select!;
    selectItem = false;
    mapCartData[index].select = selectItem;
    emit(SelectLoaded(select: false));
    print('unselect');
  }
}
