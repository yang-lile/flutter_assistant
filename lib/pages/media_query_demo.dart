/// `LayoutBuilder`是一种简单化的`MediaQuery`的封装
/// `MediaQuery`为屏幕的适配提供了重要的参考参数

import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class MediaQueryDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenDatas = MediaQuery.of(context);
    // 根据尺寸调整布局
    var screeanSize = MediaQuery.of(context).size;
    // 根据屏幕方向调整布局
    var deviceOrientation = MediaQuery.of(context).orientation;
    // 根据字体调整屏幕字体
    var fontScaling = MediaQuery.of(context).textScaleFactor;
    // 可定义safearea
    var notchInset = MediaQuery.of(context).padding;
    // 如果没有动画，就自定义动画
    var noAnimations = MediaQuery.of(context).disableAnimations;
    // 适配屏幕亮暗模式
    var screenContrast = MediaQuery.of(context).platformBrightness;
    return MyScaffold(
        appBarTitle: "MediaQueryDemo",
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: Table(
            border: TableBorder.all(width: 1.0),
            children: [
              _buildTableRow(
                "screenDatas",
                screenDatas.toString(),
              ),
              _buildTableRow(
                "screeanSize",
                screeanSize.toString(),
              ),
              _buildTableRow(
                "deviceOrientation",
                deviceOrientation.toString(),
              ),
              _buildTableRow(
                "fontScaling",
                fontScaling.toString(),
              ),
              _buildTableRow(
                "notchInset",
                notchInset.toString(),
              ),
              _buildTableRow(
                "noAnimations",
                noAnimations.toString(),
              ),
              _buildTableRow(
                "noAnimscreenContrastations",
                screenContrast.toString(),
              ),
            ],
          ),
        ));
  }

  TableRow _buildTableRow(String title, String value) {
    return TableRow(
      children: [
        Padding(
          padding: EdgeInsets.all(5.0),
          child: Text(title),
        ),
        Padding(
          padding: EdgeInsets.all(5.0),
          child: Text(value),
        ),
      ],
    );
  }
}
