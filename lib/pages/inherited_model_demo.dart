/// 讲道理本应该全部更新的控件树
/// 现在只根据`InheritedModel`来更新数据
/// `InheritedModel`的好处是可以根据需求，局部更新数据
///
/// 当然，现在我们使用各种状态管理插件
/// 而不再使用这一套操作，所以`InheritedModel`也可以只做了解
library;
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class InheritedModelDemo extends StatefulWidget {
  const InheritedModelDemo({super.key});

  @override
  _InheritedModelDemoState createState() => _InheritedModelDemoState();
}

class _InheritedModelDemoState extends State<InheritedModelDemo> {
  int data1 = 0;
  int data2 = 0;

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'InheritedModelDemo',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 尝试只传入需要的数据，可行
          DataModel(
            number1: data1,
            // number2: data2,
            child: const ChildWidget1(),
          ),
          DataModel(
            // number1: data1,
            number2: data2,
            child: const ChildWidget2(),
          ),
          ElevatedButton(
            onPressed: () => setState(() => ++data1),
            child: const Text('++data1'),
          ),
          ElevatedButton(
            onPressed: () => setState(() => ++data2),
            child: const Text('++data2'),
          ),
        ],
      ),
    );
  }
}

class ChildWidget1 extends StatefulWidget {
  const ChildWidget1({super.key});

  @override
  _ChildWidget1State createState() => _ChildWidget1State();
}

class _ChildWidget1State extends State<ChildWidget1> {
  @override
  Widget build(BuildContext context) {
    final data = InheritedModel.inheritFrom<DataModel>(
      context,
      aspect: 100,
    )!;
    return Center(
      child: Text('data1:${data.number1}'),
    );
  }

  // 检测是否更新
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log('ChildWidget1 changed');
  }
}

class ChildWidget2 extends StatefulWidget {
  const ChildWidget2({super.key});

  @override
  _ChildWidget2State createState() => _ChildWidget2State();
}

class _ChildWidget2State extends State<ChildWidget2> {
  @override
  Widget build(BuildContext context) {
    final data = InheritedModel.inheritFrom<DataModel>(
      context,
      aspect: 200,
    )!;

    return Center(
      child: Text('data2:${data.number2}'),
    );
  }

  // 检测是否更新
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log('ChildWidget2 changed');
  }
}

/// `InheritedModel`后的类型，和`updateShouldNotifyDependent`中的`dependencies`的类型一致
class DataModel extends InheritedModel<int> {
  const DataModel({
    required super.child, this.number1,
    this.number2,
    super.key,
  });
  final int? number1;
  final int? number2;

  @override
  bool updateShouldNotifyDependent(DataModel oldWidget, Set<int> dependencies) {
    /// 对应的，`dependencies.contains`的类型也需要用
    if (dependencies.contains(100) && number1 != oldWidget.number1) {
      return true;
    } else if (dependencies.contains(200) && number2 != oldWidget.number2) {
      return true;
    }
    return false;
  }

  @override
  bool updateShouldNotify(DataModel oldWidget) =>
      oldWidget.number1 != number1 || oldWidget.number2 != number2;
}
