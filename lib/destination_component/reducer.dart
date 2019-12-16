import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<DestinationState> buildReducer() {
  return asReducer(
    <Object, Reducer<DestinationState>>{
      DestinationAction.action: _onAction,
    },
  );
}

DestinationState _onAction(DestinationState state, Action action) {
  final DestinationState newState = state.clone();
  return newState;
}
