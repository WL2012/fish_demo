import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<MineState> buildEffect() {
  return combineEffects(<Object, Effect<MineState>>{
    MineAction.action: _onAction,
    MineAction.entrance: _onEntrance,
  });
}

void _onAction(Action action, Context<MineState> ctx) {
}

void _onEntrance(Action action, Context<MineState> ctx) {
  Navigator.of(ctx.context).pushNamed('entrance_page', arguments: null);
}
