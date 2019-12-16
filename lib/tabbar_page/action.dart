import 'package:fish_demo/module_component/state.dart';
import 'package:fish_redux/fish_redux.dart';

enum TabbarAction { action, showTabbarItems, changeTabbar }

class TabbarActionCreator {
  static Action onAction() {
    return const Action(TabbarAction.action);
  }

  static Action onChnageTabbar(int index) {
    return Action(TabbarAction.changeTabbar, payload: index);
  }

  static Action showTabbarItems(List<ModuleState> tabbarItems) {
    return Action(TabbarAction.showTabbarItems, payload: tabbarItems);
  }
}
