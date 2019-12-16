import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ModuleState> buildEffect() {
  return combineEffects(<Object, Effect<ModuleState>>{
    ModuleAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ModuleState> ctx) {
}
