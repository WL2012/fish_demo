import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MineState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    color: state.themeColor,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('mine----page'),
          RaisedButton(
            child: Text('next'),
            onPressed: () {
              dispatch(MineActionCreator.onEntrance());
            },
          )
        ],
      ),
    ),
  );
}
