import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(
    ModuleState state, Dispatch dispatch, ViewService viewService) {
  // return Scaffold(
  //   appBar: AppBar(title: Text('${state.title}'),),
  //   body: Container(
  //     child: Center(
  //       child: Text('${state.title}'),
  //     ),
  //   ),
  // );

  final List<Widget> pages = <Widget>[
    viewService.buildComponent('vehicle'),
    viewService.buildComponent('destination'),
    viewService.buildComponent('discover'),
    viewService.buildComponent('activity'),
    viewService.buildComponent('mine')
  ];
  return Scaffold(
    appBar: AppBar(
      title: Text('${state.title}'),
    ),
    body: Container(
      child: pages[state.index],
    ),
  );
}
