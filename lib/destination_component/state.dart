import 'dart:ui';

import 'package:fish_demo/store/state.dart';
import 'package:fish_redux/fish_redux.dart';

class DestinationState implements Cloneable<DestinationState>,GlobalBaseState {

  @override
  DestinationState clone() {
    return DestinationState()..themeColor = themeColor;
  }

  @override
  Color themeColor;
}

DestinationState initState(Map<String, dynamic> args) {
  return DestinationState();
}
