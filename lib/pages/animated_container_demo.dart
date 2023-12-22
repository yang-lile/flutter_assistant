/// 逐字稿
/// Flutter has a lot of widgets to help with explicit animations,
/// ones that you, the developer, code up
/// But there are also widgets for implicit animations,
/// those that animate changes for you.
/// A good one to know is AnimatedContainer.
/// You can build it once with a particular attribute, like color.
/// And when you rebuild it with a different value.
/// sayt, in response to a setState call,
/// AnimatedContainer performs a linear interpolation between the two values.
/// And it's more than just colors.
/// You can animate borders, border radii, background images, shadows,
/// gradients, shapes, padding, width, height, alignment, transforms, and more.
/// The length of the animation is controlled by the duration parameter,
/// and you can also specify your own curve to customize the effect.
/// There are a bunch of other widgets to help with implicit animations, too.
/// So head to flutter.io for more info.
/// (music~)
///
/// 翻译
/// flutter有很多控件帮助开发者开发显示动画。
/// 当然它也有一些隐式动画控件，用来做一些改变的动画。
/// 一个很好的方法是使用AnimatedContainer，你可以用它对一些特定的属性进行构建
/// 比如颜色，当你使用另一种颜色来重构时，用setState来响应重构
/// AnimatedContainer将执行一个线性的插补动画在两个值之间。
/// 不仅仅是颜色，还有边界、圆角，背景图，阴影，渐变，形状，填充，宽高，位置，转换，等等
/// 动画时长可以使用duration来控制
/// 你也可以指定一个非线性的自定义效果。
/// 这就是balabalabala。。。
library;
import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  _AnimatedContainerDemoState createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  final _myDuration = const Duration(seconds: 1);
  var _color = Colors.purple[300];
  bool flag = true;

  void _changeColor() {
    setState(() {
      if (flag) {
        _color = Colors.pink[200];
      } else {
        _color = Colors.purple[400];
      }
    });
    flag = !flag;
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'AnimatedContainerDemo',
      body: Align(
        child: AnimatedContainer(
          width: 200.0,
          height: 200.0,
          alignment: Alignment.center,
          duration: _myDuration,
          color: _color,
          child: const SomeOtherWidget(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeColor,
        child: const Icon(Icons.cached),
      ),
    );
  }
}

class SomeOtherWidget extends StatelessWidget {
  const SomeOtherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('略略略');
  }
}
