/// 如果说`Flexible`是用来调节子控件之间的占比
import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class SpacerDemo extends StatelessWidget {
  const SpacerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'SpacerDemo',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                Container(height: 50, width: 50, color: Colors.blue[300]),
                const Spacer(),
                Container(height: 50, width: 50, color: Colors.blue[300]),
                const Spacer(),
                Container(height: 50, width: 50, color: Colors.blue[300]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                Container(height: 50, width: 50, color: Colors.green[300]),
                const Spacer(),
                Container(height: 50, width: 50, color: Colors.green[300]),
                const Spacer(flex: 2),
                Container(height: 50, width: 50, color: Colors.green[300]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
