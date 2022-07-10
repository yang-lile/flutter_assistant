import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  final pageView = PageView(
    controller: PageController(initialPage: 1),
    scrollDirection: Axis.vertical,
    children: <Widget>[
      _buildPageViews('page0'),
      _buildPageViews('page1'),
      _buildPageViews('page2'),
    ],
  );

  static Padding _buildPageViews(String string) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        child: Center(
          child: Text(string),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'PageViewDemo',
      body: pageView,
    );
  }
}
