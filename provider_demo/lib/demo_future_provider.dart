import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';
class DemoFutureProvider extends StatelessWidget {
  const DemoFutureProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureProvider<int>.value(
        value: getAge(),
        child: const DemoFutureWidget(),
        initialData: 0,
    );
  }
  Future<int> getAge(){
    return Future.delayed(const Duration(seconds: 2),(){
      return 500;
    });
  }
}
class DemoFutureWidget extends StatelessWidget {
  const DemoFutureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<int>(
        builder: (context,value,child){
          return Center(
            child: Text(
              value.toString(),
              style: const TextStyle(fontSize: 20),
            )
          );
        },
    );
  }
}
