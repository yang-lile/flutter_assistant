import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class FutureBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "FutureBuilderDemo",
      body: Align(
        alignment: Alignment.center,
        child: Container(
          child: _myData(),
        ),
      ),
    );
  }

  _myData() {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3), () => "没联网"),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Text("今天的天气是：${snapshot.data}");
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
              Text("在加载了在加载了..."),
            ],
          );
        }
      },
    );
  }
}
