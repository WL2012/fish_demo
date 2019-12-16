import 'package:fish_redux/fish_redux.dart';

class VehicleState implements Cloneable<VehicleState> {

  @override
  VehicleState clone() {
    return VehicleState();
  }
}

VehicleState initState(Map<String, dynamic> args) {
  return VehicleState();
}
