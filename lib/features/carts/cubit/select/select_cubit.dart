import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_pos/models/cart_model.dart';

part 'select_state.dart';

class SelectCubit extends Cubit<SelectState> {
  SelectCubit() : super(SelectInitial());

  void selectItem(int index) async {
    var selectItem = mapCartData[index].select!;
    selectItem = true;
    mapCartData[index].select = selectItem;
    emit(await SelectLoaded().copyWith(mapCartData[index].select));
    print('terselect');
    print(mapCartData[index].select);
  }

  void unSelectItem(int index) async {
    var selectItem = mapCartData[index].select!;
    selectItem = false;
    mapCartData[index].select = selectItem;
    emit(await SelectLoaded().copyWith(mapCartData[index].select));
    print('unselect');
    print(mapCartData[index].select);
  }
}
