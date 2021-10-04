import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class PositionedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        appBarTitle: "PositionedDemo",
        body: Align(
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              width: 100,
              height: 100,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned(
                    child: Icon(
                      Icons.arrow_drop_up,
                      size: 50.0,
                    ),
                    top: 0.0,
                  ),
                  Positioned(
                    child: Icon(
                      Icons.arrow_drop_down,
                      size: 50.0,
                    ),
                    bottom: 0.0,
                  ),
                  Positioned(
                    child: Icon(
                      Icons.arrow_left,
                      size: 50.0,
                    ),
                    left: 0.0,
                  ),
                  Positioned(
                    child: Icon(
                      Icons.arrow_right,
                      size: 50.0,
                    ),
                    right: 0.0,
                  ),
                ],
              ),
            )));
  }
}
