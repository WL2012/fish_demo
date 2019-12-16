import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(VehicleState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: Center(
      child: Text('vehicle'),
    ),
  );
}
