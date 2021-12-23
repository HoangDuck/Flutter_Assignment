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
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("Home page"),
            MyStatefulWidget(),
          ],
        ),
      ),

    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "$_count",
          style: const TextStyle(fontSize: 40),
        ),
        RaisedButton(
            onPressed: (){
              //click
              setState((){
                _count++;
              });
            },
            child: const Text(
                "Click me",
              style: TextStyle(fontSize: 20),
            ),
        ),
      ],
    );
  }
}

