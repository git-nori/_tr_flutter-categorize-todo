import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/model/model.dart';

import 'todo_tile.dart';

class TodoList extends StatelessWidget {
  const TodoList({@required this.todos});
  final List<Todo> todos;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) => TodoTile(todo: todos[index]),
    );
  }
}
