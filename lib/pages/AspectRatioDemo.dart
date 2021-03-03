/// When laying out your app,
/// you often don't care about the exact dimensions of which it will take.
/// But you do care about the `AspectRatio`.
/// You want the widget to be this wide irrespective of the actual dimensions
/// or you want it to be that slim or exactly square.
/// Flutter solves this by providing the `AspectRatio` widget.
/// You give it an `AspectRatio`, a child, and, well, that's it.
/// `AspectRatio` is the ratio between the width and height of a box.
/// it's often written as a fraction, like 3/2,
/// as in three parts of width to two parts of height.
/// But let's not kid ourselves,
/// it's really just a double: 3 over 2 is just 3 divided by 2,
/// which is 1.5 the same thing.
/// But don't wrong.
/// Dart is smart enough to do the computation for you during compilation.
/// So it's okay and more readable to provide the `AspectRatio` as a fraction.
/// `AspectRatio`'s child can be any widget.
/// For example, a colorful container, a picture, a whole widget tree, and one more thing.
/// make sure you actually let the `AspectRatio` widget size its child.
/// if you put `AspectRatio` into something like `Expanded`,
/// then that will be forced by its parent to expand.
/// Tightly fitted widgets like `Expanded` don't give their children a choice-- harsh.
/// If this happens to you, just put something like `Align` between the `Expanded` and the `AspectRatio` .
/// `Align` will be forced by `Expanded` to fill the area,
/// but it will let its child assume its own proportions.
/// Thanks, `Align`!
/// balabalabala...

import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "AspectRatioDemo",
      body: Column(children: <Widget>[
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 3 / 2,
                child: Container(
                  color: Colors.lightBlueAccent[400],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
