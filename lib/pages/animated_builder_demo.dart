/// https://flutterchina.club/tutorials/animation/
/// 这个网址展示了关于动画使用的完整示例
library;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class AnimatedBuilderDemo extends StatelessWidget {
  const AnimatedBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'AnimatedBuilderDemo',
      body: Center(
        child: _MyAnimated(),
      ),
    );
  }
}

class _MyAnimated extends StatefulWidget {
  @override
  __MyAnimatedState createState() => __MyAnimatedState();
}

class __MyAnimatedState extends State<_MyAnimated>
    with SingleTickerProviderStateMixin {
  // 需要导入`SingleTickerProviderStateMixin`实现不超过该控件的边界
  late Animation<double> animation;
  late AnimationController controller;
  Widget child = const FlutterLogo();
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // 1秒动画
    );
    animation =
        Tween(begin: 0.0, end: pi * 2.0).animate(controller) // 生成旋转360度的值
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                // 如果完成了，就反转动画
                controller.reverse();
              } else if (status == AnimationStatus.dismissed) {
                // 如果处于可以开始的状态
                controller.forward();
              }
            },
          );
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      // 构建一个动画，原理是生成函数里生成一帧的样式
      // 通过`AnimatedBuilder`播放下一帧
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        return SizedBox(
          width: 200.0,
          height: 200.0,
          child: Transform.rotate(
            angle: animation.value, // 通过animation的值来做为动画的参数
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}
