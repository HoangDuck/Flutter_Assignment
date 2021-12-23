import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';
class Counter with ChangeNotifier{
  int _count=0;
  int get count => _count;
  increment(){
    _count++;
    notifyListeners();
  }
}
class DemoChangeNotifierProvider extends StatelessWidget {
  const DemoChangeNotifierProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>(
        create: (_)=> Counter(),
        child: const TextWidget(),
    );
  }
}
class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Counter counter=Provider.of<Counter>(context);
    return Center(
      child:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counter.count.toString(),style: const TextStyle(fontSize: 40),),
            RaisedButton(
                onPressed: (){
                  counter.increment();
                  },
                child: const Text
                (
                    "Increment",
                    style: TextStyle(fontSize: 20),
                ),
            )
          ],
        ),
      )
    );
  }
}
