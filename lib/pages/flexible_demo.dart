/// flexible这个控件其实类似于原生安卓里的weight比重
/// 或许有更好的使用方式，而不只是控件
library;
import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class FlexibleDemo extends StatelessWidget {
  const FlexibleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'FlexibleDemo',
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: ColoredBox(color: Colors.red.shade400),
          ),
          // 默认值为1
          Flexible(
            child: ColoredBox(
              color: Colors.blue.shade300,
            ),
          ),
          ColoredBox(
            color: Colors.yellow.shade300,
            child: const Text('without Flexible, and be a cookie'),
          ),
          Flexible(
            flex: 2,
            child: ColoredBox(
              color: Colors.green.shade400,
            ),
          ),
        ],
      ),
    );
  }
}
