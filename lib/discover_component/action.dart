import 'package:fish_redux/fish_redux.dart';

enum DiscoverAction { action }

class DiscoverActionCreator {
  static Action onAction() {
    return const Action(DiscoverAction.action);
  }
}
