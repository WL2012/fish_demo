import 'package:fish_redux/fish_redux.dart';

enum FilterAction { action, loadItems }

class FilterActionCreator {
  static Action onAction() {
    return const Action(FilterAction.action);
  }

  static Action onLoadItems() {
    return const Action(FilterAction.loadItems);
  }
}
