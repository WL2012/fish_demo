import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<FilterState> buildEffect() {
  return combineEffects(<Object, Effect<FilterState>>{
    FilterAction.action: _onAction,
    Lifecycle.initState: _loadItems,
  });
}

void _onAction(Action action, Context<FilterState> ctx) {}

void _loadItems(Action action, Context<FilterState> ctx) {
  ctx.dispatch(FilterActionCreator.onLoadItems());
}
