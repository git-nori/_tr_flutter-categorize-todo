import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/consts/style.dart';
import 'package:flutter_firebase_todo/pages/todo_list/todo_list/todo_tile_controller.dart';
import 'package:flutter_firebase_todo/widget/zero_divider.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo = context.watch<TodoTileController>().todo;
    return Column(
      children: [
        ListTile(
          leading: CircularCheckBox(
            value: todo.isDone,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            activeColor: Colors.grey.shade800,
            onChanged: (bool x) =>
                context.read<TodoTileController>().toggleTodoIsDone(),
          ),
          title: Text(
            todo.title,
            style: todo.isDone ? kIsDoneTextStyle : null,
          ),
          subtitle: () {
            if (todo.limitDateTime == null) {
              return null;
            }
            final formatter = todo.isSelectedTime
                ? DateFormat('M月dd日(E) HH:mm', 'ja_JP')
                : DateFormat('M月dd日(E)', 'ja_JP');
            return Text(formatter.format(todo.limitDateTime));
          }(),
        ),
        ZeroDivider(),
      ],
    );
  }
}
