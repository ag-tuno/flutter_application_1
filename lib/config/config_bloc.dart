import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ConfigEvent {}

class SetPanelNumber extends ConfigEvent {
  PanelNumber? panelNumber;
  SetPanelNumber(newValue) {
    panelNumber = newValue;
  }
}

class ConfigBloc extends Bloc<ConfigEvent, PanelNumber> {
  ConfigBloc() : super(PanelNumber.five) {
    on<SetPanelNumber>((event, emit) => emit(_setPanelNumber(state, event.panelNumber)));
  }
}

PanelNumber _setPanelNumber(state, dropdownValue) {
  state = dropdownValue;
  return state;
}

// 1行に配置可能なパネル数
enum PanelNumber {
  five(5),
  ten(10);

  final int panelNumber;
  const PanelNumber(this.panelNumber);
}