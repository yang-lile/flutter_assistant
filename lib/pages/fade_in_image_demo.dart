import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class FadeInImageDemo extends StatelessWidget {
  const FadeInImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'FadeInImageDemo',
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text('bing日图'),
            FadeInImage.assetNetwork(
              fit: BoxFit.fitWidth,
              fadeInDuration: const Duration(seconds: 1),
              image: 'https://area.sinaapp.com/bingImg/',
              placeholder: 'assets/images/fade_in_image.webp',
            ),
          ],
        ),
      ),
    );
  }
}
