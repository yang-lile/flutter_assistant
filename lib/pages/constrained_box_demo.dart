/// 实现`Container`适配子控件的大小的方法：
/// 使用`Container`->`ConstrainedBox`(设置最大宽)->`子控件`
library;
import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class ConstrainedBoxDemo extends StatelessWidget {
  ConstrainedBoxDemo({super.key});

  final List<_Message> _messeges = [
    _Message(id: 1, message: '1，是指某某人说的'),
    _Message(id: 2, message: '2，也是某某群友'),
    _Message(id: 0, message: '0，是你自己'),
    _Message(id: 0, message: '左边短句测试'),
    _Message(id: 1, message: '右边短句测试'),
    _Message(
      id: 0,
      message:
          '左边长句测试，左边长句测试，左边长句测试，左边长句测试，左边长句测试，左边长句测试，左边长句测试，左边长句测试，左边长句测试，\n'
          '左边长句测试，，左边长句测试，左边长句测试，左边长句测试，左边长句测试，左边长句测试，左边长句测试，',
    ),
    _Message(
      id: 1,
      message:
          '右边长句测试，右边长句测试，右边长句测试，右边长句测试，右边长句测试，右边长句测试，右边长句测试，右边长句测试，右边长句测试，\n'
          '右边长句测试，右边长句测试，右边长句测试，右边长句测试，右边长句测试，右边长句测试，右边长句测试，',
    ),
    _Message(
      id: 2,
      message: '''
废话测试，废话测试，废话测试，废话测试，废话测试，废话测试，
废话测试，废话测试，废话测试，废话测试，废话测试，废话测试，
废话测试，废话测试，废话测试，废话测试，废话测试，废话测试，
废话测试，废话测试，废话测试，废话测试，废话测试，废话测试，
废话测试，废话测试，废话测试，废话测试，废话测试，废话测试，
废话测试，废话测试，废话测试，废话测试，废话测试，废话测试，
废话测试，废话测试，废话测试，废话测试，废话测试，废话测试，
废话测试，废话测试，废话测试，废话测试，废话测试，废话测试，
废话测试，废话测试，废话测试，废话测试，废话测试，废话测试，
废话测试，废话测试，废话测试，废话测试，废话测试，废话测试，
废话测试，废话测试，废话测试，废话测试，废话测试，废话测试，
废话测试，废话测试，废话测试，废话测试，废话测试，废话测试，
废话测试，废话测试，废话测试，废话测试，废话测试，废话测试，
废话测试，废话测试，废话测试，废话测试，废话测试，废话测试，''',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;
    return MyScaffold(
      appBarTitle: 'ConstrainedBoxDemo',
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: ListView.builder(
          itemCount: _messeges.length,
          itemBuilder: (BuildContext context, int index) {
            if (_messeges[index].id == 0) {
              return ConstrainedBox(
                constraints: BoxConstraints(maxWidth: screenW * 9 / 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Container(),
                    ),
                    buildMessage(
                      index,
                      screenW,
                      '消息来自自己',
                      Alignment.centerRight,
                    ),
                    buildHeadImage(screenW, index),
                  ],
                ),
              );
            } else {
              return ConstrainedBox(
                constraints: BoxConstraints(maxWidth: screenW * 9 / 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    buildHeadImage(screenW, index),
                    buildMessage(
                      index,
                      screenW,
                      "消息来自${_messeges[index].id == 1 ? "一号群友" : "二号群友"}",
                      Alignment.centerLeft,
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }

  Widget buildHeadImage(double screenW, int index) {
    return Tooltip(
      message: '头像',
      child: Semantics(
        container: true,
        label: '头像',
        child: Ink(
          width: screenW / 10,
          height: screenW / 10,
          decoration: BoxDecoration(
            color: Colors.blue[100 * _messeges[index].id! + 100],
            borderRadius: BorderRadius.all(Radius.circular(screenW / 20)),
          ),
          child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(screenW / 20)),
            child: Container(),
          ),
        ),
      ),
    );
  }

  Widget buildMessage(
    int index,
    double screenW,
    String hint,
    AlignmentGeometry acr,
  ) {
    return Semantics(
      label: _messeges[index].message,
      hint: hint,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        alignment: acr,
        decoration: BoxDecoration(
          color: _messeges[index].id == 0
              ? Colors.blue[100]
              : Colors.blueGrey[100],
          borderRadius: const BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: screenW * 7 / 10),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_messeges[index].message!),
          ),
        ),
      ),
    );
  }
}

class _Message {
  _Message({this.id, this.message});
  int? id;
  String? message;
}
