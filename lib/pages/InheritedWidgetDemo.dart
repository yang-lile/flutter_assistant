import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class InheritedWidgetDemo extends StatefulWidget {
  @override
  _InheritedWidgetDemoState createState() => _InheritedWidgetDemoState();
}

class _InheritedWidgetDemoState extends State<InheritedWidgetDemo> {
  int data = 0;
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "InheritedWidgetDemo",
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DataModel(
            number: data,
            child: ChildWidget1(),
          ),
          ChildWidget2(),
          ElevatedButton (
            onPressed: () => setState(() => ++data),
            child: Text("++data"),
          ),
          ElevatedButton (
            onPressed: () => setState(() => --data),
            child: Text("--data"),
          ),
        ],
      ),
    );
  }
}

class ChildWidget1 extends StatefulWidget {
  @override
  _ChildWidget1State createState() => _ChildWidget1State();
}

class _ChildWidget1State extends State<ChildWidget1> {
  @override
  Widget build(BuildContext context) {
    final data = context.dependOnInheritedWidgetOfExactType<DataModel>()!;
    return Center(
      child: Text("${data.number}"),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("ChildWidget1 changed");
  }
}

class ChildWidget2 extends StatefulWidget {
  @override
  _ChildWidget2State createState() => _ChildWidget2State();
}

class _ChildWidget2State extends State<ChildWidget2> {
  @override
  Widget build(BuildContext context) {
    return Text("please click raise button...");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("ChildWidget2 changed");
  }
}

class DataModel extends InheritedWidget {
  final int? number;

  DataModel({
    this.number,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(DataModel oldWidget) {
    return oldWidget.number != number;
  }
}
