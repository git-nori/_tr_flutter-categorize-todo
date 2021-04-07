import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/pages/category_todo_list/todo_form/todo_form_state.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../todo_calendar_form/todo_calendar_form.dart';
import 'todo_form_controller.dart';

class TodoForm extends StatelessWidget {
  const TodoForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<TodoFormController, TodoFormState>(
      create: (BuildContext context) => TodoFormController(),
      builder: (context, child) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                autofocus: true,
                onChanged: (value) =>
                    context.read<TodoFormController>().setTitle(value),
              ),
              const SizedBox(height: 10),
              const _SelectDateBtn(),
              const _SubmitBtn(),
            ],
          ),
        );
      },
    );
  }
}

class _SelectDateBtn extends StatelessWidget {
  const _SelectDateBtn({
    Key key,
  }) : super(key: key);

  void _setToday(BuildContext context) {
    final limitedDateTime = DateTime.now();
    context.read<TodoFormController>().setLimitedDateTime(limitedDateTime);
  }

  void _setTommorow(BuildContext context) {
    final limitedDateTime = DateTime.now().add(const Duration(days: 1));
    context.read<TodoFormController>().setLimitedDateTime(limitedDateTime);
  }

  void _setPrevLimitedDate(BuildContext context) {
    final limitedDateTime = context
        .read<TodoFormState>()
        .limitedDateTime
        .add(const Duration(days: -1));
    context.read<TodoFormController>().setLimitedDateTime(limitedDateTime);
  }

  void _setNextLimitedDate(BuildContext context) {
    final limitedDateTime = context
        .read<TodoFormState>()
        .limitedDateTime
        .add(const Duration(days: 1));
    context.read<TodoFormController>().setLimitedDateTime(limitedDateTime);
  }

  Future _showTodoCalendarForm(BuildContext context) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (_) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.9,
        child: StateNotifierProvider<TodoFormController, TodoFormState>.value(
          value: context.read<TodoFormController>(),
          child: TodoCalendarForm(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final limitedDateTime =
        context.select((TodoFormState state) => state.limitedDateTime);
    return Align(
      alignment: Alignment.centerLeft,
      child: Wrap(
        spacing: 10,
        children: limitedDateTime == null
            ? [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(primary: Colors.grey),
                  onPressed: () => _showTodoCalendarForm(context),
                  child: const Text('期限・通知'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(primary: Colors.grey),
                  onPressed: () => _setToday(context),
                  child: const Text('今日'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(primary: Colors.grey),
                  onPressed: () => _setTommorow(context),
                  child: const Text('明日'),
                ),
              ]
            : [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(primary: Colors.grey),
                  onPressed: () => _showTodoCalendarForm(context),
                  child: Text(context
                      .select((TodoFormState state) => state.formatedDateTime)),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(primary: Colors.grey),
                  onPressed: () => _setPrevLimitedDate(context),
                  child: const Text('前日'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(primary: Colors.grey),
                  onPressed: () => _setNextLimitedDate(context),
                  child: const Text('翌日'),
                ),
              ],
      ),
    );
  }
}

class _SubmitBtn extends StatelessWidget {
  const _SubmitBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = context.select((TodoFormState state) => state.title);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        title.isEmpty
            ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                ),
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('閉じる'),
              )
            : ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                ),
                onPressed: () {
                  context.read<TodoFormController>().addTodo();
                  Navigator.of(context).pop();
                },
                child: const Text('追加'),
              ),
      ],
    );
  }
}
