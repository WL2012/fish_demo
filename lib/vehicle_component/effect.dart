import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<VehicleState> buildEffect() {
  return combineEffects(<Object, Effect<VehicleState>>{
    VehicleAction.action: _onAction,
  });
}

void _onAction(Action action, Context<VehicleState> ctx) {
}
