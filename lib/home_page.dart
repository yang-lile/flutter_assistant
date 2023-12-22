import 'package:flutter/material.dart';
import 'package:flutter_assistant/entity/widget_model.dart';
import 'package:flutter_assistant/gen/icons.g.dart';
import 'package:flutter_assistant/routes.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, this.title});

  /// 用于接收一个应用主页的 appbar 标题
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    Widget body;
    if (currentIndex == 1) {
      body = const IconsList();
    } else {
      body = const WidgetList();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.widgets_outlined),
            label: '组件库',
            activeIcon: Icon(Icons.widgets_sharp),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image_outlined),
            label: '图标集',
            activeIcon: Icon(Icons.image_sharp),
          ),
        ],
      ),
    );
  }
}

class WidgetList extends StatelessWidget {
  const WidgetList({super.key});

  @override
  Widget build(BuildContext context) {
    final subtitles = <String>[
      'Stateless Widget',
      'Stateful Widget',
      'introducing',
    ];
    final subtitlesIndex = <int>[
      2, // 介绍
      0, 0, 0, 1, 1, // 1-5
      0, 0, 0, 0, 0, // 6-10
      0, 0, 0, 0, 1, // 11-15
      0, 0, 0, 0, 0, // 16-20
      0, 0, 0, 0, 0, // 21-25
      0, 1, 1, 0, 0, // 26-30
      1, 1, 0, 0, 0, // 31-35
      1, 1, 0, 0, 0, // 36-40
      0, 1, 1, 1, 1, // 41-45
      1, 0, 0, 0, 1, // 46-50
      0, 0, 0, 0, 0, // 51-55
      1, 1, 0, // 56-60
      0, // 83
    ];
    final widgetModels = <WidgetModel>[];
    final length = WidgetNames.values.length;
    for (var i = 0; i < length; i++) {
      widgetModels.add(
        WidgetModel(
          widgetNames: WidgetNames.values[i],
          subtitle: subtitles[subtitlesIndex[i]],
        ),
      );
    }
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 24.0,
                child: Text(
                  (1 + index).toString(),
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
              Hero(
                tag: 'image$index',
                child: Image.asset(
                  widgetModels[index].image,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          title: Hero(
            tag: widgetModels[index].title,
            child: Text(
              widgetModels[index].title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          subtitle: Text(
            widgetModels[index].subtitle,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
          ),
          onTap: () => _onPressed(context, index),
        );
      },
      itemCount: widgetModels.length,
    );
  }

  Future<dynamic> _onPressed(BuildContext context, int index) =>
      Navigator.pushNamed(context, routes.keys.toList()[index]);
}

class IconsList extends StatelessWidget {
  const IconsList({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: ListTile(
            title: Text('PlatformAdaptiveIcons'),
          ),
        ),
        SliverGrid.extent(
          maxCrossAxisExtent: 64.0,
          children: [
            for (final item in myPlatformAdaptiveIcons)
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(item.name)),
                  );
                },
                icon: Icon(item.iconData),
              ),
          ],
        ),
        const SliverToBoxAdapter(
          child: ListTile(
            title: Text('Icons'),
          ),
        ),
        SliverGrid.extent(
          maxCrossAxisExtent: 64.0,
          children: [
            for (final item in myIcons)
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(item.name),
                      action: SnackBarAction(
                        label: '了解',
                        onPressed: () {
                          ScaffoldMessenger.of(context).removeCurrentSnackBar();
                        },
                      ),
                    ),
                  );
                },
                icon: Icon(item.iconData),
              ),
          ],
        ),
      ],
    );
  }
}
