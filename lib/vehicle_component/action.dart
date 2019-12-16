import 'package:fish_redux/fish_redux.dart';

enum VehicleAction { action }

class VehicleActionCreator {
  static Action onAction() {
    return const Action(VehicleAction.action);
  }
}
