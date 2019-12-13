import 'package:fish_demo/filter_page/filter_item.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Reducer<FilterState> buildReducer() {
  return asReducer(
    <Object, Reducer<FilterState>>{
      FilterAction.action: _onAction,
      FilterAction.loadItems: _onLoadItems,
    },
  );
}

FilterState _onAction(FilterState state, Action action) {
  final FilterState newState = state.clone();
  return newState;
}

FilterState _onLoadItems(FilterState state, Action action) {
  final FilterState newState = state.clone();
  newState.filters = <FilterItem>[
    FilterItem(
        index: 0,
        arrowType: ArrowType.arrow,
        title: '只看',
        icon: Icon(
          Icons.remove_red_eye,
          color: Colors.yellow,
        )),
    FilterItem(
        index: 0,
        arrowType: ArrowType.arrow,
        title: '职业',
        icon: Icon(
          Icons.work,
          color: Colors.yellow,
        )),
    FilterItem(
        index: 0,
        arrowType: ArrowType.arrow,
        title: '所在地',
        icon: Icon(
          Icons.location_on,
          color: Colors.yellow,
        )),
    FilterItem(
        index: 0,
        arrowType: ArrowType.arrow,
        title: '籍贯',
        icon: Icon(
          Icons.location_city,
          color: Colors.yellow,
        )),
    FilterItem(
        index: 0,
        arrowType: ArrowType.arrow,
        title: '星座',
        icon: Icon(
          Icons.color_lens,
          color: Colors.yellow,
        )),
    FilterItem(
        index: 0,
        arrowType: ArrowType.arrow,
        title: '身高',
        icon: Icon(
          Icons.headset,
          color: Colors.red,
        )),
  ];
  return newState;
}
