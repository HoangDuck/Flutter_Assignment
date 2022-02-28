import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      home: Rectangle(),
    );
  }
}

class Rectangle extends StatefulWidget {
  @override
  _RectangleState createState() => _RectangleState();
}

class _RectangleState extends State<Rectangle> {
  Color color = Colors.blue;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 50,
              height: 50,
              color: color,
              child: Text("$counter"),
            ),
            Provider<int>.value(
              value: counter,
              child: Test(),
            ),
          ],
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    int count = Provider.of(context);
    return Container(
      padding: EdgeInsets.all(100),
      child: TextButton(
        onPressed: () {
          setState(() {
            count++;
            print(count);
          });
        },
        child: Text("$count"),
      ),
    );
  }
}
