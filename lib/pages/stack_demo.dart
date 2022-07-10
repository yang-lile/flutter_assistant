/// 默认居左上角，可以使用alinment属性，自定义对齐方式
import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'StackDemo',
      body: Center(
        child: Stack(
          // 默认是Overflow.clip（超出的剪切掉），改为超出的也显示
          // overflow: Overflow.visible,
          // update on flutter ^1.26.0
          clipBehavior: Clip.none,
          children: <Widget>[
            Container(
              color: Colors.red[300],
              width: 180.0,
              height: 180.0,
            ),
            Container(
              color: Colors.yellow[300],
              width: 150.0,
              height: 150.0,
            ),
            Container(
              color: Colors.blue[300],
              width: 120.0,
              height: 120.0,
            ),
            Container(
              color: Colors.green[300],
              width: 90.0,
              height: 90.0,
            ),
            Positioned(
              bottom: -30,
              right: -30,
              child: Container(
                color: Colors.blueGrey[300],
                width: 60.0,
                height: 60.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
