import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<VehicleState> buildReducer() {
  return asReducer(
    <Object, Reducer<VehicleState>>{
      VehicleAction.action: _onAction,
    },
  );
}

VehicleState _onAction(VehicleState state, Action action) {
  final VehicleState newState = state.clone();
  return newState;
}
