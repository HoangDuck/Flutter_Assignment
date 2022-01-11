import 'package:flutter/foundation.dart';
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
      home: const DemoBuildContext(),
    );
  }
}
class DemoBuildContext extends StatelessWidget {
  const DemoBuildContext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo build context"),
      ),
      body: OngBa(
        child: ChaMe(
          child: Column(
          children: const <Widget>[
              ConTrai(),
              ConGai(),
          ],
      ),
        ),
      ),
    );
  }
}
class OngBa extends StatelessWidget {

  Widget child;
  OngBa({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
class ChaMe extends StatelessWidget {

  Widget child;
  ChaMe({Key? key, required this.child}) : super(key: key);
  String layTenConTrai(){
    return "duc";
  }
  String layTenConGai(){
    return "beo";
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
class ConTrai extends StatelessWidget {
  const ConTrai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChaMe? chaMe=context.findAncestorWidgetOfExactType();
    return Text(chaMe!.layTenConTrai(),style: const TextStyle(fontSize: 50),);
  }
}
class ConGai extends StatelessWidget {
  const ConGai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ChaMe? chaMe=context.findAncestorWidgetOfExactType();
    return Text(chaMe!.layTenConGai(),style: const TextStyle(fontSize: 50),);
  }
}

