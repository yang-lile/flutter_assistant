import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class AlertDialogDemo extends StatelessWidget {
  const AlertDialogDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'AlertDialogDemo',
      body: Center(
        child: Builder(
          builder: (BuildContext context) {
            return MaterialButton(
              color: Colors.blue,
              child: const Text('显示对话框'),
              onPressed: () => _showDialog(context),
            );
          },
        ),
      ),
      dialogContext: const Text('展示了一个基础的对话框的使用，点击蓝色的按钮即可展开对话框。'),
    );
  }

  Future<void> _showDialog(BuildContext context) => showDialog<void>(
        // 设置为false就能只通过按按钮来退出了
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(
            '这是标题',
            // 给标题一个加粗
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: const Text('这是正文'),
          actions: <Widget>[
            MaterialButton(
              child: const Text(
                '了解',
                // 给文字一个高亮
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
}
