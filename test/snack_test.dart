// 用于生成小写
import 'package:flutter_test/flutter_test.dart';

main() {
  group('测试蛇形命名法', () {
    test('测试生成蛇形命名法', () {
      var title = "ClipRRect";
      var _s = "${title[0].toLowerCase()}${title.substring(1)}";
      for (var i = 1; i < title.length; i++) {
        if (_s[i].contains(RegExp(r'[A-Z]'))) {
          _s = _s.replaceRange(i, i + 1, "_${_s[i].toLowerCase()}");
        }
      }
      expect(_s, "clip_r_rect");
    });
  });
}
