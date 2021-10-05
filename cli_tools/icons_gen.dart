import 'dart:io';

main() {
  var directory = Directory.current;
  var outDir = Directory(
      "${directory.path}${Platform.pathSeparator}lib${Platform.pathSeparator}gen${Platform.pathSeparator}icons.g.dart");
  var outFile = File(outDir.path);

  directory = Directory(
      "${directory.path}${Platform.pathSeparator}assets${Platform.pathSeparator}source${Platform.pathSeparator}icons.dart");
  var file = File(directory.path);

  var stringBuffer = StringBuffer();
  List<String> readAsLinesSync = file.readAsLinesSync();
  String c = "";

  stringBuffer.writeln("import 'package:flutter/material.dart';");
  stringBuffer.writeln();
  for (var item in readAsLinesSync) {
    if (item.startsWith("class ")) {
      c = item.split(" ")[1];
      stringBuffer.writeln("List<List> my$c = [");
    }
    if (item.startsWith("  IconData get ")) {
      stringBuffer.writeln("  ['Icons.adaptive.${item.split(" ")[4]}', Icons.adaptive.${item.split(" ")[4]},],");
    }
    if (item.startsWith("  static const IconData ")) {
      stringBuffer.writeln("  ['$c.${item.split(" ")[5]}', $c.${item.split(" ")[5]}],");
    }
    if (item.startsWith("}")) {
      stringBuffer.writeln("];");
    }
  }
  outFile.writeAsStringSync(stringBuffer.toString());
}
