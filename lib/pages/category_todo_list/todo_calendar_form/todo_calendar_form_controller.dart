import 'package:flutter/foundation.dart';
import 'package:flutter_firebase_todo/pages/category_todo_list/todo_calendar_form/todo_calendar_form_state.dart';
import 'package:flutter_firebase_todo/pages/category_todo_list/todo_form/todo_form_controller.dart';
import 'package:state_notifier/state_notifier.dart';

class TodoCalendarFormController extends StateNotifier<TodoCalendarFormState>
    with LocatorMixin {
  TodoCalendarFormController({
    @required DateTime limitedDateTime,
    @required bool isSelectedTime,
  }) : super(
          TodoCalendarFormState(
            limitedDateTime: limitedDateTime ?? DateTime.now(),
            isExistSetting: limitedDateTime != null,
            isSelectedTime: isSelectedTime,
          ),
        );
  TodoFormController get _todoFormController => read();

  void setLimitedTime(DateTime val) =>
      state = state.copyWith(limitedDateTime: val, isSelectedTime: true);

  void setLimitedDate(DateTime val) {
    final sameTimeVal = val
        .add(Duration(hours: state.limitedDateTime.hour))
        .add(Duration(hours: state.limitedDateTime.minute));
    final diffDuration = sameTimeVal.difference(state.limitedDateTime);
    final limitedDateTime = state.limitedDateTime.add(diffDuration);
    state = state.copyWith(limitedDateTime: limitedDateTime);
  }

  void setLimitedDateTime() => _todoFormController.setLimitedDateTime(
        state.limitedDateTime,
        isSelectedTime: state.isSelectedTime,
      );
}
