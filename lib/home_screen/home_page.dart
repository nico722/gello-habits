import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Habitos"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today_sharp), label: "Diarios"),
          BottomNavigationBarItem(icon: Icon(Icons.check_circle_outline_sharp), label: "Por Hacer"),
          BottomNavigationBarItem(icon: Icon(Icons.local_atm_sharp), label: "Recompenzas"),
        ],
        currentIndex: 0,
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.blue,
        showUnselectedLabels: true,
      ),
      drawer: Drawer(),
    );
  }
}
