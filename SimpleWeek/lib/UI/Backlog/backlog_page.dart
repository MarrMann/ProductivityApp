import 'package:flutter/material.dart';
import 'package:SimpleWeek/Models/global.dart';

class BacklogPage extends StatefulWidget {
  BacklogPage({Key key}) : super(key: key);

  @override
  _BacklogPageState createState() => _BacklogPageState();
}

class _BacklogPageState extends State<BacklogPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
              color: greyNormal
            ),
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
                child: ListView(
                  padding: EdgeInsets.only(top: 68.0, left: 20.0, right: 20.0),
                  children: getList(width),
                  physics: new BouncingScrollPhysics(),
                ),
              ),
              Container(
                height: 38.0,
                margin: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(19.0)),
                  color: greyNormal
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search....',
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

  List<Widget> getList(double screenWidth) {
    return [
      Container(
        height: 110.0,
        child: Stack(
          children: <Widget>[
            Container(
              height: 80,
              width: screenWidth - 40.0,
              margin: EdgeInsets.only(top: 5.0, right: 0.0),
              decoration: BoxDecoration(
                color: greenNormal,
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 100.0, right: 30.0, bottom: 5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Buy christmas presents',
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
      ),
      Container(
        height: 110.0,
        child: Stack(
          children: <Widget>[
            Container(
              height: 80,
              width: screenWidth - 40.0,
              margin: EdgeInsets.only(top: 5.0, right: 0.0),
              decoration: BoxDecoration(
                color: greenNormal,
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 100.0, right: 30.0, bottom: 5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Research how to make an app',
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
      ),
      Container(
        height: 110.0,
        child: Stack(
          children: <Widget>[
            Container(
              height: 80,
              width: screenWidth - 40.0,
              margin: EdgeInsets.only(top: 5.0, right: 0.0),
              decoration: BoxDecoration(
                color: greenNormal,
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 100.0, right: 30.0, bottom: 5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Make a really long task that won\'t fit the display box so it will have to overflow',
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
      ),
      Container(
        height: 110.0,
        child: Stack(
          children: <Widget>[
            Container(
              height: 80,
              width: screenWidth - 40.0,
              margin: EdgeInsets.only(top: 5.0, right: 0.0),
              decoration: BoxDecoration(
                color: greenNormal,
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 100.0, right: 30.0, bottom: 5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Make a really long task that won\'t fit the display box so it will have to overflow',
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
      ),
      Container(
        height: 110.0,
        child: Stack(
          children: <Widget>[
            Container(
              height: 80,
              width: screenWidth - 40.0,
              margin: EdgeInsets.only(top: 5.0, right: 0.0),
              decoration: BoxDecoration(
                color: greenNormal,
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 100.0, right: 30.0, bottom: 5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Make a really long task that won\'t fit the display box so it will have to overflow',
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
      ),
      Container(
        height: 110.0,
        child: Stack(
          children: <Widget>[
            Container(
              height: 80,
              width: screenWidth - 40.0,
              margin: EdgeInsets.only(top: 5.0, right: 0.0),
              decoration: BoxDecoration(
                color: greenNormal,
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 100.0, right: 30.0, bottom: 5.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Make a really long task that won\'t fit the display box so it will have to overflow',
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
      ),
    ];
  }
}
