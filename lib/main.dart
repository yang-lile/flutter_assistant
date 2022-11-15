import 'package:flutter/material.dart';
import 'package:flutter_assistant/home_page.dart';
import 'package:flutter_assistant/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assistant',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColorLight: Colors.white,
        visualDensity: VisualDensity.comfortable,
      ),
      darkTheme: ThemeData.dark(),
      // initialRoute: '/',
      routes: routes,
      home: const MyHomePage(title: 'Flutter Assistant',),
      // onGenerateRoute: onGenerateRoute,
      // showSemanticsDebugger: true, // 大可不必使用，万恶之源
    );
  }
}
