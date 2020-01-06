import 'package:SimpleWeek/Models/Widgets/todo_task.dart';
import 'package:flutter/material.dart';
import 'package:SimpleWeek/Models/global.dart';

class BacklogPage extends StatefulWidget {
  BacklogPage({Key key}) : super(key: key);

  @override
  _BacklogPageState createState() => _BacklogPageState();
}

class _BacklogPageState extends State<BacklogPage> {
  List<TodoTask> todoList = [
    new TodoTask(
      key: ValueKey(0),
      taskText: 'Buy christmas presents',
    ),
    new TodoTask(
      key: ValueKey('Res 0'),
      taskText: "Research how to make an app",
    ),
    new TodoTask(
      key: ValueKey('Mak 0'),
      taskText:
          'Make a really long task that won\'t fit the display box so it will have to overflow',
    ),
    new TodoTask(
      key: ValueKey('Mak 1'),
      taskText:
          'Make a really long task that won\'t fit the display box so it will have to overflow',
    ),
    new TodoTask(
      key: ValueKey('Mak 2'),
      taskText:
          'Make a really long task that won\'t fit the display box so it will have to overflow',
    ),
    new TodoTask(
      key: ValueKey('Mak 3'),
      taskText:
          'Make a really long task that won\'t fit the display box so it will have to overflow',
    ),
  ];
  List<int> items = [];

  makeTasks() {
    items = [];

    for (int i = 0; i < todoList.length; i++) {
      items.add(i);
    }
  }

  TodoTask makeTask(int index) {
    TodoTask task = todoList[index];
    return TodoTask(
      key: Key(task.taskText + index.toString()),
      taskText: task.taskText,
      color: task.color,
    );
  }

  onReorder(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex--;
    }

    setState(() {
      final int item = items.removeAt(oldIndex);
      items.insert(newIndex, item);
    });
  }

  @override
  void initState() {
    super.initState();
    makeTasks();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      color: darkGreyBackground,
      child: Column(
        children: <Widget>[
          Container(
            height: 100.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)),
                color: greyNormal),
            child: Center(
              child: Text(
                'BACKLOG',
                textAlign: TextAlign.center,
                style: headerStyle,
              ),
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                height: height - 100.0 - 38 - 15 - 55,
                child: ReorderableListView(
                  padding: EdgeInsets.only(top: 68.0, left: 20.0, right: 20.0),
                  children: items.map(makeTask).toList(),
                  scrollDirection: Axis.vertical,
                  onReorder: (int oldIndex, int newIndex) {
                    onReorder(oldIndex, newIndex);
                  },
                ),
              ),
              Container(
                height: 38.0,
                margin: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(19.0)),
                    color: greyNormal),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search...',
                    hintStyle: searchFieldHintStyle,
                    contentPadding: EdgeInsets.only(top: -1.0),
                    prefixIcon: new Padding(
                      padding: EdgeInsets.only(left: 3.0),
                      child: new Icon(
                        Icons.search,
                        color: greyHighlight,
                        size: 32.0,
                      ),
                    ),
                  ),
                  //TODO: Add search functionality
                  onChanged: (String input) {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
