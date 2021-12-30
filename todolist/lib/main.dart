import 'package:flutter/material.dart';
import 'package:todolist/bloc/todo_bloc.dart';
import 'package:todolist/todo/todo_list_container.dart';
import 'package:provider/provider.dart';

import 'db/todo_database.dart';
void main() async{
  await TodoDatabase.instance.init();
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
      home: Scaffold(
          appBar: AppBar(title: const Center(child: Text("To do list",style: TextStyle(fontSize: 20),))),
          body: Provider<TodoBloc>.value(
              value: TodoBloc(),
              child: const TodoListContainer()),
      ),
    );
  }
}