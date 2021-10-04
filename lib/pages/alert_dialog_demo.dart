import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class AlertDialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "AlertDialogDemo",
      body: Center(
        child: Builder(
          builder: (BuildContext context) {
            return MaterialButton(
              color: Colors.blue,
              child: Text("显示对话框"),
              onPressed: () => _showDialog(context),
            );
          },
        ),
      ),
      dialogContext: Text("展示了一个基础的对话框的使用，点击蓝色的按钮即可展开对话框。"),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      // 设置为false就能只通过按按钮来退出了
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          "这是标题",
          // 给标题一个加粗
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: Text("这是正文"),
        actions: <Widget>[
          MaterialButton(
            child: Text(
              "了解",
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
}
