/// `SizedBox`展示了两个使用方法
/// 1. 创建一个固定大小的控件
/// 2. 通过`double.infinity`来设置最大值
/// 3. 在简单的布局里，使用不含子控件的`SizedBox`来占位
library;
import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class SizedBoxDemo extends StatelessWidget {
  const SizedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'SizedBoxDemo',
      body: Center(
        child: Column(
          children: <Widget>[
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink[200]),
              ),
              onPressed: () {},
              child: const Text('TextButton'),
            ),
            // 占位
            const SizedBox(
              height: 200.0,
            ),
            // 指定大小
            SizedBox(
              width: double.infinity,
              height: 100.0,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink[200]),
                ),
                onPressed: () {},
                child: const Text('TextButton'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
