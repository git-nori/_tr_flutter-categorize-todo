import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/model/controller/category_list_controller/category_list_controller.dart';
import 'package:flutter_firebase_todo/pages/todo_list/todo_list_tab_state.dart';
import 'package:provider/provider.dart';

import 'round_button.dart';

class FloatingActionBtn extends StatelessWidget {
  const FloatingActionBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleButton(
            size: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey.shade800,
              ),
              onPressed: () {
                final categoryId = context.read<TodoListTabState>().categoryId;
                context
                    .read<CategoryListController>()
                    .deleteCompletedTodoList(categoryId: categoryId);
              },
              child: const Icon(Icons.delete_outline),
            ),
          ),
          CircleButton(
            size: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white),
              onPressed: () {},
              child: const Icon(
                Icons.edit_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
