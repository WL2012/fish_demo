import 'package:fish_demo/entrance_page/page.dart';
import 'package:fish_demo/grid_page/page.dart';
import 'package:fish_demo/list_page/page.dart';
import 'package:fish_demo/tabbar_page/tabbar_item.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Reducer<TabbarState> buildReducer() {
  return asReducer(
    <Object, Reducer<TabbarState>>{
      TabbarAction.action: _onAction,
      TabbarAction.initTabbarItems: _initTabbarItems,
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

TabbarState _initTabbarItems(TabbarState state, Action action) {
  final TabbarState newState = state.clone();
  newState.currentIndex = 0;
  newState.tabbarItems = [
    TabbarItem(icon: Icon(Icons.home), title: 'aaa', index: 0),
    TabbarItem(icon: Icon(Icons.search), title: 'bbb', index: 1),
    TabbarItem(icon: Icon(Icons.portrait), title: 'ccc', index: 2),
  ];
  newState.bodys = [
    EntrancePage().buildPage(null),
    GridPage().buildPage(null),
    ListPage().buildPage(null)
  ];
  return newState;
}
