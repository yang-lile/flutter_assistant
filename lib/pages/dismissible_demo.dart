import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class DismissibleDemo extends StatelessWidget {
  const DismissibleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(appBarTitle: 'DismissibleDemo', body: _MyBody());
  }
}

class _MyBody extends StatefulWidget {
  @override
  __MyBodyState createState() => __MyBodyState();
}

class __MyBodyState extends State<_MyBody> {
  final List<String> itemsDataTemp = ['Banana', 'Apple', 'Peach', 'Watermelon'];
  List<String> itemsData = [];

  void recovery() {
    if (itemsData.isNotEmpty) {
      itemsData.clear();
    }
    for (final item in itemsDataTemp) {
      itemsData.add(item);
    }
  }

  @override
  void initState() {
    super.initState();
    recovery();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemsData.length,
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          key: ValueKey(itemsData[index]),
          background: ColoredBox(color: Colors.green.shade400),
          secondaryBackground: ColoredBox(color: Colors.red.shade400),
          onDismissed: (DismissDirection direction) =>
              setState(() => itemsData.removeAt(index)),
          child: ListTile(
            title: Text(itemsData[index]),
            onTap: () => setState(recovery),
          ),
        );
      },
    );
  }
}
