/// 居然是一个不需要重绘ui就可以更新数据的控件
/// 奇怪的性能提升了！！！
/// https://juejin.im/post/5ced2f62e51d454fd8057b18#heading-3
/// 网址提供了自定义`ValueNotifier`的方法，可以局部更新对象的数据

import 'dart:math';

import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class ValueListenableBuilderDemo extends StatelessWidget {
  final ValueNotifier<int> _valueNotifier = ValueNotifier<int>(0);
  final Random _random = Random();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "ValueListenableBuilderDemo",
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: _valueNotifier,
          builder: (BuildContext context, dynamic value, Widget? child) {
            return Table(
              children: [
                TableRow(
                  children: [
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                  ],
                ),
                TableRow(
                  children: [
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                  ],
                ),
                TableRow(
                  children: [
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                    Center(child: Text("$value")),
                  ],
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () => _valueNotifier.value = _random.nextInt(9999),
      ),
    );
  }
}
