import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class AnimatedIconDemo extends StatefulWidget {
  const AnimatedIconDemo({super.key});

  @override
  _AnimatedIconDemoState createState() => _AnimatedIconDemoState();
}

class _AnimatedIconDemoState extends State<AnimatedIconDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )
      ..forward()
      ..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'AnimatedIconDemo',
      body: Center(
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: controller,
        ),
      ),
    );
  }
}
