import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class StreamBuilderDemo extends StatelessWidget {
  const StreamBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final _textDataController = StreamController<int>();
    final _textData = _textDataController.stream;
    return MyScaffold(
      appBarTitle: 'StreamBuilderDemo',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<int>(
            stream: _textData,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              if (snapshot.connectionState == ConnectionState.none) {
                return const Text('空');
              }
              return Text('${snapshot.data}');
            },
          ),
          Table(
            children: [
              TableRow(
                children: [
                  _buildRaisedButton(1, _textDataController),
                  _buildRaisedButton(2, _textDataController),
                  _buildRaisedButton(3, _textDataController),
                  _buildRaisedButton(4, _textDataController),
                  _buildRaisedButton(5, _textDataController),
                ],
              ),
              TableRow(
                children: [
                  _buildRaisedButton(6, _textDataController),
                  _buildRaisedButton(7, _textDataController),
                  _buildRaisedButton(8, _textDataController),
                  _buildRaisedButton(9, _textDataController),
                  _buildRaisedButton(10, _textDataController),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding _buildRaisedButton(
    int i,
    StreamController<int> _textDataController,
  ) =>
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          onPressed: () => _textDataController.add(i),
          child: Text('$i'),
        ),
      );
}
