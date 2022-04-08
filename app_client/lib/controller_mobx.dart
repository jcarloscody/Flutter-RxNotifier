import 'package:mobx/mobx.dart';

class ControllerMobX {
  var conte = Observable<int>(0);
  late Action incrementCounter;

  ControllerMobX() {
    incrementCounter = Action(incremento);
  }

  void incremento() {
    conte.value++;
  }
}
