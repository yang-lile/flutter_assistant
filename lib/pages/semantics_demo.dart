/// 关于无障碍模式有太多可以说的，国内的很多应用居然是没有这一功能支持的对于有障碍人
/// 群对手机的使用实在是造成很多困难，现在的技术很成熟了，中英文都可以正常朗读，多花
/// 一点心思，你水了代码，同时还让有障碍人群快乐了，何乐而不为？
/// 注意用语的规范，标点符号的正确使用。
///
/// `Semantics`提供了大量的属性，使得talkback在播报的时候可以报出点击的类型，以及各
/// 种操作方式反馈，你可以将`MaterialApp`的`showSemanticsDebugger`属性设置为`true`
/// 。 这将强制`Flutter`生成叠加层以可视化语义树。
/// 最后附上一个比较全面的链接
/// https://juejin.im/entry/5c41490a6fb9a049b5071a63
import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class SemanticsDemo extends StatelessWidget {
  const SemanticsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'SemanticsDemo',
      body: Center(
        child: Semantics(
          container: true,
          // 注意标点符号的使用，没有这个句号将会和下面的语句一起连读。
          label: '这是一个乖巧的Container。',
          child: Container(
            width: 200.0,
            height: 200.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Text(
              '同时按住音量键+-开启无障碍，单击我可以触发label。请多使用Semantics，这是对有障碍人群最大的帮助！！！',
              semanticsLabel:
                  '同时按住音量键+-开启无障碍，单击我可以触发label。请多使用Semantics，这是对有障碍人群最大的帮助！！！',
            ),
          ),
        ),
      ),
    );
  }
}
