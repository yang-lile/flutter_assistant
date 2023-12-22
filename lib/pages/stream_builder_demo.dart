import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class StreamBuilderDemo extends StatelessWidget {
  const StreamBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final textDataController = StreamController<int>();
    final textData = textDataController.stream;
    return MyScaffold(
      appBarTitle: 'StreamBuilderDemo',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<int>(
            stream: textData,
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
                  _buildRaisedButton(1, textDataController),
                  _buildRaisedButton(2, textDataController),
                  _buildRaisedButton(3, textDataController),
                  _buildRaisedButton(4, textDataController),
                  _buildRaisedButton(5, textDataController),
                ],
              ),
              TableRow(
                children: [
                  _buildRaisedButton(6, textDataController),
                  _buildRaisedButton(7, textDataController),
                  _buildRaisedButton(8, textDataController),
                  _buildRaisedButton(9, textDataController),
                  _buildRaisedButton(10, textDataController),
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
    StreamController<int> textDataController,
  ) =>
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          onPressed: () => textDataController.add(i),
          child: Text('$i'),
        ),
      );
}
