/// `LayoutBuilder`是一种简单化的`MediaQuery`的封装
/// `MediaQuery`为屏幕的适配提供了重要的参考参数
import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class MediaQueryDemo extends StatelessWidget {
  const MediaQueryDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final screenDatas = MediaQuery.of(context);
    // 根据尺寸调整布局
    final screeanSize = MediaQuery.of(context).size;
    // 根据屏幕方向调整布局
    final deviceOrientation = MediaQuery.of(context).orientation;
    // 根据字体调整屏幕字体
    final fontScaling = MediaQuery.of(context).textScaleFactor;
    // 可定义safearea
    final notchInset = MediaQuery.of(context).padding;
    // 如果没有动画，就自定义动画
    final noAnimations = MediaQuery.of(context).disableAnimations;
    // 适配屏幕亮暗模式
    final screenContrast = MediaQuery.of(context).platformBrightness;

    return MyScaffold(
      appBarTitle: 'MediaQueryDemo',
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Table(
          border: TableBorder.all(),
          children: [
            _buildTableRow(
              'screenDatas',
              screenDatas.toString(),
            ),
            _buildTableRow(
              'screeanSize',
              screeanSize.toString(),
            ),
            _buildTableRow(
              'deviceOrientation',
              deviceOrientation.toString(),
            ),
            _buildTableRow(
              'fontScaling',
              fontScaling.toString(),
            ),
            _buildTableRow(
              'notchInset',
              notchInset.toString(),
            ),
            _buildTableRow(
              'noAnimations',
              noAnimations.toString(),
            ),
            _buildTableRow(
              'noAnimscreenContrastations',
              screenContrast.toString(),
            ),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(String title, String value) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(title),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(value),
        ),
      ],
    );
  }
}
