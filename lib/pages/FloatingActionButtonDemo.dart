import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  final String appBarTitle = "FloatingActionButtonDemo";
  final Widget? body = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: body,
      floatingActionButton: _buildFloatingActionButton(context),
      bottomNavigationBar: _buildBottomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(appBarTitle),
      actions: <Widget>[
        TextButton.icon(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SourceCodePage(title: appBarTitle),
            ),
          ),
          icon: Icon(Icons.code),
          label: Text("源码"),
        ),
      ],
    );
  }

  FloatingActionButton _buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SourceCodePage(title: appBarTitle),
        ),
      ),
      child: Icon(Icons.code),
    );
  }

  BottomAppBar _buildBottomAppBar() {
    return BottomAppBar(
      color: Colors.white,
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _textButton(Icon(Icons.color_lens), "color_lens"),
          _textButton(Icon(Icons.content_copy), "content_copy"),
        ],
      ),
    );
  }

  Widget _textButton(Icon icon, String string) {
    return Builder(
      builder: (context) => IconButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(string),
              behavior: SnackBarBehavior.floating,
            ),
          );
        },
        icon: icon,
        tooltip: string,
      ),
    );
  }
}
