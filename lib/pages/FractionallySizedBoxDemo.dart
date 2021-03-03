import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class FractionallySizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "FractionallySizedBoxDemo",
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FractionallySizedBox(
              widthFactor: 0.7,
              child: Builder(
                // 有点迷惑，能直接使用context，要使用Builder自己获取一个
                builder: (BuildContext context) => MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("没有彩蛋"),
                      ),
                    );
                  },
                  child: Text("占用宽的70%"),
                ),
              ),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            Text("距离上面的按钮10%的高"),
          ],
        ),
      ),
    );
  }
}
