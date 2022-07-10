import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class AbsorbPointerDemo extends StatelessWidget {
  const AbsorbPointerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'AbsorbPointerDemo',
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildPage1(),
          const VerticalDivider(),
          _buildPage2(),
        ],
      ),
    );
  }

  Widget _buildPage1() {
    return AbsorbPointer(
      child: _buildButtons(),
    );
  }

  Widget _buildPage2() {
    return _buildButtons();
  }

  Widget _buildButtons() {
    return Builder(
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Hello SnackBar')),
              ),
              child: const Text('click!'),
            ),
            OutlinedButton(
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Hello SnackBar')),
              ),
              child: const Text('click!'),
            ),
            OutlinedButton(
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Hello SnackBar')),
              ),
              child: const Text('click!'),
            ),
          ],
        );
      },
    );
  }
}
