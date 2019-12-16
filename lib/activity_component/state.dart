import 'package:fish_redux/fish_redux.dart';

class ActivityState implements Cloneable<ActivityState> {

  @override
  ActivityState clone() {
    return ActivityState();
  }
}

ActivityState initState(Map<String, dynamic> args) {
  return ActivityState();
}
