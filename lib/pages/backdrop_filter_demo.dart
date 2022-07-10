import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class BackdropFilterDemo extends StatelessWidget {
  const BackdropFilterDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'BackdropFilter',
      body: Center(
        child: Stack(
          // 使用Stack实现的遮罩
          alignment: Alignment.center,
          children: <Widget>[
            Text('0' * 10000),
            Align(
              alignment: const Alignment(0, -0.8),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 1.5,
                  sigmaY: 1.5,
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  color: Colors.white54,
                  child: const Text('毫无意义的遮罩'),
                ),
              ),
            ),
            Image.asset('assets/images/backdrop_filter.webp'),
            ClipRRect(
              child: Container(
                width: 60.0,
                height: 30.0,
                alignment: Alignment.center,
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY: 5,
                  ),
                  child: const Text(
                    '我糊了',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
