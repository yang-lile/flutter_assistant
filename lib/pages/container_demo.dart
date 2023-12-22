/// 其实比较有趣的是，Container的内部实现只是把以下顺序的控件组合起来了而已
/// ConstrainedBox（拓展至最大） LimitedBox Align effectivePadding（有效边距）
/// ColoredBox DecoratedBox ConstrainedBox Padding Transform ClipPath
/// 具体实现方法可以查看源码，理论上只用单组件更便于渲染，但是使用Container更便于维护
/// 至于怎么使用，这取决于你。
library;
import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'ContainerDemo',
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 120.0), //容器外填充
        constraints:
            const BoxConstraints.tightFor(width: 200.0, height: 150.0), //卡片大小
        decoration: const BoxDecoration(
          //背景装饰
          gradient: RadialGradient(
            //背景径向渐变
            colors: [Colors.red, Colors.orange],
            center: Alignment.topLeft,
            radius: .98,
          ),
          boxShadow: [
            //卡片阴影
            BoxShadow(
              color: Colors.black54,
              offset: Offset(2.0, 2.0),
              blurRadius: 4.0,
            ),
          ],
        ),
        transform: Matrix4.rotationZ(.2), //卡片倾斜变换
        alignment: Alignment.center, //卡片内文字居中
        child: const Text(
          //卡片文字
          '5.20', style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
    );
  }
}
