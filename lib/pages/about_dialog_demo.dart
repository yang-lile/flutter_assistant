import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class AboutDialogDemo extends StatelessWidget {
  const AboutDialogDemo({super.key});

  void _showAboutDIalog(BuildContext context) {
    showAboutDialog(
      context: context,
      applicationIcon: FlutterLogo(
        size: 64,
        style: FlutterLogoStyle.stacked,
        textColor: Colors.red[400]!,
      ),
      applicationName: 'flutter assistant',
      applicationVersion: '2.0.0',
      children: [
        Column(
          children: const <Widget>[
            Text('*********'),
            Text('*********'),
            Text('*********'),
            Text('*********'),
          ],
        )
      ],
      applicationLegalese: 'MIT',
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'AboutDialogDemo',
      body: Center(
        child: TextButton(
          onPressed: () => _showAboutDIalog(context),
          child: const Text('showAboutDIalog'),
        ),
      ),
    );
  }
}
