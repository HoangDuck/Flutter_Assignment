import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';
class User{
  late String _name;
  String get name => _name;
  set name(newName) => _name = newName;
}
class BasicProvider extends StatelessWidget {
  const BasicProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user=User();
    user.name="Ryan Nguyen";
    return Provider<User>.value(
      value: user,
      child: const BasicWidget(),
    );
  }
}
class BasicWidget extends StatelessWidget {
  const BasicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        DemoConsumerWidget(),
        DemoWithoutConsumerWidget(),
      ],
    );
  }
}
class DemoConsumerWidget extends StatelessWidget {
  const DemoConsumerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<User>(builder: (context,user,child)=>Text(user.name));
  }
}
class DemoWithoutConsumerWidget extends StatelessWidget {
  const DemoWithoutConsumerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User user=Provider.of<User>(context);
    return Text(user.name);
  }
}
