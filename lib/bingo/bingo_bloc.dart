import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BingoEvent {}

class TapPanel extends BingoEvent {}

class BingoBloc extends Bloc<BingoEvent, Panel> {
  BingoBloc() : super(Panel()) {
    on<TapPanel>((event, emit) => emit(_tapPanel(state, event)));
  }
}

Panel _tapPanel(panel, event) {
  panel.isTapped = true;
  panel.state = PanelState.open;
  
  switch(panel.state) {
    case PanelState.close:
      break;
    case PanelState.open:
      break;
    case PanelState.reach:
      break;
    case PanelState.clear:
      break;
    default:
      print('unknown state');
  }

  return panel;
}

class Panel {
  int number = 0;
  bool isTapped = false;
  PanelState state = PanelState.close;
}

// パネルの表示状態
enum PanelState {
  close,
  open,
  reach,
  clear
}