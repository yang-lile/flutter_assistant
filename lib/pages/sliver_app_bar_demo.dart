/// 对于我来说这是一种特殊的布局，整个slivers组件系的子组件都只能使用slivers组件
/// 只能通过`SliverChildxxx`来使用原来的组件，
/// 同时我希望你能在开发的时候使用`Scoffold`来包装一层，
/// 否则子组件的背景将会是黑色。
/// 这是一套值得琢磨的组件，因为它的效果真的amazing
library;

import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class SliverAppBarDemo extends StatelessWidget {
  const SliverAppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final sliverList = SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final sizedBox = SizedBox(
            height: kToolbarHeight,
            child: Card(
              child: Center(
                child: Text(
                  'card$index',
                ),
              ),
            ),
          );
          return sizedBox;
        },
        childCount: 30,
      ),
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const ResizedAppBar(),
          sliverList,
        ],
      ),
    );
  }
}

class ResizedAppBar extends StatefulWidget {
  const ResizedAppBar({super.key});

  @override
  State<ResizedAppBar> createState() => _ResizedAppBarState();
}

class _ResizedAppBarState extends State<ResizedAppBar> {
  final imageKey = GlobalKey();
  // double? imageHeight;
  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   final imageElement =
    //       imageKey.currentContext!.findRenderObject()! as RenderBox;
    //   setState(() {
    //     imageHeight = imageElement.hasSize ? imageElement.size.height : 100;
    //     log(imageHeight.toString());
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // expandedHeight: (imageHeight ?? 100) + kToolbarHeight, // 图片高+状态栏高，待实现
      pinned: true, // 顶栏滑动时是否不消失
      // 如果同时设置floating和snap属性为true，那么AppBar会在你做出下拉手势时就立即全部展开
      // （即使ListView并没有到达顶部）
      // ignore: avoid_redundant_argument_values
      snap: false,
      // 如果设置floating属性为true，那么AppBar会在你做出下拉手势时就立即展开（即使ListView并没有到达顶部）
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          key: imageKey,
          'assets/images/sliver_app_bar.webp',
          alignment: Alignment.bottomCenter,
          fit: BoxFit.fitWidth,
        ),
      ),
      title: const Text('SliverAppBarDemo'),
      actions: <Widget>[
        IconButton(
          tooltip: '源码',
          icon: const Icon(Icons.code_sharp),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) =>
                    const SourceCodePage(title: 'SliverAppBarDemo'),
              ),
            );
          },
        ),
      ],
    );
  }
}
