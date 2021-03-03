import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  final pageView = PageView(
    controller: PageController(initialPage: 1),
    scrollDirection: Axis.vertical,
    children: <Widget>[
      _buildPageViews("page0"),
      _buildPageViews("page1"),
      _buildPageViews("page2"),
    ],
  );

  static _buildPageViews(String string) {
    return Padding(
      padding: EdgeInsets.all(20.0),
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
      appBarTitle: "PageViewDemo",
      body: pageView,
    );
  }
}
