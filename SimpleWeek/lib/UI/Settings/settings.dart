import 'package:flutter/material.dart';
import 'package:SimpleWeek/Models/global.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool shouldRemindDaily = false;
  bool shouldRemindWeekly = false;
  bool isDarkTheme = true;

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
              buildSettingsList(context, height),
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
          'SETTINGS',
          textAlign: TextAlign.center,
          style: headerStyle,
        ),
      ),
    );
  }

  Widget buildSettingsList(BuildContext context, double screenHeight){
    return Container(
      height: screenHeight - 100.0 - 38 - 15 - 55,
      child: ListView(
        children: buildSettingsTiles(context),
      ),
    );
  }

  List<Widget> buildSettingsTiles(BuildContext context){
    List<Widget> settings = [];

    //Daily reminder switch
    settings.add(
      SwitchListTile(
        title: Text('Daily reminder', style: settingsStyle),
        value: shouldRemindDaily,
        secondary: const Icon(
          Icons.schedule,
          color: Colors.white,
        ),
        onChanged: (bool value) {

        },
      )
    );

    //Daily reminder
    if (shouldRemindDaily){
      settings.add(
        ListTile(
          title: Text('Daily reminder time', style: settingsStyle),
          leading: Icon(
            Icons.bookmark_border,
            color: Colors.white,
          ),
        )
      );
    }

    //Weekly reminder switch
    settings.add(
      SwitchListTile(
        title: Text('Weekly reminder', style: settingsStyle),
        value: shouldRemindWeekly,
        secondary: const Icon(
          Icons.schedule,
          color: Colors.white,
        ),
        onChanged: (bool value) {

        },
      )
    );

    //Weekly reminder
    if (shouldRemindWeekly){
      settings.add(
        ListTile(
          title: Text('Weekly reminder time', style: settingsStyle),
          leading: Icon(
            Icons.bookmark_border,
            color: Colors.white,
          ),
        )
      );
    }

    //Daily task amount
    settings.add(
      ListTile(
        title: Text('Daily tasks', style: settingsStyle),
        leading: Icon(
          Icons.format_list_numbered,
          color: Colors.white,
        ),
      )
    );

    //Theme selection switch
    // settings.add(
    //   SwitchListTile(
    //     title: Text('Dark theme', style: settingsStyle),
    //     value: isDarkTheme,
    //     secondary: const Icon(
    //       Icons.lightbulb_outline,
    //       color: Colors.white,
    //     ),
    //     onChanged: (bool value) {

    //     },
    //   )
    // );

    return settings;
  }
}
