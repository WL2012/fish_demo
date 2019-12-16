import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ActivityComponent extends Component<ActivityState> {
  ActivityComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ActivityState>(
                adapter: null,
                slots: <String, Dependent<ActivityState>>{
                }),);

}
