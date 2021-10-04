/// 视频中演示了Opacity，十分简单，设置opacity为0即可
/// 我们来实现AnimatedOpacity

import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class OpacityDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OpacityState();
}

class OpacityState extends State<OpacityDemo> {
  late var _myOpacity;
  var _myDuration = Duration(milliseconds: 500);
  @override
  void initState() {
    super.initState();
    _myOpacity = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "OpacityDemo",
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: _myOpacity,
              duration: _myDuration,
              child: Icon(Icons.hourglass_empty),
              onEnd: () => setState(() => _myOpacity = 0.0),
            ),
            TextButton(
              onPressed: () => setState(() => _myOpacity = 1.0),
              child: Text("Click!"),
            ),
          ],
        ),
      ),
    );
  }
}
