part of 'select_cubit.dart';

abstract class SelectState extends Equatable {
  const SelectState();
}

class SelectInitial extends SelectState {
  @override
  List<Object> get props => [];
}

class SelectLoaded extends SelectState {
  late final bool? select;
  SelectLoaded({this.select});
  SelectLoaded copyWith(bool? select) {
    return SelectLoaded(select: select ?? this.select);
  }

  @override
  List<Object> get props => [select!];
}
