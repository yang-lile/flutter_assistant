import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 18.0, height: 1.5);
  final TextStyle _head2Style = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    height: 1.8,
  );
  final TextStyle _head1Style = TextStyle(
    color: Colors.blue[300],
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction"),
      ),
      body: Container(
        padding:
            EdgeInsets.only(left: 16.0, top: 20.0, right: 16.0, bottom: 20.0),
        child: ListView(
          children: <Widget>[
            Hero(
              tag: "image0",
              child: Image.asset(
                "assets/images/introduction.webp",
                fit: BoxFit.contain,
              ),
            ),
            Divider(),
            Text(
              "极速构建漂亮的原生应用",
              style: _head1Style,
            ),
            Text(
              "Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全免费、开源的。",
              style: _textStyle,
            ),
            Text(
              "快速开发",
              style: _head2Style,
            ),
            Text(
              "毫秒级的热重载，修改后，您的应用界面会立即更新。使用丰富的、完全可定制的widget在几分钟内构建原生界面。",
              style: _textStyle,
            ),
            Text(
              "富有表现力和灵活的UI",
              style: _head2Style,
            ),
            Text(
              "快速发布聚焦于原生体验的功能。分层的架构允许您完全自定义，从而实现难以置信的快速渲染和富有表现力、灵活的设计。",
              style: _textStyle,
            ),
            Text(
              "原生性能",
              style: _head2Style,
            ),
            Text(
              "Flutter包含了许多核心的widget，如滚动、导航、图标和字体等，这些都可以在iOS和Android上达到原生应用一样的性能。",
              style: _textStyle,
            ),
            Text(
              "Flutter WOW 的诞生",
              style: _head1Style,
            ),
            Text(
              "每个Flutter构建的应用都使用了许多核心的widget，如滚动、导航、图标和字体等，尽快的熟悉这些widget是迈向flutter大门的关键一步，为此谷歌创建了每周一widget的系列短片帮助大家，本项目是配合该系列短片提供一些简单使用的示例代码，为此代码力求简单实用，易懂易用，希望大家喜欢，关于更新进度，本人力求至少每天更新一个，直到追上谷歌的步伐。",
              style: _textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
