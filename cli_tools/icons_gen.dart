import 'dart:io';

void main() {
  var directory = Directory.current;
  final ps = Platform.pathSeparator;
  final outDir = Directory(
    '${directory.path}${ps}lib${ps}gen${ps}icons.g.dart',
  );
  final outFile = File(outDir.path);

  directory = Directory(
    '${directory.path}${ps}assets${ps}source${ps}icons.dart',
  );
  final file = File(directory.path);

  final stringBuffer = StringBuffer();
  final readAsLinesSync = file.readAsLinesSync();
  var c = '';

  stringBuffer
    ..writeln("import 'package:flutter/material.dart';")
    ..writeln("import 'package:flutter_assistant/entity/icons_model.dart';")
    ..writeln();
  for (final item in readAsLinesSync) {
    if (item.startsWith('class ')) {
      c = item.split(' ')[1];
      stringBuffer.write('List<IconsModel> my$c = ');
      if (item.startsWith('class Icons')) {
        stringBuffer.writeln('const ');
      }
      stringBuffer.writeln('[');
    }
    if (item.startsWith('  IconData get ')) {
      stringBuffer.writeln(
        '  IconsModel(\n'
        "    'Icons.adaptive.${item.split(' ')[4]}',\n"
        '    Icons.adaptive.${item.split(' ')[4]},\n'
        '  ),',
      );
    }
    if (item.startsWith('  static const IconData ')) {
      stringBuffer.writeln(
        '  IconsModel(\n'
        "    '$c.${item.split(' ')[5]}',\n"
        '    $c.${item.split(' ')[5]},\n'
        '  ),',
      );
    }
    if (item.startsWith('}')) {
      stringBuffer.writeln('];');
    }
  }
  outFile.writeAsStringSync(stringBuffer.toString());
}
