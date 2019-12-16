import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ActivityState> buildEffect() {
  return combineEffects(<Object, Effect<ActivityState>>{
    ActivityAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ActivityState> ctx) {
}
