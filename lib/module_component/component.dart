import 'package:fish_demo/activity_component/component.dart';
import 'package:fish_demo/destination_component/component.dart';
import 'package:fish_demo/discover_component/component.dart';
import 'package:fish_demo/mine_component/component.dart';
import 'package:fish_demo/vehicle_component/component.dart';
import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ModuleComponent extends Component<ModuleState> {
  ModuleComponent()
      : super(
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<ModuleState>(
              adapter: null,
              slots: <String, Dependent<ModuleState>>{
                'vehicle': VehicleConnector() + VehicleComponent(),
                'destination': DestinationConnector() + DestinationComponent(),
                'discover': DiscoverConnector() + DiscoverComponent(),
                'activity': ActivityConnector() + ActivityComponent(),
                'mine': MineConnector() + MineComponent()
              }),
        );
}
