import 'package:app_client/controller.dart';
import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
//   //.*
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = Controller();

  @override
  void initState() {
    super.initState();
    controller.conte.addListener(
      () {
        print('ValuerNotifier ${controller.conte.value}');
      },
    );

    rxObserver(
      () => print('RxNotifier ${controller.conteRxNotifier.value}'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ValueListenableBuilder(
              valueListenable: controller.conte,
              builder: (contexto, valor, widget) => Text(
                '${controller.conte.value} ou $valor MASSA',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            RxBuilder(
              builder: (builder) => Text(
                'RxNotifier ${controller.conteRxNotifier.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.incremento,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
