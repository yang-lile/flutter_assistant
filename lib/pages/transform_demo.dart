import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class TransformDemo extends StatelessWidget {
  const TransformDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'TransformDemo',
      body: Center(
        child: Stack(
          children: <Widget>[
            Transform.rotate(
              angle: -pi / 4,
              child: _buildCustomPaint(),
            ),
            Transform.translate(
              offset: const Offset(100, 100),
              child: Transform.rotate(
                angle: pi / 4,
                child: _buildCustomPaint(),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, 200),
              child: Transform.rotate(
                angle: pi * 3 / 4,
                child: _buildCustomPaint(),
              ),
            ),
            Transform.translate(
              offset: const Offset(-100, 100),
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
      size: const Size(100.0, 100.0),
      painter: _PeachPainter(),
    );
  }
}

class _PeachPainter extends CustomPainter {
  final Paint _paint = Paint()..color = Colors.red[400]!;
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width / 3;
    canvas
      ..drawCircle(Offset(w, w), w, _paint)
      ..drawCircle(Offset(2 * w, 2 * w), w, _paint)
      ..drawRect(
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
