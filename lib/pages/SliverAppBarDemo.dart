/// 对于我来说这是一种特殊的布局，整个slivers组件系的子组件都只能使用slivers组件
/// 只能通过`SliverChildxxx`来使用原来的组件，
/// 同时我希望你能在开发的时候使用`Scoffold`来包装一层，
/// 否则子组件的背景将会是黑色。
/// 这是一套值得琢磨的组件，因为它的效果真的amazing

import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SliverAppBarDemo extends StatelessWidget {
  // 获取appbar高度
  final double appBarHeight = kToolbarHeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 240 + appBarHeight, // 图片高+状态栏高，待实现
            pinned: true, // 顶栏滑动时是否不消失
            // 如果同时设置floating和snap属性为true，那么AppBar会在你做出下拉手势时就立即全部展开（即使ListView并没有到达顶部）
            snap: false,
            // 如果设置floating属性为true，那么AppBar会在你做出下拉手势时就立即展开（即使ListView并没有到达顶部）
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/sliver_app_bar.webp",
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
            title: Text("SliverAppBarDemo"),
            actions: <Widget>[
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SourceCodePage(title: "SliverAppBarDemo"),
                    ),
                  );
                },
                icon: Icon(Icons.code),
                label: Text("源码"),
              ),
            ],
          ),
          _buildMainPage(),
        ],
      ),
    );
  }

  Widget _buildMainPage() {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return _buildItem(index);
      }, childCount: 30),
    );
  }

  Widget _buildItem(int index) {
    return Container(
      height: appBarHeight,
      child: Card(child: Center(child: Text("card$index"))),
    );
  }
}
