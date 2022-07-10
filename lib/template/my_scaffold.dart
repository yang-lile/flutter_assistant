import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assistant/codeviewer/prehighlighter.dart';
import 'package:flutter_assistant/global_datas.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({
    required this.appBarTitle,
    required this.body,
    this.floatingActionButton,
    this.dialogContext,
    super.key,
  });

  final String appBarTitle;
  final Widget body;
  final Widget? floatingActionButton;
  final Widget? dialogContext;

  @override
  Widget build(BuildContext context) {
    if (dialogContext != null) {
      _showDialog(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        actions: [
          IconButton(
            tooltip: '源码',
            icon: const Icon(Icons.code_sharp),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => SourceCodePage(title: appBarTitle),
                ),
              );
            },
          ),
        ],
      ),
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }

  Future<void> _showDialog(BuildContext context) => showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(
          content: dialogContext,
          title: const Text('学习提示'),
          actions: <Widget>[
            TextButton(
              child: const Text(
                '了解',
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      );
}

class SourceCodePage extends StatelessWidget {
  const SourceCodePage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$title Source Code')),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(8.0),
        // 代码高亮主题配置
        child: GlobalDatas(
          baseStyle: codeTheme.copyWith(color: const Color(0xFFFAFBFB)),
          numberStyle: codeTheme.copyWith(color: const Color(0xFFBD93F9)),
          commentStyle: codeTheme.copyWith(color: const Color(0xFF808080)),
          keywordStyle: codeTheme.copyWith(color: const Color(0xFF1CDEC9)),
          stringStyle: codeTheme.copyWith(color: const Color(0xFFFFA65C)),
          punctuationStyle: codeTheme.copyWith(color: const Color(0xFF8BE9FD)),
          classStyle: codeTheme.copyWith(color: const Color(0xFFD65BAD)),
          constantStyle: codeTheme.copyWith(color: const Color(0xFFFF8383)),
          child: ListView(
            children: [
              _buildFutureBuilder(context),
            ],
          ),
        ),
      ),
    );
  }

  // 生成带有代码高亮的代码
  FutureBuilder<List<TextSpan>> _buildFutureBuilder(BuildContext context) {
    return FutureBuilder(
      future: _showCode(),
      builder: (BuildContext context, AsyncSnapshot<List<TextSpan>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return SelectableText.rich(
            TextSpan(
              children: snapshot.data,
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }

  Future<List<TextSpan>> _showCode() async {
    var _s = '${title[0].toLowerCase()}${title.substring(1)}';
    for (var i = 1; i < title.length; i++) {
      if (_s[i].contains(RegExp('[A-Z]'))) {
        _s = _s.replaceRange(i, i + 1, '_${_s[i].toLowerCase()}');
      }
    }
    final _string = 'lib/pages/$_s.dart';
    final content = await rootBundle.loadString(_string);
    final _codes = content.split('\n');
    final _spanedCodes = <TextSpan>[];
    for (final _code in _codes) {
      _spanedCodes
        ..addAll(DartSyntaxPrehighlighter().format(_code))
        ..add(
          const TextSpan(
            text: '\n',
          ),
        );
    }
    return _spanedCodes;
  }
}
