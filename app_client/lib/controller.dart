import 'package:flutter/cupertino.dart';

class Controller {
  var conte = ValueNotifier<int>(0);

  void incremento() {
    conte.value++;
  }
}
