import 'package:fish_demo/module_component/component.dart';
import 'package:fish_demo/module_component/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'package:fish_demo/tabbar_page/reducer.dart';
import 'package:fish_demo/tabbar_page/state.dart';

class TabbarAdapter extends DynamicFlowAdapter<TabbarState> {
  TabbarAdapter()
      : super(
          pool: <String, Component<Object>>{
            'module': ModuleComponent(),
          },
          connector: _TabbarConnector(),
          reducer: buildReducer(),
        );
}

class _TabbarConnector extends ConnOp<TabbarState, List<ItemBean>> {
  @override
  List<ItemBean> get(TabbarState state) {
    if (state.tabbarItems?.isNotEmpty == true) {
      return state.tabbarItems
          .map<ItemBean>((ModuleState data) => ItemBean('module', data))
          .toList(growable: true);
    }
    return <ItemBean>[];
  }

  @override
  void set(TabbarState state, List<ItemBean> items) {
    if (items?.isNotEmpty == true) {
      state.tabbarItems = List<ModuleState>.from(
          items.map<ModuleState>((ItemBean bean) => bean.data).toList());
    } else {
      state.tabbarItems = <ModuleState>[];
    }
  }

  @override
  subReducer(reducer) {
    return super.subReducer(reducer);
  }
}
