import 'package:flutter_firebase_todo/model/controller/category_list_controller/category_list_controller.dart';
import 'package:flutter_firebase_todo/model/model.dart';
import 'package:state_notifier/state_notifier.dart';

class TodoTileController extends StateNotifier<void> with LocatorMixin {
  TodoTileController({int todoId, int categoryId}) : super(null) {
    _todoId = todoId;
    _categoryId = categoryId;
  }
  int _todoId;
  int _categoryId;
  Todo get todo => read<CategoryListState>()
      .getCategory(categoryId: _categoryId)
      .getTodo(todoId: _todoId);
  void toggleTodoIsDone() {
    final updatedTodo = todo.copyWith(isDone: !todo.isDone);
    read<CategoryListController>().updateTodo(
      categoryId: _categoryId,
      todo: updatedTodo,
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
