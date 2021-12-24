import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'module/search/search_bloc.dart';
import 'module/search/search_view.dart';
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
      home:Scaffold(
        appBar: AppBar(title: const Center(child: Text("Demo bloc", style: TextStyle(fontSize: 40),)),),
        body:Provider<SearchBloc>.value(
            value: SearchBloc(),
            child: SearchView(),
        ),
      )
    );
  }
}
