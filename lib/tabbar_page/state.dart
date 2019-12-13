import 'dart:ui';
import 'package:fish_demo/store/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'tabbar_item.dart';

class TabbarState implements Cloneable<TabbarState>, GlobalBaseState {
  List<TabbarItem> tabbarItems;
  List<Widget> bodys;
  int currentIndex;

  TabbarState({this.currentIndex, this.tabbarItems});

  @override
  TabbarState clone() {
    return TabbarState()
      ..currentIndex = currentIndex
      ..tabbarItems = tabbarItems
      ..bodys = bodys
      ..themeColor = themeColor;
  }

  @override
  Color themeColor;
}

TabbarState initState(Map<String, dynamic> args) {
  return TabbarState();
}
