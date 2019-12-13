import 'package:fish_redux/fish_redux.dart';

enum EntranceAction { action, openGrid, filter, personal }

class EntranceActionCreator {
  static Action onAction() {
    return const Action(EntranceAction.action);
  }

  static Action onOpenGrid() {
    return const Action(EntranceAction.openGrid);
  }

  static Action onFilter() {
    return const Action(EntranceAction.filter);
  }

  static Action onPersonalInfo() {
    return const Action(EntranceAction.personal);
  }
}
