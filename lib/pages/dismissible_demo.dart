import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class DismissibleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(appBarTitle: "DismissibleDemo", body: _MyBody());
  }
}

class _MyBody extends StatefulWidget {
  @override
  __MyBodyState createState() => __MyBodyState();
}

class __MyBodyState extends State<_MyBody> {
  final List<String> itemsDataTemp = ["Banana", "Apple", "Peach", "Watermelon"];
  List<String> itemsData = [];

  void recovery() {
    if (itemsData.isNotEmpty) {
      itemsData.clear();
    }
    for (String item in itemsDataTemp) {
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
          child: ListTile(
            title: Text(itemsData[index]),
            onTap: () => setState(() => recovery()),
          ),
          background: Container(color: Colors.green[400]),
          secondaryBackground: Container(color: Colors.red[400]),
          onDismissed: (DismissDirection direction) =>
              setState(() => itemsData.removeAt(index)),
        );
      },
    );
  }
}
