/// 由本控件和上一个控件的使用，我们可以了解到有部分的控件是一个抽象类
/// 需要我们继承来实现具体效果，本例展示了五角星绘制
/// _StarCliper类来自互联网
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class ClipRRectDemo extends StatelessWidget {
  const ClipRRectDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'ClipRRectDemo',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  color: Colors.blue[400],
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipOval(
                child: Container(
                  color: Colors.blue[400],
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipPath(
                clipper: _StarCliper(radius: 100.0),
                child: Container(
                  color: Colors.blue[400],
                  width: 200,
                  height: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StarCliper extends CustomClipper<Path> {
  _StarCliper({this.radius});
  final double? radius;

  /// 角度转弧度公式
  double degree2Radian(int degree) {
    return math.pi * degree / 180;
  }

  @override
  Path getClip(Size size) {
    final radius = this.radius!;
    final path = Path();
    final radian = degree2Radian(36); // 36为五角星的角度
    final radiusIn =
        radius * math.sin(radian / 2) / math.cos(radian); // 中间五边形的半径

    path
      ..moveTo(radius * math.cos(radian / 2), 0.0) // 此点为多边形的起点
      ..lineTo(
        radius * math.cos(radian / 2) + radiusIn * math.sin(radian),
        radius - radius * math.sin(radian / 2),
      )
      ..lineTo(
        radius * math.cos(radian / 2) * 2,
        radius - radius * math.sin(radian / 2),
      )
      ..lineTo(
        radius * math.cos(radian / 2) + radiusIn * math.cos(radian / 2),
        radius + radiusIn * math.sin(radian / 2),
      )
      ..lineTo(
        radius * math.cos(radian / 2) + radius * math.sin(radian),
        radius + radius * math.cos(radian),
      )
      ..lineTo(radius * math.cos(radian / 2), radius + radiusIn)
      ..lineTo(
        radius * math.cos(radian / 2) - radius * math.sin(radian),
        radius + radius * math.cos(radian),
      )
      ..lineTo(
        radius * math.cos(radian / 2) - radiusIn * math.cos(radian / 2),
        radius + radiusIn * math.sin(radian / 2),
      )
      ..lineTo(0.0, radius - radius * math.sin(radian / 2))
      ..lineTo(
        radius * math.cos(radian / 2) - radiusIn * math.sin(radian),
        radius - radius * math.sin(radian / 2),
      )
      ..close(); // 使这些点构成封闭的多边形
    return path;
  }

  @override
  bool shouldReclip(_StarCliper oldClipper) {
    return radius != oldClipper.radius;
  }
}
