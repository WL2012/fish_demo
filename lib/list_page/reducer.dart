import 'package:fish_demo/list_page/item_component/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ListState> buildReducer() {
  return asReducer(
    <Object, Reducer<ListState>>{
      ListAction.action: _onAction,
      ListAction.showItems: _onShowItems,
    },
  );
}

ListState _onAction(ListState state, Action action) {
  final ListState newState = state.clone();
  return newState;
}

ListState _onShowItems(ListState state, Action action) {
  final List<ItemState> data = action.payload ?? <ItemBean>[];
  final ListState newState = state.clone();
  newState.items = data;
  return newState;
}
