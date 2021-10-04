import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class AnimatedOpacityDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "AnimatedOpacityDemo",
      body: Center(
        child: _TableWave(),
      ),
    );
  }
}

class _TableWave extends StatefulWidget {
  @override
  __TableWaveState createState() => __TableWaveState();
}

class __TableWaveState extends State<_TableWave> {
  List<List<bool>> _blockState = [
    for (var i = 0; i < 5; i++)
      [
        for (var j = 0; j < 5; j++) false,
      ],
  ];
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 300.0, maxWidth: 300.0),
      child: Table(
        children: [
          for (var i = 0; i < 5; i++)
            TableRow(
              children: [
                for (var j = 0; j < 5; j++)
                  GestureDetector(
                    // ignore: deprecated_member_use
                    onTapDown: (event) =>
                        setState(() => _blockState[i][j] = !_blockState[i][j]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedOpacity(
                        duration: Duration(milliseconds: 500),
                        opacity: _blockState[i][j] ? 1 : 0.1,
                        child: Container(
                          height: 45,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  )
              ],
            ),
        ],
      ),
    );
  }
}
