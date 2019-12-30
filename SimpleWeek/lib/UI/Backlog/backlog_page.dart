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
                height: 38.0,
                margin: EdgeInsets.only(top: 15.0, left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(19.0)),
                  color: greyNormal
                ),
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
              )
            ],
          )
        ],
      ),
    );
  }
}
