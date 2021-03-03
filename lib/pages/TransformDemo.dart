import 'dart:math';

import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class TransformDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "TransformDemo",
      body: Center(
        child: Stack(
          children: <Widget>[
            Transform.rotate(
              angle: -pi / 4,
              child: _buildCustomPaint(),
            ),
            Transform.translate(
              offset: Offset(100, 100),
              child: Transform.rotate(
                angle: pi / 4,
                child: _buildCustomPaint(),
              ),
            ),
            Transform.translate(
              offset: Offset(0, 200),
              child: Transform.rotate(
                angle: pi * 3 / 4,
                child: _buildCustomPaint(),
              ),
            ),
            Transform.translate(
              offset: Offset(-100, 100),
              child: Transform.rotate(
                angle: pi * 5 / 4,
                child: _buildCustomPaint(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  CustomPaint _buildCustomPaint() {
    return CustomPaint(
      size: Size(100.0, 100.0),
      painter: _PeachPainter(),
    );
  }
}

class _PeachPainter extends CustomPainter {
  final Paint _paint = Paint()..color = Colors.red[400]!;
  @override
  void paint(Canvas canvas, Size size) {
    double w = size.width / 3;
    canvas.drawCircle(Offset(w, w), w, _paint);
    canvas.drawCircle(Offset(2 * w, 2 * w), w, _paint);
    canvas.drawRect(
      Rect.fromPoints(
        Offset(0, w),
        Offset(2 * w, 3 * w),
      ),
      _paint,
    );
  }

  @override
  bool shouldRepaint(_PeachPainter oldDelegate) => _paint != oldDelegate._paint;
}
