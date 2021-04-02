import 'package:flutter_firebase_todo/model/controller/category_list_controller/category_list_controller.dart';
import 'package:flutter_firebase_todo/model/model.dart';
import 'package:state_notifier/state_notifier.dart';

import '../todo_list_tab_state.dart';

class TodoTileController extends StateNotifier<void> with LocatorMixin {
  TodoTileController({int todoId}) : super(null) {
    _todoId = todoId;
  }
  int _todoId;
  int _categoryId;
  Todo get todo => read<CategoryListController>().getTodo(todoId: _todoId);
  void toggleTodoIsDone() {
    final updatedTodo = todo.copyWith(isDone: !todo.isDone);
    read<CategoryListController>().updateTodo(
      categoryId: _categoryId,
      todo: updatedTodo,
    );
  }

  @override
  void update(Locator watch) {
    super.update(watch);
    _categoryId = watch<TodoListTabState>().currentIndex + 1;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
