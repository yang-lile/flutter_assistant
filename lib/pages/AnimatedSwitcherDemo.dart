/// 通过这个控件我们学到了，如果要使两个控件不一样，需要设置不同key值
/// 否则只是属性不同的两个控件树会被认为是相同的控件
/// 动画很多，请自行百度学习`https://juejin.im/post/5d3ac928e51d454f6f16ece0`

import 'package:flutter_assistant/entity/RandomTools.dart';
import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class AnimatedSwitcherDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "AnimatedSwitcherDemo",
      body: SwitcherContainers(),
    );
  }
  
}

class SwitcherContainers extends StatefulWidget {
  @override
  SwitcherContainersState createState() => SwitcherContainersState();
}

class SwitcherContainersState extends State<SwitcherContainers> {
  List<Widget> _widgets = [];
  int _key = 0;
  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 4; i++) {
      _widgets.add(Container(
        key: Key((++_key).toString()),
        height: 200.0,
        padding: EdgeInsets.all(8.0),
        color: RandomTools.randomColors(),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Table(
        children: [
          TableRow(children: [
            TextButton(
              onPressed: () => setState(() {
                _widgets[0] = Container(
                  key: Key((++_key).toString()),
                  height: 200.0,
                  padding: EdgeInsets.all(8.0),
                  color: RandomTools.randomColors(),
                );
              }),
              child: AnimatedSwitcher(
                child: _widgets[0],
                duration: Duration(seconds: 1),
                transitionBuilder: (child, animation) => FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              ),
            ),
            TextButton(
              onPressed: () => setState(() {
                _widgets[1] = Container(
                  key: Key((++_key).toString()),
                  height: 200.0,
                  padding: EdgeInsets.all(8.0),
                  color: RandomTools.randomColors(),
                );
              }),
              child: AnimatedSwitcher(
                child: _widgets[1],
                duration: Duration(seconds: 1),
                transitionBuilder: (child, animation) => RotationTransition(
                  turns: animation,
                  child: child,
                ),
              ),
            ),
          ]),
          TableRow(children: [
            TextButton(
              onPressed: () => setState(() {
                _widgets[2] = Container(
                  key: Key((++_key).toString()),
                  height: 200.0,
                  padding: EdgeInsets.all(8.0),
                  color: RandomTools.randomColors(),
                );
              }),
              child: AnimatedSwitcher(
                child: _widgets[2],
                duration: Duration(seconds: 1),
                transitionBuilder: (child, animation) => SizeTransition(
                  sizeFactor: animation,
                  child: child,
                ),
              ),
            ),
            TextButton(
              onPressed: () => setState(() {
                _widgets[3] = Container(
                  key: Key((++_key).toString()),
                  height: 200.0,
                  padding: EdgeInsets.all(8.0),
                  color: RandomTools.randomColors(),
                );
              }),
              child: AnimatedSwitcher(
                child: _widgets[3],
                duration: Duration(seconds: 1),
                transitionBuilder: (child, animation) => SlideTransition(
                  // 使用tween来生成动画
                  position: Tween(
                    begin: Offset(1, 1),
                    end: Offset(0, 0),
                  ).animate(animation),
                  child: child,
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
