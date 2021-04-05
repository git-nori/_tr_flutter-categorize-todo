import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/consts/style.dart';
import 'package:flutter_firebase_todo/model/controller/category_list_controller/category_list_controller.dart';
import 'package:flutter_firebase_todo/model/controller/category_list_controller/category_list_state.dart';
import 'package:flutter_firebase_todo/widget/zero_divider.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({this.id, this.categoryId});
  final int id;
  final int categoryId;
  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat('M月dd日(E) HH:mm', 'ja_JP');
    final todo = context.select(
        (CategoryListState state) => state.getCategory(categoryId).getTodo(id));
    return Column(
      children: [
        ListTile(
          leading: CircularCheckBox(
            value: todo.isDone,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            activeColor: Colors.grey.shade800,
            onChanged: (bool x) => context
                .read<CategoryListController>()
                .toggleTodoIsDone(categoryId, id),
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
