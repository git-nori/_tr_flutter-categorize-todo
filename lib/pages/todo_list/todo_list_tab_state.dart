import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_list_tab_state.freezed.dart';

@freezed
abstract class TodoListTabState with _$TodoListTabState {
  factory TodoListTabState({@Default(0) int currentIndex}) = _TodoListTabState;
  TodoListTabState._();
}
