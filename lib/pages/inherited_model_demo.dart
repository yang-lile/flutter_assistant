/// 讲道理本应该全部更新的控件树
/// 现在只根据`InheritedModel`来更新数据
/// `InheritedModel`的好处是可以根据需求，局部更新数据
///
/// 当然，现在我们使用各种状态管理插件
/// 而不再使用这一套操作，所以`InheritedModel`也可以只做了解

import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class InheritedModelDemo extends StatefulWidget {
  @override
  _InheritedModelDemoState createState() => _InheritedModelDemoState();
}

class _InheritedModelDemoState extends State<InheritedModelDemo> {
  int data1 = 0;
  int data2 = 0;

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "InheritedModelDemo",
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 尝试只传入需要的数据，可行
          DataModel(
            number1: data1,
            // number2: data2,
            child: ChildWidget1(),
          ),
          DataModel(
            // number1: data1,
            number2: data2,
            child: ChildWidget2(),
          ),
          ElevatedButton (
            onPressed: () => setState(() => ++data1),
            child: Text("++data1"),
          ),
          ElevatedButton (
            onPressed: () => setState(() => ++data2),
            child: Text("++data2"),
          ),
        ],
      ),
    );
  }
}

class ChildWidget1 extends StatefulWidget {
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
      child: Text("data1:${data.number1}"),
    );
  }

  // 检测是否更新
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("ChildWidget1 changed");
  }
}

class ChildWidget2 extends StatefulWidget {
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
      child: Text("data2:${data.number2}"),
    );
  }

  // 检测是否更新
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("ChildWidget2 changed");
  }
}

/// `InheritedModel`后的类型，和`updateShouldNotifyDependent`中的`dependencies`的类型一致
class DataModel extends InheritedModel<int> {
  final int? number1;
  final int? number2;

  const DataModel({
    this.number1,
    this.number2,
    required Widget child,
  }) : super(child: child);

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
