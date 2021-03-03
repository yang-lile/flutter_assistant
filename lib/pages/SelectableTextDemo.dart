import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class SelectableTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "SelectableTextDemo",
      body: Center(
        child: SelectableText(
"""长按可复制代码：
Center(
  child: SelectableText("长按可复制代码："),
),""",
        ),
      ),
    );
  }
}
