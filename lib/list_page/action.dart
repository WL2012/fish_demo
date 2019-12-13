import 'package:fish_redux/fish_redux.dart';
import 'item_component/state.dart';

enum ListAction { action, showItems }

class ListActionCreator {
  static Action onAction() {
    return const Action(ListAction.action);
  }

  static Action onShowItems(List<ItemState> items) {
    return Action(ListAction.showItems, payload: items);
  }
}
