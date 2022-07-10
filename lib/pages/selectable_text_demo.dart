import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class SelectableTextDemo extends StatelessWidget {
  const SelectableTextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(
      appBarTitle: 'SelectableTextDemo',
      body: Center(
        child: SelectableText(
          '''
长按可复制代码：
Center(
  child: SelectableText("长按可复制代码："),
),''',
        ),
      ),
    );
  }
}
