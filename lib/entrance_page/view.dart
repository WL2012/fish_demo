import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    EntranceState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: state.themeColor,
    appBar: AppBar(
      backgroundColor: state.themeColor,
      title: Text('entrance'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.filter_drama),
          onPressed: (){
            dispatch(EntranceActionCreator.onFilter());
          },
        ),
        IconButton(
          icon: Icon(Icons.perm_camera_mic),
          onPressed: (){
            dispatch(EntranceActionCreator.onPersonalInfo());
          },
        ),
      ],
    ),
    body: Container(
      child: Center(
        child: RaisedButton(
          padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
          color: state.themeColor,
          child: Text('entry', style: TextStyle(color: Colors.white)),
          onPressed: () {
            dispatch(EntranceActionCreator.onOpenGrid());
          },
        ),
      ),
    ),
  );
}
