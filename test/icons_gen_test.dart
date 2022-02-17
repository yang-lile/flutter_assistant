import 'package:flutter_test/flutter_test.dart';

void main() {
  group('测试__的分割', () {
    test('测试点一', () {
      var split = ' a__a '.split(' ');
      expect(split[1], 'a__a');
      expect(split[2], '');
    });
  });
}
