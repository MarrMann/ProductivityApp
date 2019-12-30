import 'package:SimpleWeek/Models/global.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SimpleWeek',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SafeArea(
        child: new DefaultTabController(
          length: 4,
          child: new Scaffold(
            body: TabBarView(
              children: <Widget>[
                new Container(
                  color: greyNormal,
                ),
                new Container(
                  color: greyNormal,
                ),
                new Container(
                  color: greyNormal,
                ),
                new Container(
                  color: greyNormal,
                ),
              ],
            ),
            bottomNavigationBar: new TabBar(
              tabs: <Widget>[
                Tab(
                  icon: new Icon(Icons.perm_identity),
                  text: 'Account',
                ),
                Tab(
                  icon: new Icon(Icons.settings),
                  text: 'Settings',
                ),
                Tab(
                  icon: new Icon(Icons.list),
                  text: 'Backlog',
                ),
                Tab(
                  icon: new Icon(Icons.calendar_today),
                  text: 'Calendar',
                ),
              ],
              unselectedLabelColor: greyNormal,
              labelStyle: navbarStyle,
              labelPadding: EdgeInsets.all(5.0),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.white,
            ),
            backgroundColor: Colors.white12,
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: Center(),
    );
  }
}
