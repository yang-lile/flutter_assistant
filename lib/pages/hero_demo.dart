import 'package:flutter/material.dart';
import 'package:flutter_assistant/template/my_scaffold.dart';

class HeroDemo extends StatelessWidget {
  const HeroDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarTitle: 'HeroDemo',
      body: Center(
        child: Hero(
          tag: 'image17',
          child: Image.asset('assets/images/hero.webp'),
        ),
      ),
    );
  }
}
