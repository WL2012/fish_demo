import 'package:fish_redux/fish_redux.dart';

enum PersonalAction { action, loadPersonalInfo, changeTab, seeImage, seeVideo }

class PersonalActionCreator {
  static Action onAction() {
    return const Action(PersonalAction.action);
  }

  static Action onLoadPersonalInfo() {
    return const Action(PersonalAction.loadPersonalInfo);
  }

  static Action onChangeTab(int selectIndex) {
    return Action(PersonalAction.changeTab, payload: selectIndex);
  }

  static Action onSeeImage(String url) {
    return Action(PersonalAction.seeImage, payload: url);
  }

  static Action onSeeVideo(String url) {
    return Action(PersonalAction.seeVideo, payload: url);
  }
}
