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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
        title: Text("Demo build context"),
      ),
      body: OngBa(child: ChaMe(child: Column(
        children: <Widget>[
          ConTrai(),
          ConGai(),
        ],
      ),),),
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
  @override
  Widget build(BuildContext context) {
    ChaMe? chaMe=context.findAncestorWidgetOfExactType();
    return Container(
      child: Text(chaMe!.layTenConTrai(),style: const TextStyle(fontSize: 50),),
    );
  }
}
class ConGai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ChaMe? chaMe=context.findAncestorWidgetOfExactType();
    return Container(
      child: Text(chaMe!.layTenConGai(),style: const TextStyle(fontSize: 50),),
    );
  }
}

