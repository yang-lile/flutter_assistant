import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class SafeAreaDemo extends StatelessWidget {
  const SafeAreaDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MyScaffold(
        appBarTitle: 'SafeAreaDemo',
        body: Column(
          children: const <Widget>[
            Text('SafeArea控件在iOS端适配良好，安卓端屏幕尺寸过多，现只展示水滴屏下，水滴被作用的结果'),
          ],
        ),
      ),
    );
  }
}
