import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/model/model.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import 'todo_tile.dart';
import 'todo_tile_controller.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key key, this.todoList, this.categoryId}) : super(key: key);
  final List<Todo> todoList;
  final int categoryId;

  @override
  Widget build(BuildContext context) {
    return todoList.isEmpty
        ? const Center(
            child: Text(
              'Todoはすべて完了しました',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        : ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (context, index) {
              final id = todoList[index].id;
              return StateNotifierProvider<TodoTileController, void>(
                key: ValueKey(id),
                create: (_) =>
                    TodoTileController(todoId: id, categoryId: categoryId),
                child: TodoTile(key: ValueKey(id)),
              );
            },
          );
  }
}
