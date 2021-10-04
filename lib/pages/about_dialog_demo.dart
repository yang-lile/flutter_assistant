import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class AboutDialogDemo extends StatelessWidget {
  _showAboutDIalog(BuildContext context) {
    showAboutDialog(
      context: context,
      applicationIcon: FlutterLogo(
        size: 64,
        style: FlutterLogoStyle.stacked,
        textColor: Colors.red[400]!,
      ),
      applicationName: "flutter assistant",
      applicationVersion: "2.0.0",
      children: [
        Column(
          children: <Widget>[
            Text("*********"),
            Text("*********"),
            Text("*********"),
            Text("*********"),
          ],
        )
      ],
      applicationLegalese: "MIT",
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "AboutDialogDemo",
      body: Center(
        child: TextButton(
          onPressed: () => _showAboutDIalog(context),
          child: Text("showAboutDIalog"),
        ),
      ),
    );
  }
}
