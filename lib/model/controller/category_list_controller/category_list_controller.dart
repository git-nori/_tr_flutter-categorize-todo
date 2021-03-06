import 'package:flutter_firebase_todo/model/model.dart';
import 'package:state_notifier/state_notifier.dart';
import 'category_list_state.dart';
export 'category_list_state.dart';

final mockedList = [
  Category(
    id: 1,
    title: 'Category1',
    todoList: [
      Todo(
        id: 1,
        title: 'Category1 todo1',
        isDone: true,
        limitDateTime: DateTime.now().add(const Duration(hours: 1)),
        isSelectedTime: true,
      ),
      Todo(
        id: 2,
        title: 'Category1 todo2',
        isDone: false,
        limitDateTime: DateTime.now().add(const Duration(hours: 1)),
        isSelectedTime: false,
      ),
      Todo(
        id: 3,
        title: 'Category1 todo3',
        isDone: false,
        isSelectedTime: false,
      ),
    ],
  ),
  Category(
    id: 2,
    title: 'Category2',
    todoList: [
      Todo(
        id: 4,
        title: 'Category2 todo2',
        isDone: true,
        isSelectedTime: false,
      ),
      Todo(
        id: 5,
        title: 'Category2 todo3',
        isDone: false,
        isSelectedTime: false,
      ),
    ],
  ),
  Category(
    id: 3,
    title: 'Category3',
    todoList: [
      Todo(
        id: 6,
        title: 'Category3 todo3',
        isDone: true,
        isSelectedTime: false,
      ),
    ],
  ),
];

class CategoryListController extends StateNotifier<CategoryListState> {
  CategoryListController() : super(CategoryListState(categoryList: mockedList));

  void addTodo(int categoryId, String title, DateTime limitedDateTime,
      {bool isSelectedTime = false}) {
    final category = state.getCategory(categoryId: categoryId);
    final updatedTodo = Todo(
      id: category.nextTodoId,
      title: title,
      isDone: false,
      limitDateTime: limitedDateTime,
      isSelectedTime: isSelectedTime,
    );
    final updatedTodoList = [...category.todoList, updatedTodo];
    final updatedCategory = category.copyWith(todoList: updatedTodoList);
    updateCategory(category: updatedCategory);
  }

  void updateTodo({int categoryId, Todo todo}) {
    final category = state.getCategory(categoryId: categoryId);
    final updatedTodoList = category.todoList.map((e) {
      if (e.id != todo.id) {
        return e;
      }
      return todo;
    }).toList();
    final updatedCategory = category.copyWith(todoList: updatedTodoList);
    updateCategory(category: updatedCategory);
  }

  void deleteCompletedTodoList({int categoryId}) {
    final category = state.getCategory(categoryId: categoryId);
    final todoIdList = category.completedTodoList.map((e) => e.id);
    final updatedTodoList = category.todoList
        .where((element) => !todoIdList.contains(element.id))
        .toList();
    final updatedCategory = category.copyWith(todoList: updatedTodoList);
    updateCategory(category: updatedCategory);
  }

  void updateCategory({Category category}) {
    final updatedCategoryList = state.categoryList.map((e) {
      if (e.id != category.id) {
        return e;
      }
      return category;
    }).toList();
    state = state.copyWith(categoryList: updatedCategoryList);
  }
}
