import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class PositionedDemo extends StatelessWidget {
  const PositionedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'PositionedDemo',
      body: Align(
        child: Container(
          alignment: Alignment.center,
          width: 100,
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: const <Widget>[
              Positioned(
                top: 0.0,
                child: Icon(
                  Icons.arrow_drop_up,
                  size: 50.0,
                ),
              ),
              Positioned(
                bottom: 0.0,
                child: Icon(
                  Icons.arrow_drop_down,
                  size: 50.0,
                ),
              ),
              Positioned(
                left: 0.0,
                child: Icon(
                  Icons.arrow_left,
                  size: 50.0,
                ),
              ),
              Positioned(
                right: 0.0,
                child: Icon(
                  Icons.arrow_right,
                  size: 50.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
