import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class CustomPaintDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "CustomPaintDemo",
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          alignment: Alignment.center,
          color: Colors.orange[300],
          child: CustomPaint(
            size: Size(256, 256),
            painter: _MyPainter(),
          ),
        ),
      ),
    );
  }
}

class _MyPainter extends CustomPainter {
  Paint _paintB = Paint()
    ..color = Colors.black
    ..strokeWidth = 1.0;
    Paint _paintW = Paint()
    ..color = Colors.white
    ..strokeWidth = 1.0;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(
        Rect.fromPoints(Offset(0, 0), Offset(size.width, size.height)),
        _paintB);
    
    double w = size.width / 8;
    for (var i = 0; i < 8; i++) {
      for (var j = 0; j < 4; j++) {
        if ((i & 1) == 0) {
          canvas.drawRect(
              Rect.fromPoints(
                Offset(w * j * 2, i * w),
                Offset(w * j * 2 + w, i * w + w),
              ),
              _paintW);
        } else {
          canvas.drawRect(
              Rect.fromPoints(
                Offset(w * j * 2 + w, i * w),
                Offset(w * j * 2 + w * 2, i * w + w),
              ),
              _paintW);
        }
      }
    }
  }

  @override
  bool shouldRepaint(_MyPainter oldDelegate) => oldDelegate._paintB != _paintB;

  @override
  bool shouldRebuildSemantics(_MyPainter oldDelegate) => false;
}
