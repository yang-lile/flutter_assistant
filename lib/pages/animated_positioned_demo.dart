/// https://juejin.im/entry/5d28b9505188250d3d60e4ee
/// 虽然和本篇文章无关，但是我还是借鉴到了关于inkwell的用法
/// 尝试把Material换成Container加颜色试试？（你会得到意料以外的结果）
import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class AnimatedPositionedDemo extends StatelessWidget {
  const AnimatedPositionedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'AnimatedPositionedDemo',
      body: Center(
        child: SizedBox(
          width: 300,
          height: 200,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              const Positioned(
                child: Chip(
                  label: Text('略略略'),
                ),
              ),
              _Mask(),
            ],
          ),
        ),
      ),
    );
  }
}

// 抽出来局部刷新，提高效率
class _Mask extends StatefulWidget {
  @override
  __MaskState createState() => __MaskState();
}

class __MaskState extends State<_Mask> {
  late bool _top;
  @override
  void initState() {
    super.initState();
    _top = true;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(seconds: 1),
      width: 120,
      top: _top ? 80.0 : 0,
      child: Material(
        color: Colors.blue[300],
        child: InkWell(
          onTap: () => setState(() => _top = !_top),
          child: const SizedBox(
            height: 40.0,
            child: Center(child: Text('click')),
          ),
        ),
      ),
    );
  }
}
