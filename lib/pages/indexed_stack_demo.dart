import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class IndexedStackDemo extends StatelessWidget {
  const IndexedStackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'IndexedStackDemo',
      body: Center(
        child: _IndexedStack(),
      ),
    );
  }
}

class _IndexedStack extends StatefulWidget {
  @override
  __IndexedStackState createState() => __IndexedStackState();
}

class __IndexedStackState extends State<_IndexedStack> {
  int? index;
  List<MaterialColor> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
  ];

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: index,
      children: <Widget>[
        for (var i = 0; i < 4; i++)
          Material(
            color: colors[i][300],
            child: InkWell(
              onTap: () => setState(() => index = (index! + 1) % 4),
              child: Container(
                width: 200.0,
                height: 200.0,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('click!!!'),
                    Text('index:$i'),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
