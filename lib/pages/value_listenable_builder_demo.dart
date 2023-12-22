/// 居然是一个不需要重绘ui就可以更新数据的控件
/// 奇怪的性能提升了！！！
/// https://juejin.im/post/5ced2f62e51d454fd8057b18#heading-3
/// 网址提供了自定义`ValueNotifier`的方法，可以局部更新对象的数据
library;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class ValueListenableBuilderDemo extends StatelessWidget {
  const ValueListenableBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final valueNotifier = ValueNotifier<int>(0);
    final random = Random();

    return MyScaffold(
      appBarTitle: 'ValueListenableBuilderDemo',
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: valueNotifier,
          builder: (BuildContext context, dynamic value, Widget? child) {
            return Table(
              children: [
                TableRow(
                  children: [
                    Center(child: Text('$value')),
                    Center(child: Text('$value')),
                    Center(child: Text('$value')),
                    Center(child: Text('$value')),
                  ],
                ),
                TableRow(
                  children: [
                    Center(child: Text('$value')),
                    Center(child: Text('$value')),
                    Center(child: Text('$value')),
                    Center(child: Text('$value')),
                  ],
                ),
                TableRow(
                  children: [
                    Center(child: Text('$value')),
                    Center(child: Text('$value')),
                    Center(child: Text('$value')),
                    Center(child: Text('$value')),
                  ],
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () => valueNotifier.value = random.nextInt(9999),
      ),
    );
  }
}
