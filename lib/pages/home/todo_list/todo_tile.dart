import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/consts/style.dart';
import 'package:flutter_firebase_todo/model/model.dart';
import 'package:flutter_firebase_todo/widget/zero_divider.dart';
import 'package:intl/intl.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({
    Key key,
    @required this.todo,
  }) : super(key: key);
  final Todo todo;
  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat('M月dd日(E) HH:mm', 'ja_JP');
    return Column(
      children: [
        ListTile(
          leading: CircularCheckBox(
            value: todo.isDone,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            activeColor: Colors.grey.shade800,
            onChanged: (bool x) {},
          ),
          title: Text(
            todo.title,
            style: todo.isDone ? kIsDoneTextStyle : null,
          ),
          subtitle: todo.rimitDateTime == null
              ? null
              : Text(formatter.format(todo.rimitDateTime)),
        ),
        ZeroDivider(),
      ],
    );
  }
}
