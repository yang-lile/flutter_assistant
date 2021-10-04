import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class DraggableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "DraggableDemo",
      body: _SuspendedBall(
        // 使用Stack实现，不推荐
        child: Container(),
      ),
    );
  }
}

class _SuspendedBall extends StatefulWidget {
  
  final Widget child;

  const _SuspendedBall({Key? key, required this.child}) : super(key: key);

  @override
  _SuspendedBallState createState() => _SuspendedBallState();
}

class _SuspendedBallState extends State<_SuspendedBall> {
  double ballSize = 50.0;
  // 控制球的位置
  Offset _offset = Offset(0, 0);
  // 给一个过渡动画时长，单位毫秒
  int duration = 0;

  @override
  Widget build(BuildContext context) {
    // 获取状态栏高度
    double statusBarHeight = MediaQuery.of(context).padding.top;
    // 手动处理状态栏高度为0的问题
    if (statusBarHeight == 0) {
      print("0");
      statusBarHeight = 30;
    }
    // 获取appbar高度
    double appBarHeight = kToolbarHeight;
    double w = MediaQuery.of(context).size.width - ballSize;

    return Stack(
      children: [
        AnimatedPositioned(
          top: _offset.dy,
          left: _offset.dx,
          duration: Duration(milliseconds: duration),
          child: Draggable(
            // 我们要做悬浮球，只能有一个实体
            maxSimultaneousDrags: 1,
            // 拖动的
            feedback: CustomPaint(
              painter: _BallPainter(),
              size: Size(ballSize, ballSize),
            ),
            // 显示的
            child: CustomPaint(
              painter: _BallPainter(),
              size: Size(ballSize, ballSize),
            ),
            // 设置为空控件，拖走时，原地不会有东西
            childWhenDragging: Container(),
            // onDragEnd在onDraggableCanceled之前执行
            onDragEnd: (DraggableDetails draggableDetails) {
              // 移动位置
              setState(() {
                // 直接移动，没有过渡
                duration = 0;
                _offset = Offset(
                  draggableDetails.offset.dx,
                  draggableDetails.offset.dy - appBarHeight - statusBarHeight,
                );
              });
              // 延迟执行靠边操作
              Future.delayed(Duration(milliseconds: 50)).then(
                (value) => {
                  if (_offset.dx != 0 || _offset.dx != w)
                    {
                      setState(() {
                        // 靠边给一个400毫秒的移动效果
                        duration = 400;
                        if (_offset.dx < w / 2) {
                          _offset = Offset(0, _offset.dy);
                        } else {
                          _offset = Offset(w, _offset.dy);
                        }
                      })
                    }
                },
              );
            },
          ),
        ),
        // 孤儿子控件
        widget.child,
      ],
    );
  }
}

// 绘制球球，可以自己用图片代替
class _BallPainter extends CustomPainter {
  Paint _paint1 = Paint()..color = Colors.white70;
  Paint _paint2 = Paint()..color = Colors.blueGrey[300]!;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
      Offset(size.width / 2, size.width / 2),
      size.width / 2,
      _paint2,
    );
    canvas.drawCircle(
      Offset(size.width / 2, size.width / 2),
      size.width / 10 * 3,
      _paint1,
    );
  }

  @override
  bool shouldRepaint(_BallPainter oldDelegate) => false;
}
