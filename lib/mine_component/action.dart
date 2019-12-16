import 'package:fish_redux/fish_redux.dart';

enum MineAction { action, entrance }

class MineActionCreator {
  static Action onAction() {
    return const Action(MineAction.action);
  }

  static Action onEntrance() {
    return const Action(MineAction.entrance);
  }
}
