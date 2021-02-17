import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  final Color color;
  final IconData icon;
  final String label;
  double percentage;

  ProgressBar(
      {@required this.color,
      @required this.icon,
      @required this.label,
      this.percentage = 0});

  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          flex: 1,
          child: Center(
            child: Icon(
              widget.icon,
              color: widget.color,
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            padding: EdgeInsets.only(left: 5),
            child: IntrinsicWidth(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.label +
                        ": " +
                        (widget.percentage * 100).toInt().toString() +
                        "%",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: LinearProgressIndicator(
                      value: widget.percentage,
                      minHeight: 10,
                      backgroundColor: Colors.black12,
                      valueColor: AlwaysStoppedAnimation<Color>(widget.color),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
