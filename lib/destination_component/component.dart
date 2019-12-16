import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class DestinationComponent extends Component<DestinationState> {
  DestinationComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<DestinationState>(
                adapter: null,
                slots: <String, Dependent<DestinationState>>{
                }),);

}
