import 'package:fish_demo/activity_component/state.dart';
import 'package:fish_demo/destination_component/state.dart';
import 'package:fish_demo/discover_component/state.dart';
import 'package:fish_demo/mine_component/state.dart';
import 'package:fish_demo/module_component/state.dart';
import 'package:fish_demo/store/state.dart';
import 'package:fish_demo/vehicle_component/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class TabbarState implements Cloneable<TabbarState>, GlobalBaseState {
  List<ModuleState> tabbarItems;
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

class VehicleConnector extends ConnOp<TabbarState, VehicleState>
    with ReselectMixin<TabbarState, VehicleState> {
  @override
  VehicleState computed(TabbarState state) {
    return VehicleState();
  }

  @override
  List<dynamic> factors(TabbarState state) {
    return <int>[];
  }

  @override
  void set(TabbarState state, VehicleState subState) {
    throw Exception('Unexcepted to set TabbarState from VehicleState');
  }
}

class DestinationConnector extends ConnOp<TabbarState, DestinationState>
    with ReselectMixin<TabbarState, DestinationState> {
  @override
  DestinationState computed(TabbarState state) {
    return DestinationState()..themeColor = state.themeColor;
  }

  @override
  List<dynamic> factors(TabbarState state) {
    return <int>[];
  }

  @override
  void set(TabbarState state, DestinationState subState) {
    throw Exception('Unexcepted to set TabbarState from DestinationState');
  }
}

class ActivityConnector extends ConnOp<TabbarState, ActivityState>
    with ReselectMixin<TabbarState, ActivityState> {
  @override
  ActivityState computed(TabbarState state) {
    return ActivityState();
  }

  @override
  List<dynamic> factors(TabbarState state) {
    return <int>[];
  }

  @override
  void set(TabbarState state, ActivityState subState) {
    throw Exception('Unexcepted to set TabbarState from ActivityState');
  }
}

class DiscoverConnector extends ConnOp<TabbarState, DiscoverState>
    with ReselectMixin<TabbarState, DiscoverState> {
  @override
  DiscoverState computed(TabbarState state) {
    return DiscoverState();
  }

  @override
  List<dynamic> factors(TabbarState state) {
    return <int>[];
  }

  @override
  void set(TabbarState state, DiscoverState subState) {
    throw Exception('Unexcepted to set TabbarState from DiscoverState');
  }
}

class MineConnector extends ConnOp<TabbarState, MineState>
    with ReselectMixin<TabbarState, MineState> {
  @override
  MineState computed(TabbarState state) {
    return MineState();
  }

  @override
  List<dynamic> factors(TabbarState state) {
    return <int>[];
  }

  @override
  void set(TabbarState state, MineState subState) {
    throw Exception('Unexcepted to set TabbarState from MineState');
  }
}
