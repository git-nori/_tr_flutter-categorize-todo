import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/model/model.dart';

import 'todo_tile.dart';

class TodoList extends StatelessWidget {
  const TodoList({@required this.todoList});
  final List<Todo> todoList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todoList.length,
      itemBuilder: (context, index) {
        final id = todoList[index].id;
        return TodoTile(key: ValueKey(id), id: id);
      },
      // itemBuilder: (context, index) => TodoTile(todo: todoList[index]),
    );
  }
}
