import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class SafeAreaDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MyScaffold(
        appBarTitle: "SafeAreaDemo",
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("SafeArea控件在iOS端适配良好，安卓端屏幕尺寸过多，现只展示水滴屏下，水滴被作用的结果"),
          ],
        ),
      ),
    );
  }
}
