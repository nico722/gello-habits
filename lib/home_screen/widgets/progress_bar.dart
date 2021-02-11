import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  final Color color;
  final IconData icon;
  final String label;
  double percentage;

  ProgressBar(
      {@required this.color, @required this.icon, @required this.label, this.percentage = 0});

  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Center(
            child: Icon(
              widget.icon,
              color: widget.color,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 5),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.label + ": " + (widget.percentage*100).toInt().toString() + "%",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black54),
              ),
              SizedBox.fromSize(
                size: Size(MediaQuery.of(context).size.width * 0.50, 10),
                child: LinearProgressIndicator(
                  value: widget.percentage,
                  backgroundColor: Colors.black12,
                  valueColor: AlwaysStoppedAnimation<Color>(widget.color),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
