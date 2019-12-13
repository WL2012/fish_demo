import 'dart:ui';

import 'package:fish_demo/personal_page/personal_info.dart';
import 'package:fish_demo/store/state.dart';
import 'package:fish_redux/fish_redux.dart';

class PersonalState implements Cloneable<PersonalState>, GlobalBaseState {
  PersonalInfo personalInfo;
  int selectIndex;
  PersonalState({this.personalInfo, this.selectIndex});
  @override
  PersonalState clone() {
    return PersonalState()
      ..themeColor = themeColor
      ..selectIndex = selectIndex
      ..personalInfo = personalInfo;
  }

  @override
  Color themeColor;
}

PersonalState initState(Map<String, dynamic> args) {
  return PersonalState();
}
