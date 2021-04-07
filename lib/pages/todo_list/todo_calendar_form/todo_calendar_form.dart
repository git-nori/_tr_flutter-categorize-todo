import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_firebase_todo/pages/todo_list/todo_calendar_form/todo_calendar_form_state.dart';
import 'package:flutter_firebase_todo/pages/todo_list/todo_form/todo_form_controller.dart';
import 'package:flutter_firebase_todo/pages/todo_list/todo_form/todo_form_state.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'todo_calendar_form_controller.dart';

class TodoCalendarForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<TodoCalendarFormController,
        TodoCalendarFormState>(
      create: (_) {
        final todoFormState = context.read<TodoFormState>();
        return TodoCalendarFormController(
          limitedDateTime: todoFormState.limitedDateTime,
          isSelectedTime: todoFormState.isSelectedTime,
        );
      },
      builder: (context, child) => Container(
        color: Colors.black,
        child: Column(children: [
          const _TitleBar(),
          const SizedBox(height: 30),
          _CalendarTable(),
          const Divider(color: Colors.white, height: 0),
          const _SelectDateTimeBtn(),
          const SizedBox(height: 30),
          if (context
              .select((TodoCalendarFormState state) => state.isExistSetting))
            const _DeleteBtn(),
        ]),
      ),
    );
  }
}

class _TitleBar extends StatelessWidget {
  const _TitleBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              'キャンセル',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const Text(
            '期限・通知設定',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {
              context.read<TodoCalendarFormController>().setLimitedDateTime();
              Navigator.of(context).pop();
            },
            child: const Text(
              '保存',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class _CalendarTable extends StatefulWidget {
  @override
  _CalendarTableState createState() => _CalendarTableState();
}

class _CalendarTableState extends State<_CalendarTable> {
  void _onDayPressed(DateTime date, List<Event> events, BuildContext context) =>
      context.read<TodoCalendarFormController>().setLimitedDate(date);

  Widget _customWeekDayBuilder(int weekday, String weekdayName) {
    var color = Colors.white;
    switch (weekday) {
      case DateTime.saturday:
        color = Colors.blue;
        break;
      case DateTime.sunday - 7:
        color = Colors.red;
        break;
      default:
    }
    return Expanded(
      flex: 1,
      child: Center(
        child: Text(
          weekdayName,
          style: TextStyle(color: color),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: CalendarCarousel<Event>(
        locale: 'ja',
        onDayPressed: (DateTime date, List<Event> events) =>
            _onDayPressed(date, events, context),
        height: 420,
        selectedDateTime: context
            .select((TodoCalendarFormState state) => state.limitedDateTime),
        customGridViewPhysics: const NeverScrollableScrollPhysics(),
        todayButtonColor: Colors.black,
        selectedDayButtonColor: Colors.tealAccent.shade700,
        customWeekDayBuilder: _customWeekDayBuilder,
        weekendTextStyle: const TextStyle(color: Colors.white),
        daysTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        selectedDayTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        todayTextStyle: const TextStyle(
          color: Colors.tealAccent,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _SelectDateTimeBtn extends StatelessWidget {
  const _SelectDateTimeBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final limitedDateTime =
        context.select((TodoCalendarFormState state) => state.limitedDateTime);
    final isSelectedTime =
        context.select((TodoCalendarFormState state) => state.isSelectedTime);
    return Container(
        color: Theme.of(context).backgroundColor,
        child: TextButton(
          onPressed: () {
            // TODO: modify custom picker because, show setting btn which delete time
            DatePicker.showTimePicker(
              context,
              currentTime: limitedDateTime,
              showSecondsColumn: false,
              onConfirm: (time) => context
                  .read<TodoCalendarFormController>()
                  .setLimitedTime(time),
              locale: LocaleType.jp,
              theme: DatePickerTheme(
                backgroundColor: Colors.black,
                headerColor: Theme.of(context).backgroundColor,
                cancelStyle: const TextStyle(color: Colors.white),
                doneStyle: const TextStyle(color: Colors.white),
                itemStyle: const TextStyle(color: Colors.white),
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '時刻',
                style: TextStyle(color: Colors.white),
              ),
              !isSelectedTime
                  ? const Text(
                      'なし',
                      style: TextStyle(color: Colors.white),
                    )
                  : Text(
                      DateFormat.Hm().format(limitedDateTime),
                      style: const TextStyle(color: Colors.white),
                    ),
            ],
          ),
        ));
  }
}

class _DeleteBtn extends StatelessWidget {
  const _DeleteBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          context.read<TodoFormController>().setLimitedDateTime(null);
          Navigator.of(context).pop();
        },
        child: const Text(
          'この設定を削除する',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
