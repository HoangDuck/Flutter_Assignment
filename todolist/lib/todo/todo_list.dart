import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/bloc/todo_bloc.dart';
import 'package:todolist/event/delete_todo_event.dart';
import 'package:todolist/model/todo.dart';
class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    var bloc=Provider.of<TodoBloc>(context);
    bloc.initData();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoBloc>(
      builder:(context, bloc, child) => StreamBuilder<List<Todo>>(
        stream: bloc.todoListStream,
        builder:(context, snapshot)
        {
          switch(snapshot.connectionState){
            case ConnectionState.active:
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context,index){
                  return ListTile(
                    title: Text(snapshot.data![index].content,style: const TextStyle(fontSize: 20),),
                    trailing: GestureDetector(
                      onTap: (){
                        bloc.event.add(DeleteTodoEvent(snapshot.data![index]));

                      },
                      child: const Icon(
                        Icons.delete,
                        color: Color(0xFFEF5350),
                      ),
                    ),
                  );
                },
              );
            case ConnectionState.waiting:
              return Center(
                child: Container(
                  width: 70,
                  height: 70,
                  child: const Text("Empty",style:TextStyle(fontSize: 20)),
                ),
              );
            case ConnectionState.none:
            default:
              return Center(
                child: Container(
                  width: 70,
                  height: 70,
                  child: const CircularProgressIndicator(),
                ),
              );
          }
          // return ListView.builder(
          //   itemCount: 30,
          //   itemBuilder: (context,index){
          //     return ListTile(
          //       title: Text("To do $index",style: const TextStyle(fontSize: 20),),
          //       trailing: GestureDetector(
          //         onTap: (){
          //           print("delete");
          //         },
          //         child: const Icon(
          //           Icons.delete,
          //           color: Color(0xFFEF5350),
          //         ),
          //       ),
          //     );
          //   },
          // );
        },
      ),
    );
  }
}
