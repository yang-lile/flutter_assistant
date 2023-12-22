import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class AlignDemo extends StatelessWidget {
  const AlignDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'AlignDemo',
      body: Center(
        child: Container(
          color: Colors.orange[300],
          width: 300.0,
          height: 500.0,
          child: const Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Text('bottomLeft'),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text('bottomRight'),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text('topLeft'),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text('topRight'),
              ),
              Align(
                alignment: Alignment(-0.5, -0.5),
                child: Text('Alignment(-0.5, -0.5)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
