import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ModuleState> buildReducer() {
  return asReducer(
    <Object, Reducer<ModuleState>>{
      ModuleAction.action: _onAction,
    },
  );
}

ModuleState _onAction(ModuleState state, Action action) {
  final ModuleState newState = state.clone();
  return newState;
}
