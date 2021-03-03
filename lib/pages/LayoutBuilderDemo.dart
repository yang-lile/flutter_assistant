import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class LayoutBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "LayoutBuilderDemo",
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _HorizontalLayout();
          } else {
            return _VerticalLayout();
          }
        },
      ),
    );
  }
}

class _HorizontalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("我横了。（如果你屏幕宽过600，当我没说。）"));
  }
}

class _VerticalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("我竖了。(横置你的手机试试？)"));
  }
}
