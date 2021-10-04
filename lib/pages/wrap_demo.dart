import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class WrapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "WrapDemo",
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  margin: EdgeInsets.all(10.0),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  margin: EdgeInsets.all(10.0),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  margin: EdgeInsets.all(10.0),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  margin: EdgeInsets.all(10.0),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  margin: EdgeInsets.all(10.0),
                ),
              ],
            ),
            SizedBox(
              height: 400.0,
              child: Wrap(
                direction: Axis.vertical,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightGreen,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightGreen,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightGreen,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightGreen,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightGreen,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
