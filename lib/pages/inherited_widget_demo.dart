import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class InheritedWidgetDemo extends StatefulWidget {
  const InheritedWidgetDemo({super.key});

  @override
  _InheritedWidgetDemoState createState() => _InheritedWidgetDemoState();
}

class _InheritedWidgetDemoState extends State<InheritedWidgetDemo> {
  int data = 0;
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'InheritedWidgetDemo',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DataModel(
            number: data,
            child: const ChildWidget1(),
          ),
          const ChildWidget2(),
          ElevatedButton(
            onPressed: () => setState(() => ++data),
            child: const Text('++data'),
          ),
          ElevatedButton(
            onPressed: () => setState(() => --data),
            child: const Text('--data'),
          ),
        ],
      ),
    );
  }
}

class ChildWidget1 extends StatefulWidget {
  const ChildWidget1({super.key});

  @override
  _ChildWidget1State createState() => _ChildWidget1State();
}

class _ChildWidget1State extends State<ChildWidget1> {
  @override
  Widget build(BuildContext context) {
    final data = context.dependOnInheritedWidgetOfExactType<DataModel>()!;
    return Center(
      child: Text('${data.number}'),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log('ChildWidget1 changed');
  }
}

class ChildWidget2 extends StatefulWidget {
  const ChildWidget2({super.key});

  @override
  _ChildWidget2State createState() => _ChildWidget2State();
}

class _ChildWidget2State extends State<ChildWidget2> {
  @override
  Widget build(BuildContext context) {
    return const Text('please click raise button...');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log('ChildWidget2 changed');
  }
}

class DataModel extends InheritedWidget {
  const DataModel({
    this.number,
    required super.child,
    super.key,
  });
  final int? number;

  @override
  bool updateShouldNotify(DataModel oldWidget) {
    return oldWidget.number != number;
  }
}
