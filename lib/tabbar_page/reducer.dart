import 'package:fish_demo/module_component/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TabbarState> buildReducer() {
  return asReducer(
    <Object, Reducer<TabbarState>>{
      TabbarAction.action: _onAction,
      TabbarAction.showTabbarItems: _showTabbarItems,
      TabbarAction.changeTabbar: _changeTabbarIndex,
    },
  );
}

TabbarState _onAction(TabbarState state, Action action) {
  final TabbarState newState = state.clone();
  return newState;
}

TabbarState _changeTabbarIndex(TabbarState state, Action action) {
  final TabbarState newState = state.clone();
  newState.currentIndex = action.payload;
  return newState;
}

TabbarState _showTabbarItems(TabbarState state, Action action) {
  final List<ModuleState> items = action.payload ?? <ItemBean>[];
  final TabbarState newState = state.clone();
  newState.currentIndex = 0;
  newState.tabbarItems = items;
  return newState;
}
