import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gellohabits/core/entities/task.entity.dart';
import 'package:gellohabits/core/enums/task.enum.dart';
import 'package:gellohabits/home_screen/widgets/task_dialog.dart';

class TaskCard extends StatelessWidget {
  TaskEntity task;
  Color buttonColor;
  bool disableAddButton = false;
  bool disableSubstractButton = false;

  TaskCard(this.task) {
    switch (this.task.type) {
      case TaskEnum.TODO:
        this.buttonColor = Colors.blue;
        break;
      default:
        this.buttonColor = Colors.white10;
        this.disableAddButton = true;
        this.disableSubstractButton = true;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: IntrinsicHeight(
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.9),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(2, 2), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AbsorbPointer(
                absorbing: this.disableAddButton,
                child: Container(
                  color: this.buttonColor,
                  child: Material(
                    color: Colors.transparent,
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
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => showDialog(
                        context: context,
                        builder: (_) => Dialog(
                          child: TaskDialog(),
                        ),
                      ),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              this.task.title,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                              overflow: TextOverflow.fade,
                            ),
                            Text(
                              this.task.description,
                              style: TextStyle(color: Colors.black54),
                              overflow: TextOverflow.fade,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              AbsorbPointer(
                absorbing: this.disableSubstractButton,
                child: Container(
                  color: this.buttonColor,
                  child: Material(
                    color: Colors.transparent,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
