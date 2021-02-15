import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gellohabits/core/enums/task.enum.dart';
import 'package:gellohabits/home_screen/widgets/status_widget.dart';
import 'package:gellohabits/home_screen/widgets/task_card.dart';
import 'package:gellohabits/services/task_service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage;
  PageController _pageController;
  ScrollController _scrollController = ScrollController();
  final TaskService _taskService = TaskService(); // No tengo claro si esto seria un servicio o un controller para flutter

  _HomePageState() {
    _currentPage = 0;
    _pageController = PageController();
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
        body: PageView(
          controller: _pageController,
          onPageChanged: pageChanged,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: ListView(
                padding: EdgeInsets.only(bottom: 80),
                children: this._taskService.getUserTasksByType(TaskEnum.HABIT).map((e) => TaskCard(e)).toList(),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListView(
                padding: EdgeInsets.only(bottom: 80),
                children: this._taskService.getUserTasksByType(TaskEnum.DAILY).map((e) => TaskCard(e)).toList(),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListView(
                padding: EdgeInsets.only(bottom: 80),
                children: this._taskService.getUserTasksByType(TaskEnum.TODO).map((e) => TaskCard(e)).toList(),
              ),
            ),
            Container(
              color: Colors.green,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        mini: true,
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Habitos"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_sharp), label: "Diarios"),
          BottomNavigationBarItem(
              icon: Icon(Icons.check_circle_outline_sharp), label: "Por Hacer"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_atm_sharp), label: "Recompenzas"),
        ],
        currentIndex: _currentPage,
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.blue,
        onTap: pageChanger,
        showUnselectedLabels: true,
      ),
      drawer: Drawer(),
    );
  }

  pageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  pageChanger(int page) {
    setState(() {
      _pageController.animateToPage(page,
          duration: Duration(milliseconds: 300), curve: Curves.ease);
      _currentPage = page;
    });
  }
}
