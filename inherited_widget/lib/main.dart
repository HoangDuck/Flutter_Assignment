import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo'),
        ),
        body: const Scaffold(
          body: DemoInheritedWidget(
            child: OngBa(),
          ),
        ),
      ),
    );
  }
}

class DemoInheritedWidget extends InheritedWidget {
  final int count =1000;
  const DemoInheritedWidget({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  static DemoInheritedWidget of(BuildContext context) {
    final DemoInheritedWidget? result = context.dependOnInheritedWidgetOfExactType<DemoInheritedWidget>();
    assert(result != null, 'No DemoInheritedWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(DemoInheritedWidget old) {
    return true;
  }
}

class OngBa extends StatelessWidget {
  const OngBa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const ChaMe(),
    );
  }
}
class ChaMe extends StatelessWidget {
  const ChaMe({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const ConGai(),
    );
  }
}
class ConGai extends StatelessWidget {
  const ConGai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final demo=context.dependOnInheritedWidgetOfExactType<DemoInheritedWidget>();
    //return Container();
    return Center(
      child: Container(
        child: Text(demo!.count.toString(),style: const TextStyle(fontSize: 30),),
      ),
    );
  }
}


