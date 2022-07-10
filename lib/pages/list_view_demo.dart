import 'package:flutter/material.dart';
import 'package:flutter_assistant/entity/random_tools.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'ListViewDemo',
      body: Row(
        children: <Widget>[
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: <Widget>[
                  for (var i = 0; i < 20; i++)
                    Builder(
                      builder: (BuildContext context) => MaterialButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: const Duration(milliseconds: 500),
                              content: Text('ListView-$i'),
                            ),
                          );
                        },
                        color: RandomTools.randomColors(),
                        child: Text('data$i'),
                      ),
                    )
                ],
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return MaterialButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: const Duration(milliseconds: 500),
                          content: Text('ListView.builder-$index'),
                        ),
                      );
                    },
                    color: RandomTools.randomColors(),
                    child: Text('data$index'),
                  );
                },
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                itemCount: 20,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    height: 1,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return MaterialButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: const Duration(milliseconds: 500),
                          content: Text('ListView.separated-$index'),
                        ),
                      );
                    },
                    color: RandomTools.randomColors(),
                    child: Text('data$index'),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
