import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ActivityState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: Center(
      child: Text('activity'),
    ),
  );
}
