import 'dart:math';

import 'package:flutter/material.dart';

class RandomTools {
  static Color randomColors() {
    List colors = [
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

  static randomNumber({int len = 1}) {
    return Random().nextInt(pow(10, len - 1) as int) +
        (Random().nextInt(8) + 1) * pow(10, len);
  }
}
