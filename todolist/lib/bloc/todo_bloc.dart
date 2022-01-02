import 'dart:async';
import 'dart:math';
import 'package:todolist/base/base_bloc.dart';
import 'package:todolist/base/base_event.dart';
import 'package:todolist/db/todo_table.dart';
import 'package:todolist/event/add_todo_event.dart';
import 'package:todolist/event/delete_todo_event.dart';
import 'package:todolist/model/todo.dart';

class TodoBloc extends BaseBloc{
  final TodoTable _todoTable=TodoTable();
  final StreamController<List<Todo>>_todoListStreamController=
      StreamController<List<Todo>>();
  Stream<List<Todo>> get todoListStream => _todoListStreamController.stream;
  var randomInt=Random();
  List<Todo> _todoListData=<Todo>[];

  initData() async {
    _todoListData=await _todoTable.selectAllTodo();
    if(_todoListData == null){
      return;
    }
    _todoListStreamController.sink.add(_todoListData);
  }

  _addTodo(Todo todo) async {
    await _todoTable.insertTodo(todo);
    _todoListData.add(todo);
    _todoListStreamController.sink.add(_todoListData);
  }

  _deleteTodo(Todo todo) async {
    await _todoTable.deleteTodo(todo);
    _todoListData.remove(todo);
    _todoListStreamController.sink.add(_todoListData);
  }

  @override
  void dispatchEvent(BaseEvent event) {
    // TODO: implement dispatchEvent
    if(event is AddTodoEvent){
      Todo todo=Todo.fromData(randomInt.nextInt(10000000), event.content,);
      _addTodo(todo);
    }else if(event is DeleteTodoEvent){
      _deleteTodo(event.todo);
    }
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _todoListStreamController.close();
  }
}
