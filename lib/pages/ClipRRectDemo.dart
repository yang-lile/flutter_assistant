/// 由本控件和上一个控件的使用，我们可以了解到有部分的控件是一个抽象类
/// 需要我们继承来实现具体效果，本例展示了五角星绘制
/// _StarCliper类来自互联网

import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

import 'dart:math' as Math;

class ClipRRectDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "ClipRRectDemo",
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
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
              padding: EdgeInsets.all(20.0),
              child: ClipOval(
                child: Container(
                  color: Colors.blue[400],
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
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
  final double? radius;

  _StarCliper({this.radius});

  /// 角度转弧度公式
  double degree2Radian(int degree) {
    return (Math.pi * degree / 180);
  }

  @override
  Path getClip(Size size) {
    double radius = this.radius!;
    Path path = new Path();
    double radian = degree2Radian(36); // 36为五角星的角度
    double radiusIn =
        (radius * Math.sin(radian / 2) / Math.cos(radian)); // 中间五边形的半径

    path.moveTo((radius * Math.cos(radian / 2)), 0.0); // 此点为多边形的起点
    path.lineTo((radius * Math.cos(radian / 2) + radiusIn * Math.sin(radian)),
        (radius - radius * Math.sin(radian / 2)));
    path.lineTo((radius * Math.cos(radian / 2) * 2),
        (radius - radius * Math.sin(radian / 2)));
    path.lineTo(
        (radius * Math.cos(radian / 2) + radiusIn * Math.cos(radian / 2)),
        (radius + radiusIn * Math.sin(radian / 2)));
    path.lineTo((radius * Math.cos(radian / 2) + radius * Math.sin(radian)),
        (radius + radius * Math.cos(radian)));
    path.lineTo((radius * Math.cos(radian / 2)), (radius + radiusIn));
    path.lineTo((radius * Math.cos(radian / 2) - radius * Math.sin(radian)),
        (radius + radius * Math.cos(radian)));
    path.lineTo(
        (radius * Math.cos(radian / 2) - radiusIn * Math.cos(radian / 2)),
        (radius + radiusIn * Math.sin(radian / 2)));
    path.lineTo(0.0, (radius - radius * Math.sin(radian / 2)));
    path.lineTo((radius * Math.cos(radian / 2) - radiusIn * Math.sin(radian)),
        (radius - radius * Math.sin(radian / 2)));

    path.close(); // 使这些点构成封闭的多边形
    return path;
  }

  @override
  bool shouldReclip(_StarCliper oldClipper) {
    return this.radius != oldClipper.radius;
  }
}
