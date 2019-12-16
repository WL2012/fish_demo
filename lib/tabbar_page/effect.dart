import 'package:fish_demo/module_component/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Effect<TabbarState> buildEffect() {
  return combineEffects(<Object, Effect<TabbarState>>{
    TabbarAction.action: _onAction,
    Lifecycle.initState: _initTabbarItems,
  });
}

void _onAction(Action action, Context<TabbarState> ctx) {}

void _initTabbarItems(Action action, Context<TabbarState> ctx) {
  List<ModuleState> tabbarItems = [
    ModuleState(icon: Icon(Icons.home), title: '车辆', index: 0),
    ModuleState(icon: Icon(Icons.search), title: '目的地', index: 1),
    ModuleState(icon: Icon(Icons.portrait), title: '活动', index: 2),
    ModuleState(icon: Icon(Icons.portrait), title: '服务', index: 3),
    ModuleState(icon: Icon(Icons.portrait), title: '我的', index: 4),
  ];
  ctx.dispatch(TabbarActionCreator.showTabbarItems(tabbarItems));
}
