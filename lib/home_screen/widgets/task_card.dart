import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.add_circle),
              title: Text('task title'),
              subtitle: Text('Task description'),
              trailing: Icon(Icons.remove_circle),
            ),
          ],
        ),
      ),
    );
  }
}

/*

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
