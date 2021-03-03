import 'package:flutter_assistant/Routes.dart';
import 'package:flutter_assistant/entity/WidgetModel.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var subtitles = <String>[
    "Stateless Widget",
    "Stateful Widget",
    "introducing"
  ];
  List<int> subtitlesIndex = [
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

  List<WidgetModel> widgetModels = [];

  _onPressed(int index) {
    Navigator.pushNamed(context, routes.keys.toList()[index + 1]);
  }

  @override
  void initState() {
    super.initState();

    int length = WidgetNames.values.length;
    for (int i = 0; i < length; i++) {
      widgetModels.add(
        WidgetModel(
          widgetNames: WidgetNames.values[i],
          subtitle: subtitles[subtitlesIndex[i]],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: ListView.builder(
        itemBuilder: (context, int index) {
          return ListTile(
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 24.0,
                  child: Text(
                    (1 + index).toString(),
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Hero(
                  tag: "image" + index.toString(),
                  child: Image.asset(
                    this.widgetModels[index].image,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            title: Hero(
              tag: this.widgetModels[index].title,
              child: Text(
                this.widgetModels[index].title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            subtitle: Text(
              this.widgetModels[index].subtitle,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
            ),
            onTap: () => _onPressed(index),
          );
        },
        itemCount: widgetModels.length,
      ),
    );
  }
}
