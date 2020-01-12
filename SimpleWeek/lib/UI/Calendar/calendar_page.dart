import 'package:SimpleWeek/Models/Widgets/todo_task.dart';
import 'package:SimpleWeek/UI/Calendar/daily_page.dart';
import 'package:SimpleWeek/UI/Calendar/weekly_page.dart';
import 'package:flutter/material.dart';
import 'package:SimpleWeek/Models/global.dart';
import 'package:SimpleWeek/Models/Classes/task.dart';

class CalendarPage extends StatefulWidget {
  CalendarPage({Key key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  bool isDailyPage = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        buildActivePage(),
        buildActiveButton(),
      ],
    );
  }

  Widget buildActivePage() {
    return isDailyPage ? DailyPage() : WeeklyPage();
  }

  Widget buildActiveButton() {
    Alignment alignment = isDailyPage ? Alignment.centerRight : Alignment.centerLeft;
    return Container(
      height: 100.0,
      alignment: alignment,
      child: buildButton(),
    );
  }

  Widget buildButton() {
    return FlatButton(
      onPressed: () {
        setState(() {
          isDailyPage = !isDailyPage;
        });
      },
      child: Icon(
        isDailyPage ? Icons.arrow_forward_ios : Icons.arrow_back_ios,
        size: 56.0,
      ),
    ); 
  }
}