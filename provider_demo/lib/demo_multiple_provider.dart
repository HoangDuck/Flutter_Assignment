import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';
class Counter1 with ChangeNotifier{
  int _count=0;
  int get count => _count;
  increment(){
    _count++;
    notifyListeners();
  }
}
class Counter2 with ChangeNotifier{
  int _count=10;
  int get count => _count;
  increment(){
    _count++;
    notifyListeners();
  }
}
class DemoMultipleProvider extends StatelessWidget {
  const DemoMultipleProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Counter1()),
          ChangeNotifierProvider(create: (_) => Counter2()),
        ],
      child: TestWidget1(),
    );
  }
}
class TestWidget1 extends StatelessWidget {
  const TestWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Counter1 counter1=Provider.of<Counter1>(context);
    Counter2 counter2=Provider.of<Counter2>(context);
    return Center(
      child:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('count1=${counter1.count.toString()} count2=${counter2.count.toString()}'
            ,style: const TextStyle(fontSize: 40),
            ),
            RaisedButton(
                onPressed: (){
                  counter1.increment();
                  counter2.increment();
                },
                child: const Text(
                  "Increment",
                  style: TextStyle(fontSize: 20),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
/////////////////////////////DEMO2/////////////////////////////
class Counter3{
  int _count=0;
  int get count => _count;
  increment(){
    _count++;
  }
}
class Counter4{
  int _count=10;
  int get count => _count;
  increment (){
    _count++;
  }
}
class DemoMultipleProvider2 extends StatelessWidget {
  const DemoMultipleProvider2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Counter3>.value(value: Counter3()),
        Provider<Counter4>.value(value: Counter4()),
      ],
      child: const TestWidget2(),
    );
  }
}
class TestWidget2 extends StatelessWidget {
  const TestWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Counter3 counter3=Provider.of<Counter3>(context);
    Counter4 counter4=Provider.of<Counter4>(context);
    return Center(
      child:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('count3=${counter3.count.toString()} count4=${counter4.count.toString()}'
              ,style: const TextStyle(fontSize: 40),
            ),
            RaisedButton(
              onPressed: (){
                counter3.increment();
                counter4.increment();
              },
              child: const Text(
                "Increment",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      )
    );
  }
}
