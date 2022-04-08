import 'package:flutter/cupertino.dart';
import 'package:rx_notifier/rx_notifier.dart';

class Controller {
  var conte = ValueNotifier<int>(0);

  var conteRxNotifier = RxNotifier<int>(0);

  void incremento() {
    conte.value++;
    conteRxNotifier.value++;
  }
}
