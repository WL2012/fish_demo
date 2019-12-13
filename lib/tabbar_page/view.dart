import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    TabbarState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: state.themeColor,
    body: IndexedStack(
      children: state.bodys,
      index: state.currentIndex,
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: state.currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        dispatch(TabbarActionCreator.onChnageTabbar(index));
      },
      items: state.tabbarItems
          .map<BottomNavigationBarItem>((item) => BottomNavigationBarItem(
                title: Text(item.title),
                icon: item.icon,
              ))
          .toList(),
    ),
  );
}
