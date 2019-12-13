
import 'package:fish_demo/store/reducer.dart';
import 'package:fish_demo/store/state.dart';
import 'package:fish_redux/fish_redux.dart';

class GlobalStore {
  static Store<GlobalState> _globalStore;
  static Store<GlobalState> get globalStore => _globalStore ??= createStore<GlobalState>(GlobalState(), buildReducer());
}