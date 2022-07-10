/// https://juejin.im/post/5bceb534e51d457aa4596f9a#heading-3
/// 一个写的比较好的教程
/// bug: 滑动到底部无边界，继续滚动
import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class SliverListAndSliverGridDemo extends StatelessWidget {
  const SliverListAndSliverGridDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'SliverList & SliverGrid',
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return
                    // ListTile(
                    //   leading: Icon(
                    //     Icons.access_alarm,
                    //     size: 32.0,
                    //   ),
                    //   title: Text("data $index"),
                    //   subtitle: Text("subdata"),
                    //   onTap: () {
                    //     print(index);
                    //   },
                    // );
                    Container(
                  color: Colors.blue[index * 100],
                  height: 110,
                );
              },
              childCount: 7,
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: Colors.green[index * 100],
                  height: 300,
                );
              },
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
