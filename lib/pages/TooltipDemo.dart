import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class TooltipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "TooltipDemo",
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Tooltip(
              message: "Icons.compare",
              child: Icon(Icons.compare),
            ),
            IconButton(
              icon: Icon(Icons.confirmation_number),
              onPressed: null,
              tooltip: "Icons.confirmation_number",
            ),
            Text("长按图标触发"),
          ],
        ),
      ),
    );
  }
}
