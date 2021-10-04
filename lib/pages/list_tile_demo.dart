import 'package:flutter_assistant/entity/random_tools.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';
import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "ListTileDemo",
      body: Builder(
        builder: (BuildContext context) => ListView.separated(
          separatorBuilder: (context, index) => Divider(
            height: 3.0,
            thickness: 2.0,
            indent: 70.0,
            endIndent: 60.0,
          ),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(
                Icons.perm_identity,
                color: RandomTools.randomColors(),
                size: 40.0,
              ),
              title: Text(
                "Somebody $index",
              ),
              subtitle: Text(
                "Phone Number: ${RandomTools.randomNumber(len: 6)}",
              ),
              trailing: Ink(
                child: InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Calling Somebody $index ... ",
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    // 添加一个padding控件使可点击区域变大
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.call,
                      size: 32.0,
                    ),
                  ),
                ),
              ),
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    "this is Somebody $index",
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
