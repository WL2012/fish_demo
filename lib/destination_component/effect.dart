import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<DestinationState> buildEffect() {
  return combineEffects(<Object, Effect<DestinationState>>{
    DestinationAction.action: _onAction,
  });
}

void _onAction(Action action, Context<DestinationState> ctx) {
}
