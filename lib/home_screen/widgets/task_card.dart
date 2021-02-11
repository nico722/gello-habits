import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.blue,
              child: Material(
                color: Colors.transparent,
                elevation: 1,
                child: InkWell(
                  onTap: () {
                    debugPrint("add");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(Icons.add, color: Colors.white),
                        Icon(
                          Icons.add_circle,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'task title',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    overflow: TextOverflow.fade,
                  ),
                  Text(
                    'Task description',
                    style: TextStyle(color: Colors.black54),
                    overflow: TextOverflow.fade,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              child: Material(
                color: Colors.transparent,
                elevation: 1,
                child: InkWell(
                  onTap: () {
                    debugPrint("remove");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(Icons.remove, color: Colors.white),
                        Icon(
                          Icons.remove_circle,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*

Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: MaterialButton(color: Colors.blue, child: Icon(Icons.add_circle), onPressed: (){
                debugPrint("olis");
              },),
              title: Text('task title'),
              subtitle: Text('Task description'),
              trailing: Icon(Icons.remove_circle),
            ),
          ],
        ),
      ),
    );

Container(
                color: Colors.blue,
                child: Stack(
                  children: [
                    Icon(Icons.remove, color: Colors.white),
                    Icon(Icons.remove_circle, color: Colors.blueGrey,),
                  ],
                ),
              ),
 */
