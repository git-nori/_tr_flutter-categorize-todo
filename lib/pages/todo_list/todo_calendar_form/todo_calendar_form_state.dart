import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_calendar_form_state.freezed.dart';

@freezed
abstract class TodoCalendarFormState with _$TodoCalendarFormState {
  factory TodoCalendarFormState({
    @required DateTime limitedDateTime,
    @required bool isExistSetting,
    @required bool isSelectedTime,
  }) = _TodoCalendarFormState;
  TodoCalendarFormState._();
}
