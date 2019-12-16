import 'package:fish_redux/fish_redux.dart';

enum ActivityAction { action }

class ActivityActionCreator {
  static Action onAction() {
    return const Action(ActivityAction.action);
  }
}
