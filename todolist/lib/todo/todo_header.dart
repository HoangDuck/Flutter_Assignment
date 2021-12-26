import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/bloc/todo_bloc.dart';
import 'package:todolist/event/add_todo_event.dart';
class TodoHeader extends StatelessWidget {
  const TodoHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var txtToDoController= TextEditingController();
    var bloc=Provider.of<TodoBloc>(context);
    return Row(
      children: [
        Expanded(child: TextFormField(
          controller: txtToDoController,
          decoration: const InputDecoration(

            labelText: "Add to do",
            hintText: "Add to do",
          ),
        ),
        ),
        const SizedBox(width: 20,),
        RaisedButton.icon(onPressed: (){
          bloc.event.add(AddTodoEvent(txtToDoController.text));
        },
            icon: const Icon(Icons.add),
            label: const Text("Add")),
      ],
    );
  }
}
