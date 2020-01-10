import 'package:SimpleWeek/Models/Widgets/todo_task.dart';
import 'package:flutter/material.dart';
import 'package:SimpleWeek/Models/global.dart';
import 'package:SimpleWeek/Models/Classes/task.dart';

class BacklogPage extends StatefulWidget {
  BacklogPage({Key key}) : super(key: key);

  @override
  _BacklogPageState createState() => _BacklogPageState();
}

class _BacklogPageState extends State<BacklogPage> {
  List<Task> fullTodoList = [
    new Task("Buy christmas presents", false),
    new Task("Research how to make an app", false),
    new Task("Make a really long task that won\'t fit the display box so it will have to overflow", false),
    new Task("Make a task with subtasks", false),
  ];
  List<Task> visibleTodoList = [];
  String searchText = '';

  Widget makeTask(Task task) {
    return TodoTask(
      key: Key(task.taskID),
      taskText: task.description,
      color: task.color,
    );
  }

  makeTaskList(){
    visibleTodoList = [];
    for (var task in fullTodoList) {
      if (searchText.isEmpty || task.description.toLowerCase().contains(searchText)){
        visibleTodoList.add(new Task(task.description, task.completed));
      }
    }
  }

  onReorder(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex--;
    }

    setState(() {
      final Task task = visibleTodoList.removeAt(oldIndex);
      visibleTodoList.insert(newIndex, task);
    });
  }

  onSearch(){
    setState(() {
      searchText = searchText.toLowerCase();
      makeTaskList();
    });
  }

  @override
  void initState() {
    super.initState();
    makeTaskList();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      color: darkGreyBackground,
      child: Wrap(
        children: <Widget>[
          buildTitle(context),
          Stack(
            children: <Widget>[
              buildTaskList(context, height),
              buildSearchBar(context),
            ],
          )
        ],
      ),
    );
  }

  Widget buildTitle(BuildContext context)
  {
    return Container(
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
    );
  }

  Widget buildTaskList(BuildContext context, double screenHeight){
    return Container(
      height: screenHeight - 100.0 - 38 - 15 - 55,
      child: Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: ReorderableListView(
          padding: EdgeInsets.only(top: 68.0, left: 20.0, right: 20.0),
          children: visibleTodoList.map(makeTask).toList(),
          scrollDirection: Axis.vertical,
          onReorder: (int oldIndex, int newIndex) {
            onReorder(oldIndex, newIndex);
          },
        ),
      ),
    );
  }

  Widget buildSearchBar(BuildContext context){
    return Container(
      height: 38.0,
      margin: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(19.0)),
        color: greyNormal
      ),
      child: TextField(
        style: searchFieldEditStyle,
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
        onChanged: (String input) {
          searchText = input;
          onSearch();
        },
      ),
    );
  }
}
