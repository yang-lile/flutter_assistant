/// 通过这个控件我们学到了，如果要使两个控件不一样，需要设置不同key值
/// 否则只是属性不同的两个控件树会被认为是相同的控件
/// 动画很多，请自行百度学习`https://juejin.im/post/5d3ac928e51d454f6f16ece0`
library;
import 'package:flutter/material.dart';
import 'package:flutter_assistant/entity/random_tools.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class AnimatedSwitcherDemo extends StatelessWidget {
  const AnimatedSwitcherDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(
      appBarTitle: 'AnimatedSwitcherDemo',
      body: SwitcherContainers(),
    );
  }
}

class SwitcherContainers extends StatefulWidget {
  const SwitcherContainers({super.key});

  @override
  SwitcherContainersState createState() => SwitcherContainersState();
}

class SwitcherContainersState extends State<SwitcherContainers> {
  final List<Widget> _widgets = [];
  int _key = 0;
  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 4; i++) {
      _widgets.add(
        Container(
          key: Key((++_key).toString()),
          height: 200.0,
          padding: const EdgeInsets.all(8.0),
          color: RandomTools.randomColors(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Table(
        children: [
          TableRow(
            children: [
              TextButton(
                onPressed: () => setState(() {
                  _widgets[0] = Container(
                    key: Key((++_key).toString()),
                    height: 200.0,
                    padding: const EdgeInsets.all(8.0),
                    color: RandomTools.randomColors(),
                  );
                }),
                child: AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  transitionBuilder: (child, animation) => FadeTransition(
                    opacity: animation,
                    child: child,
                  ),
                  child: _widgets[0],
                ),
              ),
              TextButton(
                onPressed: () => setState(() {
                  _widgets[1] = Container(
                    key: Key((++_key).toString()),
                    height: 200.0,
                    padding: const EdgeInsets.all(8.0),
                    color: RandomTools.randomColors(),
                  );
                }),
                child: AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  transitionBuilder: (child, animation) => RotationTransition(
                    turns: animation,
                    child: child,
                  ),
                  child: _widgets[1],
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              TextButton(
                onPressed: () => setState(() {
                  _widgets[2] = Container(
                    key: Key((++_key).toString()),
                    height: 200.0,
                    padding: const EdgeInsets.all(8.0),
                    color: RandomTools.randomColors(),
                  );
                }),
                child: AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  transitionBuilder: (child, animation) => SizeTransition(
                    sizeFactor: animation,
                    child: child,
                  ),
                  child: _widgets[2],
                ),
              ),
              TextButton(
                onPressed: () => setState(() {
                  _widgets[3] = Container(
                    key: Key((++_key).toString()),
                    height: 200.0,
                    padding: const EdgeInsets.all(8.0),
                    color: RandomTools.randomColors(),
                  );
                }),
                child: AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  transitionBuilder: (child, animation) => SlideTransition(
                    // 使用tween来生成动画
                    position: Tween(
                      begin: const Offset(1, 1),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  ),
                  child: _widgets[3],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
