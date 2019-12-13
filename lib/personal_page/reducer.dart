import 'package:fish_demo/api.dart';
import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<PersonalState> buildReducer() {
  return asReducer(
    <Object, Reducer<PersonalState>>{
      PersonalAction.action: _onAction,
      PersonalAction.changeTab: _onChangeTabbar,
      PersonalAction.loadPersonalInfo: _onLoadPersonalInfo,
    },
  );
}

PersonalState _onAction(PersonalState state, Action action) {
  final PersonalState newState = state.clone();
  return newState;
}

PersonalState _onChangeTabbar(PersonalState state, Action action) {
  final PersonalState newState = state.clone();
  newState.selectIndex = action.payload;
  return newState;
}

PersonalState _onLoadPersonalInfo(PersonalState state, Action action) {
  final PersonalState newState = state.clone();
  newState.selectIndex = 0;
  newState.personalInfo = Api().getPersonalInfo();
  return newState;
}
