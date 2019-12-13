import 'package:fish_demo/filter_page/filter_item.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(
    FilterState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Color.fromRGBO(37, 42, 54, 1),
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(37, 42, 54, 1),
      title: Text('筛选'),
    ),
    body: ListView(
      children: state.filters
          .map<Widget>((item) => ListTile(
                leading: item.icon,
                trailing: item.arrowType == ArrowType.arrow
                    ? Icon(Icons.arrow_forward_ios, color: Colors.white)
                    : null,
                title: Text(
                  item.title,
                  style: TextStyle(color: Colors.white),
                ),
              ))
          .toList(),
    ),
  );
}
