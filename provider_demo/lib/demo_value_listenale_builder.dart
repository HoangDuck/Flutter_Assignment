import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';
class Counter{
  final ValueNotifier<int> valueNotifier=ValueNotifier(0);
}
class DemoValueListenaleBuilder extends StatelessWidget {
  const DemoValueListenaleBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<Counter>(
      create: (context) => Counter(),
      child: Consumer<Counter>(
        builder: (context,counter,child) {
          return ValueListenableProvider<int>.value(
            value: counter.valueNotifier,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  DemoConsumerWidget(),
                  OtherWidget(),
                ],
              ),
            ),
          );
          // return ValueListenableBuilder(
          //   valueListenable: counter.valueNotifier,
          //   builder: (context, value,child) {
          //     return Center(
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           DemoConsumerWidget(),
          //           OtherWidget(),
          //         ],
          //       ),
          //     );
          //   },
          // );
        }
      ),
    );
  }
}
class DemoConsumerWidget extends StatelessWidget {
  const DemoConsumerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<int>(
      builder: (context, value, child){
        return Text(
          value.toString(),
          style: const TextStyle(fontSize: 20),
        );
      },
    );
  }
}
class OtherWidget extends StatelessWidget {
  const OtherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: const Text(
          "Increment",
          style: TextStyle(fontSize: 20),
        ),
        onPressed: (){
          Counter counter=Provider.of<Counter>(context, listen: false);
          counter.valueNotifier.value++;

        }
    );
  }
}
