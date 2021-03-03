import 'dart:async';

import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class StreamBuilderDemo extends StatelessWidget {
  Stream<int> get _textData => _textDataController.stream;
  final _textDataController = StreamController<int>();
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "StreamBuilderDemo",
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            stream: _textData,
            initialData: "点击以切换",
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return Text("${snapshot.data}");
            },
          ),
          Table(
            children: [
              TableRow(
                children: [
                  _buildRaisedButton(1),
                  _buildRaisedButton(2),
                  _buildRaisedButton(3),
                  _buildRaisedButton(4),
                  _buildRaisedButton(5),
                ],
              ),
              TableRow(
                children: [
                  _buildRaisedButton(6),
                  _buildRaisedButton(7),
                  _buildRaisedButton(8),
                  _buildRaisedButton(9),
                  _buildRaisedButton(10),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding _buildRaisedButton(int i) => Padding(
      padding: EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () => _textDataController.add(i),
        child: Text("$i"),
      ));
}
