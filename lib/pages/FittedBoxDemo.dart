import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class FittedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "FittedBoxDemo",
      body: Center(
        child: Container(
          color: Colors.yellow[300],
          width: 200.0,
          height: 300,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Image.asset("assets/images/fitted_box.webp"),
          ),
        ),
      ),
    );
  }
}
