import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ConfigEvent {}

class SetPanelNumber extends ConfigEvent {}

class ConfigBloc extends Bloc<ConfigEvent, PanelNumber> {
  ConfigBloc() : super(PanelNumber.five) {
    on<SetPanelNumber>((event, emit) => emit(_setPanelNumber(state)));
  }
}

PanelNumber _setPanelNumber(state) {
  // TODO:set number
  return state;
}

// 1行に配置可能なパネル数
enum PanelNumber {
  five(5),
  ten(10);

  final int panelNumber;
  const PanelNumber(this.panelNumber);
}