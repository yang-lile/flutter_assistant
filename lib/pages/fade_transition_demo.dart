/// 主要用于专场动画，
/// 你可以直接复制粘贴FadeTransionDemoModel来修改属于你的转场动画

import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class FadeTransitionDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "FadeTransitionDemo",
      body: Align(
        alignment: Alignment.center,
        child: _FadeTransitionTest(
          child: Container(
            color: Colors.yellow[500],
            width: 200.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }
}

class _FadeTransitionTest extends StatefulWidget {
  final Widget child;

  _FadeTransitionTest({required this.child});

  @override
  _FadeTransitionTestState createState() => _FadeTransitionTestState();
}

class _FadeTransitionTestState extends State<_FadeTransitionTest>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return FadeTransition(
      opacity: _controller,
      child: widget.child,
    );
  }
}
