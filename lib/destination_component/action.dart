import 'package:fish_redux/fish_redux.dart';

enum DestinationAction { action }

class DestinationActionCreator {
  static Action onAction() {
    return const Action(DestinationAction.action);
  }
}
