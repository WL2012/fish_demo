import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ActivityState> buildReducer() {
  return asReducer(
    <Object, Reducer<ActivityState>>{
      ActivityAction.action: _onAction,
    },
  );
}

ActivityState _onAction(ActivityState state, Action action) {
  final ActivityState newState = state.clone();
  return newState;
}
