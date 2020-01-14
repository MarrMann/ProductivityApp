import 'package:SimpleWeek/Models/Widgets/todo_task.dart';
import 'package:flutter/material.dart';
import 'package:SimpleWeek/Models/global.dart';
import 'package:SimpleWeek/Models/Classes/task.dart';

class WeeklyPage extends StatefulWidget {
  WeeklyPage({Key key}) : super(key: key);

  @override
  _WeeklyPageState createState() => _WeeklyPageState();
}

class _WeeklyPageState extends State<WeeklyPage> {
  List<Task> fullTodoList = [
    new Task("Buy christmas presents", false),
    new Task("Research how to make an app", false),
    new Task("Make a really long task that won\'t fit the display box so it will have to overflow", false),
    new Task("Make a task with subtasks", false),
  ];
  List<Task> visibleTodoList = [];
  final List<String> daysInAWeek = [
    "M",
    "T",
    "W",
    "T",
    "F",
    "S",
    "S",
  ];

  Widget makeTask(Task task) {
    return TodoTask(
      key: Key(task.taskID),
      taskText: task.description,
      color: task.color,
    );
  }

  onReorder(int oldIndex, int newIndex, List<Task> list) {
    if (newIndex > oldIndex) {
      newIndex--;
    }

    setState(() {
      Task task = list.removeAt(oldIndex);
      visibleTodoList.insert(newIndex, task);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      color: darkGreyBackground,
      child: Wrap(
        children: <Widget>[
          buildTitle(context),
          buildSubtitle(context),
          Stack(
            children: <Widget>[
              buildTaskList(context, height),
            ],
          )
        ],
      ),
    );
  }

  Widget buildTitle(BuildContext context){
    return Container(
      height: 100.0,
      color: greenNormal,
      child: Center(
        child: Text(
          'WEEKLY',
          textAlign: TextAlign.center,
          style: headerStyle,
        ),
      ),
    );
  }

  Widget buildSubtitle(BuildContext context){
    FixedExtentScrollController scrollController = new FixedExtentScrollController();

    return Container(
      height: 120.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: greenDark,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0)
        ),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: RotatedBox(
              quarterTurns: 3,
              child: Container(
                height: MediaQuery.of(context).size.width,
                width: 50.0,
                child: ListWheelScrollView(
                  controller: scrollController,
                  physics: FixedExtentScrollPhysics(),
                  itemExtent: 80.0,
                  diameterRatio: 1.5,
                  children: daysInAWeek.map((day) {
                    return RotatedBox(
                      quarterTurns: 1,
                      child: Text(
                        day,
                        textAlign: TextAlign.center,
                        style: daysSubtitleStyle,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'January',
              style: daysMonthStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTaskList(BuildContext context, double screenHeight){
    return Container(
      height: screenHeight - 100.0 - 38 - 15 - 55,
    );
  }
}
