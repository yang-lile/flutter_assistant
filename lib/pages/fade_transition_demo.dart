/// 主要用于专场动画，
/// 你可以直接复制粘贴FadeTransionDemoModel来修改属于你的转场动画
import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class FadeTransitionDemo extends StatelessWidget {
  const FadeTransitionDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'FadeTransitionDemo',
      body: Align(
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
  const _FadeTransitionTest({required this.child});
  final Widget child;

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
      duration: const Duration(seconds: 2),
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
