import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class PlaceholderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "PlaceholderDemo",
      body: Column(
        children: <Widget>[
          Placeholder(
            fallbackHeight: 78.0,
          ),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                flex: 1,
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Placeholder(
                          fallbackHeight: 100.0,
                        ),
                      );
                    }),
              ),
              Expanded(
                flex: 1,
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Placeholder(
                          fallbackHeight: 100.0,
                        ),
                      );
                    }),
              )
            ]),
          ),
          Placeholder(
            fallbackHeight: 56.0,
          ),
        ],
      ),
    );
  }
}
