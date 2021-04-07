import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/model/controller/category_list_controller/category_list_controller.dart';
import 'package:flutter_firebase_todo/pages/todo_list/todo_form/todo_form.dart';
import 'package:provider/provider.dart';

import 'round_button.dart';

class FloatingActionBtn extends StatelessWidget {
  const FloatingActionBtn({
    Key key,
  }) : super(key: key);

  Future _showTodoForm(BuildContext context) async {
    await showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext _) {
        return ChangeNotifierProvider<TabController>.value(
          value: context.read<TabController>(),
          child: const TodoForm(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = context.select((TabController state) => state.index);
    final categoryList =
        context.select((CategoryListState state) => state.categoryList);
    final category = categoryList[currentIndex];
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
                context
                    .read<CategoryListController>()
                    .deleteCompletedTodoList(categoryId: category.id);
              },
              child: const Icon(Icons.delete_outline),
            ),
          ),
          CircleButton(
            size: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.white),
              onPressed: () async {
                await _showTodoForm(context);
              },
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
