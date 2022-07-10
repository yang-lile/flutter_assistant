import 'dart:math';

import 'package:flutter/material.dart';

/// 一个随机数工具
class RandomTools {
  /// 用于生成随机颜色
  static Color randomColors() {
    final colors = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.green,
      Colors.cyan,
      Colors.blue,
      Colors.purple
    ];
    return colors[Random().nextInt(6)];
  }

  // 用于生成非0开头的号码
  static num randomNumber({int len = 1}) {
    return Random().nextInt(pow(10, len - 1) as int) +
        (Random().nextInt(8) + 1) * pow(10, len);
  }
}
