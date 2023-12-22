// 用于生成小写
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('测试蛇形命名法', () {
    test('测试生成蛇形命名法', () {
      const title = 'ClipRRect';
      var s = '${title[0].toLowerCase()}${title.substring(1)}';
      for (var i = 1; i < title.length; i++) {
        if (s[i].contains(RegExp('[A-Z]'))) {
          s = s.replaceRange(i, i + 1, '_${s[i].toLowerCase()}');
        }
      }
      expect(s, 'clip_r_rect');
    });
  });
}
