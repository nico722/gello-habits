import 'package:flutter/material.dart';
import 'package:gellohabits/home_screen/widgets/character_thumbnail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage;
  PageController _pageController;

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
      body: Column(
        children: [
          Flexible(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox.fromSize(
                      size: Size(300, 10),
                      child: LinearProgressIndicator(
                        value: 0.3,
                        backgroundColor: Colors.grey,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(60, 60),
                      child: CharacterThumbnail(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: PageView(
              controller: _pageController,
              onPageChanged: pageChanged,
              children: <Widget>[
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.purple,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
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
