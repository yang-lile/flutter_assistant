import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "RichTextDemo",
      body: Align(
        alignment: Alignment.topCenter,
        child: RichText(
          // 设置总体文本位置、方向
          textAlign: TextAlign.end,
          text: TextSpan(
              // 首句设置的格式是默认格式
              style: TextStyle(color: Colors.black),
              children: <InlineSpan>[
                TextSpan(
                  text: "HEAD",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' data data \n',
                ),
                // 甚至是在子文本中应用子样式
                TextSpan(style: TextStyle(color: Colors.blue), children: [
                  TextSpan(
                    text: "套娃语句",
                  ),
                  TextSpan(
                    text: " 另一句",
                  )
                ]),
              ]),
        ),
      ),
    );
  }
}
