/// flexible这个控件其实类似于原生安卓里的weight比重
/// 或许有更好的使用方式，而不只是控件

import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class FlexibleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "FlexibleDemo",
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Container(color: Colors.red[400]),
          ),
          // 默认值为1
          Flexible(child: Container(color: Colors.blue[300],)),
          Container(
            child: Text("without Flexible, and be a cookie"),
            color: Colors.yellow[300],
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.green[400],
            ),
          )
        ],
      ),
    );
  }
}
