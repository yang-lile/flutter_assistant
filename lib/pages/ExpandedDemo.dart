import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "ExpandedDemo",
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.yellow[500],
                ),
                Expanded(
                    child: Container(
                  height: 50,
                  color: Colors.orange[400],
                )),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.yellow[500],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 50,
                      color: Colors.yellow[500],
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      height: 50,
                      color: Colors.orange[400],
                    )),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 50,
                    color: Colors.yellow[500],
                  ),
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
