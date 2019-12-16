import 'package:fish_demo/activity_component/state.dart';
import 'package:fish_demo/destination_component/state.dart';
import 'package:fish_demo/discover_component/state.dart';
import 'package:fish_demo/mine_component/state.dart';
import 'package:fish_demo/store/state.dart';
import 'package:fish_demo/vehicle_component/state.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class ModuleState implements Cloneable<ModuleState>, GlobalBaseState {
  int index;
  bool isSelected;
  String title;
  String iconName;
  Icon icon;
  ModuleState(
      {this.index, this.isSelected, this.title, this.icon, this.iconName});
  @override
  ModuleState clone() {
    return ModuleState()..themeColor = themeColor;
  }

  @override
  Color themeColor;
}

ModuleState initState(Map<String, dynamic> args) {
  return ModuleState();
}

class VehicleConnector extends ConnOp<ModuleState, VehicleState>
    with ReselectMixin<ModuleState, VehicleState> {
  @override
  VehicleState computed(ModuleState state) {
    return VehicleState();
  }

  @override
  List<dynamic> factors(ModuleState state) {
    return <int>[];
  }

  @override
  void set(ModuleState state, VehicleState subState) {
    throw Exception('Unexcepted to set TabbarState from VehicleState');
  }
}

class DestinationConnector extends ConnOp<ModuleState, DestinationState>
    with ReselectMixin<ModuleState, DestinationState> {
  @override
  DestinationState computed(ModuleState state) {
    return DestinationState()..themeColor = state.themeColor;
  }

  @override
  List<dynamic> factors(ModuleState state) {
    return <int>[];
  }

  @override
  void set(ModuleState state, DestinationState subState) {
    throw Exception('Unexcepted to set TabbarState from DestinationState');
  }
}

class ActivityConnector extends ConnOp<ModuleState, ActivityState>
    with ReselectMixin<ModuleState, ActivityState> {
  @override
  ActivityState computed(ModuleState state) {
    return ActivityState();
  }

  @override
  List<dynamic> factors(ModuleState state) {
    return <int>[];
  }

  @override
  void set(ModuleState state, ActivityState subState) {
    throw Exception('Unexcepted to set TabbarState from ActivityState');
  }
}

class DiscoverConnector extends ConnOp<ModuleState, DiscoverState>
    with ReselectMixin<ModuleState, DiscoverState> {
  @override
  DiscoverState computed(ModuleState state) {
    return DiscoverState();
  }

  @override
  List<dynamic> factors(ModuleState state) {
    return <int>[];
  }

  @override
  void set(ModuleState state, DiscoverState subState) {
    throw Exception('Unexcepted to set TabbarState from DiscoverState');
  }
}

class MineConnector extends ConnOp<ModuleState, MineState>
    with ReselectMixin<ModuleState, MineState> {
  @override
  MineState computed(ModuleState state) {
    return MineState()..themeColor = state.themeColor;
  }

  @override
  List<dynamic> factors(ModuleState state) {
    return <int>[];
  }

  @override
  void set(ModuleState state, MineState subState) {
    throw Exception('Unexcepted to set TabbarState from MineState');
  }
}
