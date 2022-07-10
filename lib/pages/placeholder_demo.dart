import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class PlaceholderDemo extends StatelessWidget {
  const PlaceholderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'PlaceholderDemo',
      body: Column(
        children: <Widget>[
          const Placeholder(
            fallbackHeight: 78.0,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Placeholder(
                          fallbackHeight: 100.0,
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Placeholder(
                          fallbackHeight: 100.0,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          const Placeholder(
            fallbackHeight: 56.0,
          ),
        ],
      ),
    );
  }
}
