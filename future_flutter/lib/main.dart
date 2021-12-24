import 'dart:async';

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
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder<int>(
                future: delayNumber(),
                builder: (context,snapshot)
                {
                  if(snapshot.hasError){
                    return Text(snapshot.error.toString(),style: const TextStyle(fontSize: 40),);
                  }
                  if(snapshot.hasData){
                    return Text(snapshot.data.toString(),style: const TextStyle(fontSize: 40),);
                  }
                  return const Text("Waiting for result...",style: TextStyle(fontSize: 40),);
                },
              ),
              RaisedButton(
                  child: const Text("Demo Future"),
                  onPressed: () async{
                    // asyncMethod();
                    // print("123");
                    // print("456");
                    // var i=await delayNumber();
                    // print(i);
                    //getAge().then((value) => print(value)); cách làm này không cần từ khóa async
                    try{
                      var number= await delayNumberWithError();
                      print(number);
                    }catch(e){
                      print(e.toString());
                    }
                    print("123");
                  }
              )
            ],
          ),
        )
    );
  }
}
Future<void> asyncMethod(){
  return Future.delayed(const Duration(seconds: 2),()=> print("asyncMethod"));
}
Future<int> delayNumber(){
  return Future.delayed(const Duration(seconds: 5),()=> 100);
}
Future<int> delayNumberWithError(){
  return Future.delayed(const Duration(seconds: 2),()=> throw Exception("Co loi xay ra"));
}
Future<int> getAge(){
  final c=Completer<int>();
  Future.delayed(const Duration(seconds: 2),(){
    c.complete(100);
  });
  return c.future;
}