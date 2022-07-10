/// 相当于把Container的高宽属性提出来的一个控件，用于设置最大高宽
import 'package:flutter/material.dart';
import 'package:flutter_assistant/entity/random_tools.dart' show RandomTools;
import 'package:flutter_assistant/template/my_scaffold.dart' show MyScaffold;

class LimitedBoxDemo extends StatelessWidget {
  const LimitedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'LimitedBoxDemo',
      body: ListView(
        children: <Widget>[
          for (var i = 0; i < 10; i++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LimitedBox(
                maxHeight: 100.0,
                maxWidth: 150.0,
                child: ColoredBox(
                  color: RandomTools.randomColors(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
