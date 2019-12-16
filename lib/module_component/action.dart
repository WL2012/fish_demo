import 'package:fish_redux/fish_redux.dart';

enum ModuleAction { action }

class ModuleActionCreator {
  static Action onAction() {
    return const Action(ModuleAction.action);
  }
}
