import 'dart:ui';

import 'package:fish_demo/filter_page/filter_item.dart';
import 'package:fish_demo/store/state.dart';
import 'package:fish_redux/fish_redux.dart';

class FilterState implements Cloneable<FilterState>, GlobalBaseState {
  List<FilterItem> filters;
  @override
  FilterState clone() {
    return FilterState()..filters = filters;
  }

  @override
  Color themeColor;
}

FilterState initState(Map<String, dynamic> args) {
  return FilterState();
}
