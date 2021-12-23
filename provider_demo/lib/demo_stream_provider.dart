import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';
class DemoStreamProvider extends StatelessWidget {
  const DemoStreamProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<int>.value(
        value: getAge(),
        child: const DemoFutureWidget(),
        initialData: 0,
    );
  }
  Stream<int> getAge(){
    return Stream.fromFuture(Future.delayed(
      const Duration(seconds: 1),
        (){
          return 250;
        }
    ));
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
            ),
          );
        },
    );
  }
}
