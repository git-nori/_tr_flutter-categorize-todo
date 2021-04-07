import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'todo_form_state.freezed.dart';

@freezed
abstract class TodoFormState with _$TodoFormState {
  factory TodoFormState({
    @Default('') String title,
    DateTime limitedDateTime,
    @Default(false) bool isSelectedTime,
  }) = _TodoFormState;
  TodoFormState._();

  @late
  String get formatedDateTime => isSelectedTime
      ? DateFormat('M月dd日(E) H:mm', 'ja_JP').format(limitedDateTime)
      : DateFormat('M月dd日(E)', 'ja_JP').format(limitedDateTime);
}
