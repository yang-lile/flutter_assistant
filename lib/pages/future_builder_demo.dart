import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class FutureBuilderDemo extends StatelessWidget {
  const FutureBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'FutureBuilderDemo',
      body: Align(
        child: Container(
          child: _myData(),
        ),
      ),
    );
  }

  FutureBuilder<String> _myData() {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 3), () => '没联网'),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Text('今天的天气是：${snapshot.data}');
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              CircularProgressIndicator(),
              Text('在加载了在加载了...'),
            ],
          );
        }
      },
    );
  }
}
