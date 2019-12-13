import 'package:fish_demo/list_page/item_component/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'item_component/component.dart';
import 'reducer.dart';
import 'state.dart';

class MylistAdapter extends DynamicFlowAdapter<ListState> {
  MylistAdapter()
      : super(
          pool: <String, Component<Object>>{
            'myItem': ItemComponent(),
          },
          connector: _MylistConnector(),
          reducer: buildReducer(),
        );
}

class _MylistConnector extends ConnOp<ListState, List<ItemBean>> {
  @override
  List<ItemBean> get(ListState state) {
    if (state.items?.isNotEmpty == true) {
      return state.items
          .map<ItemBean>((ItemState data) => ItemBean('myItem', data))
          .toList(growable: true);
    }
    return <ItemBean>[];
  }

  @override
  void set(ListState state, List<ItemBean> items) {
    if (items?.isNotEmpty == true) {
      state.items = List<ItemState>.from(
          items.map<ItemState>((ItemBean bean) => bean.data).toList());
    } else {
      state.items = <ItemState>[];
    }
  }

  @override
  subReducer(reducer) {
    return super.subReducer(reducer);
  }
}
