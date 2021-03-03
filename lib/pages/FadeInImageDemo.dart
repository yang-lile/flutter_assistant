import 'package:flutter_assistant/template/MyScaffold.dart';
import 'package:flutter/material.dart';

class FadeInImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: "FadeInImageDemo",
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("bing日图"),
            FadeInImage.assetNetwork(
              fit: BoxFit.fitWidth,
              fadeInDuration: Duration(seconds: 1),
              image: "https://area.sinaapp.com/bingImg/",
              placeholder: "assets/images/fade_in_image.webp",
            ),
          ],
        ),
      ),
    );
  }
}
