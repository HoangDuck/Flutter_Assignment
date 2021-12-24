import 'package:flutter/material.dart';
import 'dart:async';
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
      home: const Scaffold(
        body: FutureWidget(),
      ),
    );
  }
}
class FutureWidget extends StatefulWidget {
  const FutureWidget({Key? key}) : super(key: key);

  @override
  _FutureWidgetState createState() => _FutureWidgetState();
}

class _FutureWidgetState extends State<FutureWidget> {
  StreamController<String> timerStreamController=StreamController<String>();

  @override
  void initState() {
    super.initState();
    initStream();
  }
  Stream<String>? streamData(){
    //return null;
    return Stream<String>.periodic(const Duration(seconds: 1),(value){
      return value.toString();
    });
  }
  void initStream(){
    Stream.periodic(const Duration(seconds: 1),(value){
      return value;
    }).take(10).listen((value) {
      timerStreamController.sink.add(value.toString());
      if(value==9){
        timerStreamController.close();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<String>(
                stream: timerStreamController.stream,
                builder: (context,snapshot){
                  if(snapshot.hasError){
                    return Text(
                      snapshot.error.toString(),
                      style: const TextStyle(fontSize: 40),
                    );
                  }
                  switch(snapshot.connectionState){
                    case ConnectionState.none:
                      return const Text("Not connected to the stream or null");
                    case ConnectionState.waiting:
                      return const Text("Awaiting connection");
                    case ConnectionState.active:
                      return Text("${snapshot.data}",style: const TextStyle(fontSize: 40),);
                    case ConnectionState.done:
                      return const Text("Stream has finished");
                    default:
                      return const Text("");
                  }
                }
            ),
          ],
        ),
      ),
    );
  }
}

