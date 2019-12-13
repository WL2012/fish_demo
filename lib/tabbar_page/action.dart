import 'package:fish_redux/fish_redux.dart';

enum TabbarAction { action, initTabbarItems, changeTabbar }

class TabbarActionCreator {
  static Action onAction() {
    return const Action(TabbarAction.action);
  }

  static Action onChnageTabbar(int index) {
    return Action(TabbarAction.changeTabbar, payload: index);
  }

  static Action initTabbarItems() {
    return const Action(TabbarAction.initTabbarItems);
  }
}
