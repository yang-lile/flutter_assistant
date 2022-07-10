import 'package:flutter/material.dart';
import 'package:flutter_assistant/entity/random_tools.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class ReorderableListViewDemo extends StatelessWidget {
  const ReorderableListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(
      appBarTitle: 'ReorderableListViewDemo',
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: RListViewDemo(),
        ),
      ),
    );
  }
}

class RListViewDemo extends StatefulWidget {
  const RListViewDemo({super.key});

  @override
  _RListViewDemoState createState() => _RListViewDemoState();
}

class _RListViewDemoState extends State<RListViewDemo> {
  List<Map<int, Color>> data = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < 100; i++) {
      data.add({i: RandomTools.randomColors()});
    }
  }

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      header: const Align(
        alignment: Alignment.centerLeft,
        child: Text('你没有头 '),
      ),
      children: data.map((e) {
        return Card(
          key: ValueKey('${e.keys}'),
          color: e.values.first,
          semanticContainer: false,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            height: 120.0,
            alignment: Alignment.center,
            child: Text(e.values.toString()),
          ),
        );
      }).toList(),
      onReorder: (oldIndex, newIndex) {
        setState(() {
          // 来源`ReorderableListView`的源码
          if (oldIndex < newIndex) {
            // removing the item at oldIndex will shorten the list by 1.
            newIndex -= 1;
          }
          final element = data.removeAt(oldIndex);
          data.insert(newIndex, element);
        });
      },
    );
  }
}
