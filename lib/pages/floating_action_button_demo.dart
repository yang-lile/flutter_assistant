import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  const FloatingActionButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    const appBarTitle = 'FloatingActionButtonDemo';

    final appBar = AppBar(
      title: const Text(appBarTitle),
      // actions: <Widget>[
      //   TextButton.icon(
      //     onPressed: () => Navigator.push(
      //       context,
      //       MaterialPageRoute<void>(
      //         builder: (context) => const SourceCodePage(title: appBarTitle),
      //       ),
      //     ),
      //     icon: const Icon(Icons.code),
      //     label: const Text('源码'),
      //   ),
      // ],
    );
    final floatingActionButton = FloatingActionButton(
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (context) => const SourceCodePage(title: appBarTitle),
        ),
      ),
      tooltip: '源码',
      child: const Icon(Icons.code),
    );
    return Scaffold(
      appBar: appBar,
      // body: body,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: _buildBottomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  BottomAppBar _buildBottomAppBar() {
    return BottomAppBar(
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _textButton(const Icon(Icons.color_lens), 'color_lens'),
          _textButton(const Icon(Icons.content_copy), 'content_copy'),
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
