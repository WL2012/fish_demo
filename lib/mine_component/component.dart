import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MineComponent extends Component<MineState> {
  MineComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MineState>(
                adapter: null,
                slots: <String, Dependent<MineState>>{
                }),);

}
