import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gellohabits/core/entities/task.entity.dart';
import 'package:gellohabits/core/enums/task.enum.dart';
import 'package:gellohabits/home_screen/widgets/status_widget.dart';
import 'package:gellohabits/home_screen/widgets/task_card.dart';
import 'package:gellohabits/services/task_service.dart';
import 'package:gellohabits/stores/pagination_store.dart';
import 'package:gellohabits/stores/task_list_store.dart';

class HomePage extends StatelessWidget {
  final PaginationStore paginationStore = PaginationStore();
  final ScrollController _scrollController = ScrollController();
  final TaskListStore _taskListStore = TaskListStore();
  TaskService _taskService;

  HomePage() {
    this._taskService = TaskService(taskListStore: this._taskListStore);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gello Habits'),
        actions: [
          IconButton(icon: Icon(Icons.search_sharp), onPressed: null),
          IconButton(icon: Icon(Icons.filter_list_sharp), onPressed: null)
        ],
      ),
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              forceElevated: innerBoxIsScrolled,
              backgroundColor: Colors.white,
              centerTitle: true,
              expandedHeight: 180,
              flexibleSpace: Status(),
            ),
          ];
        },
        body: Observer(
          builder: (context) {
            return PageView(
              controller: paginationStore.pageController,
              onPageChanged: paginationStore.pageChanged,
              children: <Widget>[
                Container(
                  color: Colors.white,
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 80),
                    itemCount: this._taskListStore.getUserTaskByType(TaskEnum.HABIT).length,
                    itemBuilder: (context, index) {
                      return TaskCard(this._taskListStore.getUserTaskByType(TaskEnum.HABIT).elementAt(index));
                    },
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: ListView(
                    padding: EdgeInsets.only(bottom: 80),
                    children: [Text('ho')],
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: ListView(
                    padding: EdgeInsets.only(bottom: 80),
                    children: [Text('ho')],
                  ),
                ),
                Container(
                  color: Colors.green,
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        mini: true,
        onPressed: () {
          debugPrint('add task button ${this._taskListStore.taskList.length}');
          this._taskService.addTask(TaskEntity.build(type: TaskEnum.HABIT,description: 'some description', title: 'some title ${this._taskListStore.taskList.length}', failurePoints: 1, successPoints: 1));
        },
      ),
      bottomNavigationBar: Observer(builder: (context) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Habitos"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_sharp), label: "Diarios"),
            BottomNavigationBarItem(
                icon: Icon(Icons.check_circle_outline_sharp),
                label: "Por Hacer"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_atm_sharp), label: "Recompenzas"),
          ],
          currentIndex: paginationStore.currentPage,
          unselectedItemColor: Colors.black54,
          selectedItemColor: Colors.blue,
          onTap: paginationStore.pageChanger,
          showUnselectedLabels: true,
        );
      }),
      drawer: Drawer(),
    );
  }
}
