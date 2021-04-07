import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/consts/style.dart';
import 'package:flutter_firebase_todo/pages/todo_list/todo_list/todo_tile_controller.dart';
import 'package:flutter_firebase_todo/widget/zero_divider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat('M月dd日(E) HH:mm', 'ja_JP');
    return Column(
      children: [
        ListTile(
          leading: CircularCheckBox(
            value: context.watch<TodoTileController>().todo.isDone,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            activeColor: Colors.grey.shade800,
            onChanged: (bool x) =>
                context.read<TodoTileController>().toggleTodoIsDone(),
          ),
          title: Text(
            context.watch<TodoTileController>().todo.title,
            style: context.watch<TodoTileController>().todo.isDone
                ? kIsDoneTextStyle
                : null,
          ),
          subtitle:
              context.watch<TodoTileController>().todo.rimitDateTime == null
                  ? null
                  : Text(formatter.format(
                      context.watch<TodoTileController>().todo.rimitDateTime)),
        ),
        ZeroDivider(),
      ],
    );
  }
}
