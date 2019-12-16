import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    TabbarState state, Dispatch dispatch, ViewService viewService) {
  final ListAdapter adapter = viewService.buildAdapter();
  final PageController pageController = PageController(initialPage: 0);
  return Scaffold(
    backgroundColor: state.themeColor,
    body: Container(
      child: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        itemBuilder: adapter.itemBuilder,
        itemCount: adapter.itemCount,
      ),
      // child: PageView(
      //   physics: const NeverScrollableScrollPhysics(),
      //   controller: pageController,
      //   children: <Widget>[
      //     viewService.buildComponent('vehicle'),
      //     viewService.buildComponent('destination'),
      //     viewService.buildComponent('discover'),
      //     viewService.buildComponent('activity'),
      //     viewService.buildComponent('mine'),
      //   ],
      // ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: state.currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        pageController.jumpToPage(index);
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
