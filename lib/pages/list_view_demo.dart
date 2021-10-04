import 'package:flutter_assistant/entity/random_tools.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "ListViewDemo",
      body: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
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
                              duration: Duration(milliseconds: 500),
                              content: Text("ListView-$i"),
                            ),
                          );
                        },
                        child: Text("data$i"),
                        color: RandomTools.randomColors(),
                      ),
                    )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return MaterialButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: Duration(milliseconds: 500),
                          content: Text("ListView.builder-$index"),
                        ),
                      );
                    },
                    child: Text("data$index"),
                    color: RandomTools.randomColors(),
                  );
                },
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                itemCount: 20,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(height: 1,);
                },
                itemBuilder: (BuildContext context, int index) {
                  return MaterialButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: Duration(milliseconds: 500),
                          content: Text("ListView.separated-$index"),
                        ),
                      );
                    },
                    child: Text("data$index"),
                    color: RandomTools.randomColors(),
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
