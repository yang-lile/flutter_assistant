import 'dart:math';

import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class AnimatedListDemo extends StatefulWidget {
  @override
  _AnimatedListDemoState createState() => _AnimatedListDemoState();
}

class _AnimatedListDemoState extends State<AnimatedListDemo> {
  final random = Random();
  List<int> listData = [1, 2, 3, 4];

  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "AnimatedListDemo",
      body: AnimatedList(
        key: _listKey,
        initialItemCount: listData.length,
        itemBuilder: (context, index, animation) {
          return FadeTransition(
            opacity: animation,
            child: ListTile(
              title: Text(listData[index].toString()),
              onTap: () {
                // 删除的时候需要提前保存数据
                // 不然调用`removeItem`方法后，无法访问到`index`的数据
                String data = listData[index].toString();
                _listKey.currentState!.removeItem(
                  index,
                  (context, animation) {
                    // 删除要返回一个控件及其动画
                    return FadeTransition(
                      opacity: animation,
                      child: ListTile(
                        title: Text(data),
                      ),
                    );
                  },
                );
                listData.removeAt(index);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // 插入数据
          int index = listData.length;
          // 顺序可以颠倒，但是index必须唯一
          listData.insert(index, random.nextInt(3000));
          _listKey.currentState!.insertItem(index);
        },
      ),
    );
  }
}
