import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class VehicleComponent extends Component<VehicleState> {
  VehicleComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<VehicleState>(
                adapter: null,
                slots: <String, Dependent<VehicleState>>{
                }),);

}
