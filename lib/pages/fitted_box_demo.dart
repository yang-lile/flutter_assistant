import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class FittedBoxDemo extends StatelessWidget {
  const FittedBoxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'FittedBoxDemo',
      body: Center(
        child: Container(
          color: Colors.yellow[300],
          width: 200.0,
          height: 300,
          child: FittedBox(
            child: Image.asset('assets/images/fitted_box.webp'),
          ),
        ),
      ),
    );
  }
}
