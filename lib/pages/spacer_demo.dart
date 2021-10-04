/// 如果说`Flexible`是用来调节子控件之间的占比

import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class SpacerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "SpacerDemo",
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                Container(height: 50, width: 50, color: Colors.blue[300]),
                Spacer(),
                Container(height: 50, width: 50, color: Colors.blue[300]),
                Spacer(),
                Container(height: 50, width: 50, color: Colors.blue[300]),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                Container(height: 50, width: 50, color: Colors.green[300]),
                Spacer(flex: 1),
                Container(height: 50, width: 50, color: Colors.green[300]),
                Spacer(flex: 2),
                Container(height: 50, width: 50, color: Colors.green[300]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
