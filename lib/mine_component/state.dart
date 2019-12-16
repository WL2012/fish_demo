import 'dart:ui';

import 'package:fish_demo/store/state.dart';
import 'package:fish_redux/fish_redux.dart';

class MineState implements Cloneable<MineState>, GlobalBaseState {
  @override
  MineState clone() {
    return MineState()..themeColor = themeColor;
  }

  @override
  Color themeColor;
}

MineState initState(Map<String, dynamic> args) {
  return MineState();
}
