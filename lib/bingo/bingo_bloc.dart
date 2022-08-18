import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BingoEvent {}

class TapPanel extends BingoEvent {}
 

class BingoBloc extends Bloc<BingoEvent, bool> {
  BingoBloc() : super(false) {
    on<TapPanel>((event, emit) => emit(state));
  }
}

class Panel {
  int number = 0;
  bool isTapped = false;
  PanelState state = PanelState.close;
}

// パネルの状態
enum PanelState {
  close,
  open,
  reach,
  clear
}