import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<EntranceState> buildEffect() {
  return combineEffects(<Object, Effect<EntranceState>>{
    EntranceAction.action: _onAction,
    EntranceAction.openGrid: _onOpenGrid,
    EntranceAction.filter: _onFilter,
    EntranceAction.personal: _onPersonalInfo,
  });
}

void _onAction(Action action, Context<EntranceState> ctx) {}

void _onOpenGrid(Action action, Context<EntranceState> ctx) {
  Navigator.of(ctx.context).pushNamed('grid_page', arguments: null);
}

void _onFilter(Action action, Context<EntranceState> ctx) {
  Navigator.of(ctx.context).pushNamed('filter_page', arguments: null);
}

void _onPersonalInfo(Action action, Context<EntranceState> ctx) {
  Navigator.of(ctx.context).pushNamed('personal_page', arguments: null);
}
