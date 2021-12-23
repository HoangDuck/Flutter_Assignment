import 'package:flutter/material.dart';
import 'package:lifecycle_statefulwidget/DemoDidChangeDependencies.dart';
//import 'package:lifecycle_statefulwidget/DemoDidUpdateWidget.dart';

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
      home: const Scaffold(
        body: Demo3(),
      ),
    );
  }
}
class Demo1 extends StatefulWidget {

  const Demo1({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  _Demo1State createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  int _counter=0;

  @override
  void initState() {
    super.initState();
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_counter',
              style: const TextStyle(fontSize: 30),
            ),
            RaisedButton(
              child: const Text("Increment"),
              onPressed: _incrementCounter,
            )
          ],
        )
    );
  }

  @override
  void didUpdateWidget(Demo1 oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("did change dependencies");
  }
  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }
}
