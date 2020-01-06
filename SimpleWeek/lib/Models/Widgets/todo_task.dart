import 'package:flutter/material.dart';
import '../global.dart';

class TodoTask extends StatelessWidget
{
  final String taskText;
  final Color color;

  TodoTask({Key key, @required this.taskText, this.color = greenNormal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 110.0,
      child: Stack(
        children: <Widget>[
          Container(
            height: 80,
            width: screenWidth - 40.0,
            margin: EdgeInsets.only(top: 5.0, right: 0.0),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 100.0, right: 30.0, bottom: 5.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  taskText,
                  style: taskStyle,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ),
          ),
          Container(
            height: 90.0,
            width: 90.0,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                width: 5.0,
                color: darkGreyBackground
              ),
            ),
          )
        ],
      ),
    );
  }
}