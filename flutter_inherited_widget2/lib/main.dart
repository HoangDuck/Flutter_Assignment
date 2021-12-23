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
        body: DemoInheritedWidget(
          child: MyContainer(
            child: const Counter(),
          ),
        ),
      ),
    );
  }
}
class MyContainer extends StatefulWidget {
  Widget child;
  MyContainer({required this.child});
  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  int data=0;
  increment(){
    setState(() {
      data++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DemoInheritedWidget(
      state: this,
      child: widget.child,
    );
  }
}
class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    final demo=context.dependOnInheritedWidgetOfExactType<DemoInheritedWidget>();
    return Center(
      child: Container(
        child: Column(
          children: [
            Text(demo!.state!.data.toString(),style: TextStyle(fontSize: 40),),
            RaisedButton(
                onPressed: (){
                  demo.state!.increment();
                },
              child: const Text("Click here"),
            ),
          ],
        ),
      ),
    );
  }
}

class DemoInheritedWidget extends InheritedWidget {
  Widget child;
  _MyContainerState? state;
  DemoInheritedWidget({Key? key,this.state,required this.child}) : super(key: key, child: child);

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