import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/model/controller/category_list_controller/category_list_controller.dart';
import 'package:flutter_firebase_todo/pages/todo_list/todo_list/todo_list.dart';
import 'package:flutter_firebase_todo/pages/todo_list/todo_list_tab_controller.dart';
import 'package:flutter_firebase_todo/pages/todo_list/todo_list_tab_state.dart';
import 'package:flutter_firebase_todo/widget/colored_tab_bar.dart';
import 'package:flutter_firebase_todo/widget/floating_action_button.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class TodoListPage extends StatefulWidget {
  static const rootId = '/todo_list';

  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<TodoListTabController, TodoListTabState>(
      create: (BuildContext context) => TodoListTabController(TabController(
        length: context.read<CategoryListState>().categoryList.length,
        vsync: this,
      )),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade800,
          actions: [
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        '編集',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.keyboard_control_sharp),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(icon: const Icon(Icons.folder), onPressed: () {}),
                  IconButton(
                      icon: const Icon(Icons.settings), onPressed: () {}),
                ],
              ),
            ),
          ],
          bottom: ColoredTabBar(
            color: Colors.black,
            tabBar: TabBar(
              controller: context
                  .select((TodoListTabState state) => state.tabController),
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              isScrollable: true,
              tabs: context
                  .select((CategoryListState state) => state.categoryList)
                  .map((e) => _Tab(
                        title: e.title,
                        totalCnt: e.notCompletedTodoCnt,
                      ))
                  .toList(),
            ),
          ),
        ),
        body: Container(
          color: Colors.black,
          child: TabBarView(
            controller:
                context.select((TodoListTabState state) => state.tabController),
            children: context
                .select((CategoryListState state) => state.categoryList)
                .map((e) => TodoList(todoList: e.todoList))
                .toList(),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: const FloatingActionBtn(),
      ),
    );
  }
}

class _Tab extends StatelessWidget {
  const _Tab({
    Key key,
    @required this.title,
    @required this.totalCnt,
  }) : super(key: key);
  final String title;
  final int totalCnt;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        children: () {
          final titleWidget = Text(title);
          return totalCnt <= 0
              ? [titleWidget]
              : [
                  titleWidget,
                  const SizedBox(width: 5),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Center(child: Text('$totalCnt')),
                  ),
                ];
        }(),
      ),
    );
  }
}
